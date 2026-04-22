{{--    <title> الأخبار | دار راشد للنشر</title>--}}

@extends('site.master')
@section('content')


    <section class="page-header">
        <div class="page-header__bg" style="background-image: url('{{asset('site/assets/images/backgrounds/news-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left" data-aos-anchor-placement="top-bottom" data-aos-duration="1300"> الأخبار </h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right" data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                            <li>
                                <a href="index.html" title="">الرئيسيه</a>
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
                <form action="{{route('site.news.index')}}" class="form-one" method="get">
                    @csrf
                    <div class="row justify-content-center align-items-center">
                        <div class="col-xl-3 col-md-6">
                            <div class="projects__info">
                                <h2 class="projects__info__title mb-0">بحث متقدم فى الأخبار</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control">
                                <input type="text" name="search"  value="{{request('search')}}" placeholder="أسم الخبر">
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
    <section style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="row">

                @foreach($news as $key => $val)

                    <div class="col-lg-4 col-md-6 aos-init aos-animate" data-aos="fade-up"
                         data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="200">
                        <div class="blog-card">
                            <div class="blog-card__image">
                                <img src="{{asset($val->image())}}" alt="">
                                <a href="{{route('site.news.show' , $val->id)}}" class="blog-card__image__link">
                                    <span class="sr-only"></span>
                                </a>
                            </div>
                            <div class="blog-card__content">
                                <div class="blog-card__admin">
                                    <div class="days en-font">{{ (int)date_create( optional($val->postLangsCurrent)->txt1)->format('d') }}</div>
                                    <div class="blog-card__admin__info"> {{ \Illuminate\Support\Carbon::parse(optional($val->postLangsCurrent)->txt1)->translatedFormat('F') }}</div>
                                </div>
                                <h3 class="blog-card__title">
                                    <a href="{{route('site.news.show' , $val->id)}}">{{ optional($val->postLangsCurrent)->name}}</a>
                                </h3>
                                <a href="{{route('site.news.show' , $val->id)}}" class="rashed-btn rashed-btn--base">
                                    <span class="rashed-btn__text">أقرأ المزيد</span>
                                    <span class="rashed-btn__icon-box">
                         <span class="rashed-btn__icon">
                           <i class="icon-arrow-right-up"></i>
                           <i class="icon-arrow-right-up"></i>
                         </span>
                       </span>
                                </a>
                            </div>
                            <div class="blog-card__border"></div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    {{$news->links()}}

    {{--    <section class="mb-60 ">--}}
    {{--        <div class="container">--}}
    {{--            <div class="black-inside-invers aos-init aos-animate" data-aos="fade-up"--}}
    {{--                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">--}}
    {{--                <div class="row">--}}
    {{--                    <div class="col-12">--}}
    {{--                        <div class="post-pagination">--}}
    {{--                            <a href="#" class="post-pagination__icon left">--}}
    {{--                                <i class="icon-arrow-left"></i>--}}
    {{--                            </a>--}}
    {{--                            <div class="post-pagination__numbers">--}}
    {{--                                <a href="#" class="post-pagination__btn active">01</a>--}}
    {{--                                <a href="#" class="post-pagination__btn">02</a>--}}
    {{--                                <a href="#" class="post-pagination__btn">03</a>--}}
    {{--                            </div>--}}
    {{--                            <a href="#" class="post-pagination__icon right">--}}
    {{--                                <i class="icon-arrow-right"></i>--}}
    {{--                            </a>--}}
    {{--                        </div>--}}
    {{--                    </div>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </section>--}}
@endsection





