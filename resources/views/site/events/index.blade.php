{{--    <title> الأخبار | دار راشد للنشر</title>--}}

@extends('site.master')
@section('content')

    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/events-bread.webp')}}');"></div>

        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300"> الفعاليات </h1>
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
                <form action="{{route('site.events.index')}}" method="get" class="form-one">
                    @csrf
                    <div class="row justify-content-center align-items-center">
                        <div class="col-xl-3 col-md-6">
                            <div class="projects__info">
                                <h2 class="projects__info__title mb-0">بحث متقدم فى الفعاليات</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control">
                                <input type="text" name="search" value="{{request('search')}}"
                                       placeholder="أسم الفاعليه">
                                <i class="fa fa-edit " aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control ">
                                <select class="selectpicker" aria-label="" data-container="body" name="date"
                                        data-dropup-auto="false">
                                    <option selected>أختر السنه</option>
                                    <option value="2026">2026</option>
                                    <option value="2025">2025</option>
                                    <option value="2024"> 2024</option>
                                    <option value="2023">2023</option>
                                    <option value="2022"> 2022</option>
                                    <option value="2020">2020</option>
                                </select>
                                <i class="icon-calendar" aria-hidden="true"></i>
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
    <section class="rs-blog-area  rs-blog-two"
             style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="row">
                @foreach($events as $key => $val)
                    <div class="col-lg-4 col-md-6 aos-init aos-animate" data-aos="fade-up"
                         data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="200">
                        <div class="rs-blog-item">
                            <div class="rs-blog-thumb">
                                <a href="{{route('site.events.show' , $val->id)}}">
                                    <img src="{{asset($val->image())}}" alt="">
                                </a>
                            </div>
                            <div class="rs-blog-content">
                                <div class="rs-blog-tag has-theme-red">
                                    <i class="icon-calendar me-2" aria-hidden="true"></i>
                                    <span class="en-font me-2">{{optional($val->postLangsCurrent)->txt1}}</span>
                                    <span class=" me-2"> إلى </span>
                                    <span class="en-font me-2">{{optional($val->postLangsCurrent)->txt2}}</span>
                                </div>

                                <h2 class="rs-blog-title underline has-black">
                                    <a href="{{route('site.events.show' , $val->id)}}">{{optional($val->postLangsCurrent)->name}}</a>
                                </h2>
                                <div class="rs-blog-btn-wrapper">
                                    <span class="rs-blog-meta-text">@if(now() <= date_create($val->postLangsCurrent ->txt2))
                                            متبقي {{date_create($val->postLangsCurrent ->txt2)->diff(now())->days}}
                                            أيام @else تم الانتهاء @endif</span>
                                    <a class="rs-square-btn has-icon has-light-grey" href="{{route('site.events.show' , $val->id)}}">
                         <span class="icon-box">
                           <i class="icon-arrow-right-2 icon-first"></i>
                           <i class="icon-arrow-right-2 icon-second"></i>
                         </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    {{$events->links()}}
@endsection





