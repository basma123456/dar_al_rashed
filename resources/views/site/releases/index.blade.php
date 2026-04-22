{{--    <title> الأخبار | دار راشد للنشر</title>--}}

@extends('site.master')
@section('content')
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/backgrounds/pub-bread.webp);"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">الإصدارات</h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                            <li>
                                <a href="{{url('/')}}" title="">الرئيسيه</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-header__image"></div>
    </section>
    <section class="section-space contact-one contact-one--page">
        <div class="container">
            <div class="black-inside">
                <form action="" class="form-one">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-xl-3 col-md-6">
                            <div class="projects__info">
                                <h2 class="projects__info__title mb-0">بحث متقدم فى الإصدارات</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control">
                                <input type="text" name="search" value="{{old('search')}}" placeholder="أسم الإصدار">
                                <i class="fa fa-edit " aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control ">
                                <select class="selectpicker" aria-label="" name="category" data-container="body"
                                        data-dropup-auto="false">
                                    <option selected>أختر التصنيف</option>
                                    @forelse($cats as $item)
                                    <option value="{{$item->id}}">{{$item->$name}}</option>
                                        @empty
                                    @endforelse
{{--                                    <option value="2">اسم التصنيف</option>--}}
{{--                                    <option value="3">اسم التصنيف</option>--}}
{{--                                    <option value="3">اسم التصنيف</option>--}}
{{--                                    <option value="3">اسم التصنيف</option>--}}
{{--                                    <option value="3">اسم التصنيف</option>--}}
{{--                                    <option value="3">اسم التصنيف</option>--}}
                                </select>
                                <i class="icon-folder" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <button class="rashed-btn rashed-btn--white w-100">
                                <span class="rashed-btn__text w-100">أبحث الأن</span>
                                <span class="rashed-btn__icon-box">
                         <span class="rashed-btn__icon">
                           <i class="icon-search" aria-hidden="true"></i>
                           <i class="icon-search" aria-hidden="true"></i>
                         </span>
                       </span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="row">
                @forelse($releases as $key => $val)

                    <div class="col-lg-4 col-md-6 aos-init aos-animate" data-aos="fade-up"
                         data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="200">
                        <div class="blog-card-three">
                            <div class="blog-card-three__image">
                                <img src="{{asset($val->image())}}"
                                     alt="The Blog Meant Attract Build Brand Authority.">
                                <a href="" class="blog-card-three__image__link">
                                    <span class="sr-only">{{optional($val->postLangsCurrent)->name}}</span>
                                </a>
                            </div>
                            <div class="blog-card-three__content">
                                <div class="blog-card-three__top">
                                    <ul class="blog-card-three__meta list-unstyled">
                                        <li>
                           <span class="blog-card-three__meta__icon">
                             <i class="icon-calendar"></i>
                           </span>
                                            <span class="en-font">{{ \Carbon\Carbon::parse(optional($val->postLangsCurrent)->txt1)->locale(app()->getLocale())->translatedFormat('Y F d') }}</span>
                                        </li>
                                    </ul>
                                    <a href="{{route('site.releases.show' , $val->id)}}" class="blog-card-three__btn">
                         <span class="blog-card-three__btn__icon">
                           <i class="icon-arrow-right-up"></i>
                         </span>
                                    </a>
                                </div>
                                <div class="blog-card-three__inner">
                                    <h3 class="blog-card-three__title">
                                        <a href="{{route('site.releases.show' , $val->id)}}">{{optional($val->postLangsCurrent)->name}}</a>
                                    </h3>
                                    <p class="blog-card-three__text">{!! optional($val->postLangsCurrent)->details !!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                @endforelse

            </div>
        </div>
    </section>

{{$releases->links()}}

@endsection





