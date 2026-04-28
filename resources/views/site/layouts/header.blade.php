<div class="custom-cursor__cursor"></div>
<div class="custom-cursor__cursor-two"></div>
<div class="preloader">
    <div class="preloader__image" style="background-image: url('{{asset('site/assets/images/loader.png')}}')"></div>
</div>

{{--    "id" => 1--}}
{{--    "site_name" => "Fujairah Culture & Media Authority"--}}
{{--    "phone" => "+97192014444"--}}
{{--    "fax" => "444"--}}
{{--    "mail" => ""--}}
{{--    "location" => "Fujairah, UAE"--}}
{{--    "location_ar" => "الفجيرة، الإمارات العربية المتحدة"--}}
{{--    "site_name_ar" => "هيئة الفجيرة للثقافة والإعلام"--}}
{{--    "email" => "info@fcma.gov.ae"--}}
{{--    "facebook" => "https://www.facebook.com/fcmaae/"--}}
{{--    "twitter" => "https://x.com"--}}
{{--    "youtube" => "https://youtube.com"--}}
{{--    "linkedin" => ""--}}
{{--    "google" => "google"--}}
{{--    "instagram" => "https://www.instagram.com/fujairah_culture/?hl=en"--}}
{{--    "lang" => "en"--}}
{{--    "profile" => "33"--}}
{{--    "keys" => """--}}
{{--    هيئة الفجيرة للثقافة والإعلام, ,--}}
{{--    هيئة الفجيرة ,--}}
{{--    الفجيرة للثقافة ,--}}
{{--    الفجيرة للإعلام  ,--}}
{{--    """--}}
{{--    "descc" => "هيئة الفجيرة للثقافة والإعلام 2"--}}
{{--    "descc_ar" => ""--}}
{{--    "slogan" => "0"--}}
{{--    "slogan_ar" => "0"--}}
{{--    "admin_lang" => "ar"--}}
{{--    "open_time" => ""--}}
{{--    "location1" => "0"--}}
{{--    "phone2" => null--}}
{{--    "tiktok" => "https://tiktok.com"--}}
{{--    "location2" => null--}}
{{--    "num_of_visitors" => 1--}}
{{--    "last_update" => "2026-04-27 11:36:38"--}}
{{--    "working_hours_ar" => "من الإثنين إلى الخميس: 07:30 - 15:30 والجمعة: 08:00 - 12:00"--}}
{{--    "working_hours_en" => "from Monday to Thursday:  07:30 - 15:30 and Friday: 08:00 - 12:00"--}}
{{--    "rating" => 635--}}
{{--    "num_of_raters" => 145--}}
{{--    "map" => "<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d66618.19808470807!2d31.21717898547345!3d30.059482001485396!2m3!1f0!2f0! ▶"--}}
{{--        "logo" => "admin/assets/images/logo.png"--}}

