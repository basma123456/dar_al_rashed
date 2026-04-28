<?php

namespace App\Providers;

use App\Actions\Fortify\CreateNewUser;
use App\Actions\Fortify\ResetUserPassword;
use App\Http\Requests\LoginRequest;
use App\Models\User;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Str;
 use Laravel\Fortify\Actions\AttemptToAuthenticate;
use Laravel\Fortify\Actions\PrepareAuthenticatedSession;
use Laravel\Fortify\Fortify;

class FortifyServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {

    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Fortify::username('username');
        Fortify::authenticateThrough(function (Request $request) {
            return array_filter([
                function ($request, $next) {
                    \Validator::make($request->all(), [
                        'username' => ['required', 'string'],
                        'password' => ['required', 'string'],
                    ])->validate();

                    return $next($request);
                },

                function ($request, $next) {
                    $user = User::where('username', $request->username)->first();

                    if (! $user || ! Hash::check($request->password, $user->password)) {
                        throw \Illuminate\Validation\ValidationException::withMessages([
                            'username' => ['بيانات الدخول غير صحيحة'],
                        ]);
                    }

                    auth()->login($user);

                    return $next($request);
                },

                PrepareAuthenticatedSession::class,
            ]);
        });

        $this->configureActions();
        $this->configureViews();
        $this->configureRateLimiting();
//        Fortify::username('username');
//        Fortify::authenticateUsing(function (Request $request) {
//            $user = User::where('username', $request->username)->first();
//
//            if ($user && Hash::check($request->password, $user->password)) {
//                return $user;
//            }
//        });
//        Fortify::authenticateThrough(function (Request $request) {
//            return array_filter([
//                function ($request, $next) {
////                    Validator::make($request->all(), [
////                        'username' => ['required', 'string'],
////                        'password' => ['required', 'string'],
////                    ])->validate();
//
//                    return $next($request);
//                },
//
////                AttemptToAuthenticate::class,
//                PrepareAuthenticatedSession::class,
//            ]);
//        });



//        <!***start******/



//    /***end*****/



    }

    /**
     * Configure Fortify actions.
     */
    private function configureActions(): void
    {
        Fortify::resetUserPasswordsUsing(ResetUserPassword::class);
        Fortify::createUsersUsing(CreateNewUser::class);
    }

    /**
     * Configure Fortify views.
     */
    private function configureViews(): void
    {
//        Fortify::loginView(fn () => view('pages::auth.login'));
        Fortify::loginView(fn () => view('admin.login'));
         Fortify::verifyEmailView(fn () => view('pages::auth.verify-email'));
        Fortify::twoFactorChallengeView(fn () => view('pages::auth.two-factor-challenge'));
        Fortify::confirmPasswordView(fn () => view('pages::auth.confirm-password'));
        Fortify::registerView(fn () => view('pages::auth.register'));
        Fortify::resetPasswordView(fn () => view('pages::auth.reset-password'));
        Fortify::requestPasswordResetLinkView(fn () => view('pages::auth.forgot-password'));
    }

    /**
     * Configure rate limiting.
     */
    private function configureRateLimiting(): void
    {
        RateLimiter::for('two-factor', function (Request $request) {
            return Limit::perMinute(5)->by($request->session()->get('login.id'));
        });

        RateLimiter::for('login', function (Request $request) {
            $throttleKey = Str::transliterate(Str::lower($request->input(Fortify::username())).'|'.$request->ip());

            return Limit::perMinute(5)->by($throttleKey);
        });
    }
}