<div class="page-wrapper">
    <header class="main-header main-header--two sticky-header sticky-header--normal">
        <div class="container">
            <div class="topbar">
                <div class="container">
                    <div class="topbar__inner">
                        <ul class="topbar__info list-unstyled">
                            <li>
                     <span class="topbar__info__icon">
                       <i class="icon-email" aria-hidden="true"></i>
                     </span>
                                <span>
                       <a href="mailto:{{ $settings->email }}">{{$settings->email}}</a>
                     </span>
                            </li>
                            <li>
                     <span class="topbar__info__icon">
                       <i class="icon-phone-call" aria-hidden="true"></i>
                     </span>
                                <span>
                       <a href="#{{$settings->phone}}">{{$settings->phone}}</a>
                     </span>
                            </li>
                        </ul>
                        <div class="topbar__right">
                            <div class="social-links">
                                <a href="{{url($settings->facebook)}}" rel="noopener noreferrer"
                                   aria-label="Follow us on Facebook" title="Follow us on Facebook" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-facebook-f" aria-hidden="true"></i>
                   <span class="sr-only">Facebook</span>
                 </span>
                                </a>
                                <a href="{{url($settings->twitter)}}" target="_blank" rel="noopener noreferrer"
                                   aria-label="Follow us on X (Twitter)" title="Follow us on X" target="_blank">
           <span class="social-links__icon">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"
             aria-hidden="true">
            <path
                d="M17.53 3H21L14.47 10.06L22.24 21H16.47L11.66 14.47L6.24 21H3L10.06 13.47L2 3H7.94L12.47 9.06L17.53 3Z"></path>
        </svg>
        <span class="sr-only">Follow us on X</span>
    </span>
                                </a>
                                <a href="{{"https://wa.me/" .$settings->phone   }}" title="" rel="noopener noreferrer"
                                   aria-label="Follow us on whatsapp"
                                   title="Follow us on whatsapp" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-whatsapp" aria-hidden="true"></i>
                   <span class="sr-only">واتس اب</span>
                 </span>
                                </a>
                                <a href="{{$settings->instagram}}" title="" rel="noopener noreferrer"
                                   aria-label="Follow us on Instagram"
                                   title="Follow us on Instagram" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-instagram" aria-hidden="true"></i>
                   <span class="sr-only">Instagram</span>
                 </span>
                                </a>

                                @if(app()->getLocale() == 'ar')
                                    <a href="{{ LaravelLocalization::getLocalizedURL('en', null, [], true) }}"
                                       class="lang-icon" target="_self" title="English">
                       <span class="social-links__icon"> EN <span class="sr-only">English</span>
                       </span>
                                    </a>
                                @else
                                    <a href="{{ LaravelLocalization::getLocalizedURL('ar', null, [], true) }}"
                                       class="lang-icon" target="_self" title="العربية">
                       <span class="social-links__icon"> AR <span class="sr-only">العربية</span>
                       </span>
                                    </a>

                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-header__inner">
                <div class="main-header__logo logo-retina">

                    <a href="{{url('/')}}" title="">
                        {{--                        <img src="{{asset($settings->logo())}}" class="logo-default" alt=""--}}
                        {{--                             width="120"/>--}}
                        {{--                        <img src="{{asset($settings->logoDark())}}" class="logo-sticky" alt="" width="80"/>--}}
                        <img src="{{asset('site/assets/images/logo-light.png')}}" class="logo-default" alt=""
                             width="120">
                        <img src="{{asset('site/assets/images/logo-dark.png')}}" class="logo-sticky" alt="" width="80">

                    </a>
                </div>
                <div class="main-header__right">
                    <nav class="main-header__nav main-menu">
                        <ul class="main-menu__list">
                            <li>
                                <a href="{{url('/')}}" title="الذهاب إلى الصفحة الرئيسية">الرئيسية</a>
                            </li>

                            <li class="dropdown">

                                <a
                                    title="تعرف علينا"
                                    aria-haspopup="true"
                                    aria-expanded="false">
                                    من نحن
                                </a>
                                <ul>
                                    @forelse(pages() as $page)
                                        <li>
                                            <a href="{{route('site.pages.show' , ['post_id' => $page->id , 'title' => getTagWord(optional($page->postLangsCurrent)->name) ?? ''])}}"
                                               title="{{optional($page->postLangsCurrent)->name}}">  {{optional($page->postLangsCurrent)->name}}  </a>
                                        </li>
                                    @empty
                                    @endforelse

                                    {{--                                    <li>--}}
                                    {{--                                        <a href="{{asset('site//vision')}}" title="رؤية المؤسسة">الرؤية</a>--}}
                                    {{--                                    </li>--}}
                                    {{--                                    <li>--}}
                                    {{--                                        <a href="{{asset('site//mission')}}" title="رسالة المؤسسة">الرسالة</a>--}}
                                    {{--                                    </li>--}}
                                    {{--                                    <li>--}}
                                    {{--                                        <a href="{{asset('site//goals')}}" title="أهداف المؤسسة">الأهداف</a>--}}
                                    {{--                                    </li>--}}
                                </ul>
                            </li>
                            <li>
                                <a href="{{route('site.services.index')}}" title="خدماتنا">خدماتنا</a>
                            </li>

                            <li>
                                <a href="{{route('site.releases.index')}}" title="الإصدارات">الإصدارات</a>
                            </li>

                            <li>
                                <a href="{{route('site.news.index')}}" title="آخر الأخبار">الأخبار</a>
                            </li>

                            <li>
                                <a href="{{route('site.gallery.index')}}" title="معرض الصور">معرض الصور</a>
                            </li>

                            <li>
                                <a href="{{route('site.events.index')}}" title="الفعاليات">الفعاليات</a>
                            </li>

                            <li>
                                <a href="{{asset('site//contact')}}" title="اتصل بنا">اتصل بنا</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="mobile-nav__btn mobile-nav__toggler">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <a href="{{asset('site/#')}}" class="main-header__search search-toggler" title="بحث">
                        <i class="icon-search" aria-hidden="true"></i>
                        <span class="sr-only">بحث</span>
                    </a>
                    <div class="main-header__call">
                 <span class="main-header__call__icon">
                   <i class="icon-user" aria-hidden="true"></i>
                 </span>
                        <div class="main-header__call__content">
                            <h4 class="main-header__call__title"> تسجيل المتعاملين </h4>
                            <a href="" title="تسجيل المتعاملين" class="main-header__call__number">أضغط هنا</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

