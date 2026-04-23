@extends('site.master')

@section('content')
    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/pub-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">{{$post->$name}}</h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                            <li>
                                <a href="{{url('/')}}" title="">الرئيسيه</a>
                            </li>
                            <li>
                                <a href="{{route('site.releases.index')}}" title="الإصدارات">الإصدارات</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-header__image"></div>
    </section>
    <section class="blog-page blog-page--sidebar section-space">
        <div class="container">
            <div class="row gutter-y-50">
                <div class="col-lg-8">
                    <div class="project-details__image-container  row g-0">

                        <div class="col-md-4 p-0">
                            <div class="project-details__info-box" data-aos="fade-up"
                                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                                <ul class="project-details__info list-unstyled">
                                    <li>
                             <span class="project-details__info__icon">
                               <i class="fas fa-book"></i>
                             </span>
                                        <div class="project-details__info__content">
                                            <span class="project-details__info__title">أسم الكتاب</span>
                                            <span class="project-details__info__text">{{$post->$name}}</span>
                                        </div>
                                    </li>
                                    <li>
                             <span class="project-details__info__icon">
                               <i class="fas fa-feather-alt"></i>
                             </span>
                                        <div class="project-details__info__content">
                                            <span class="project-details__info__title">أسم المؤلف</span>
                                            <span
                                                class="project-details__info__text">{{ optional($post->postLangsCurrent)->txt2 }}</span>
                                        </div>
                                    </li>
                                    <li>
                             <span class="project-details__info__icon">
                               <i class="icon-calendar"></i>
                             </span>
                                        <div class="project-details__info__content">
                                            <span class="project-details__info__title">تاريخ الإصدار </span>
                                            <span class="project-details__info__text">
{{--                                 <span class="en-font fw-bold">31</span> يناير <span class="en-font fw-bold">2026</span>--}}
                                                <span
                                                    class="en-font fw-bold"> {{ \Carbon\Carbon::parse(optional($post->postLangsCurrent)->txt1)->locale(app()->getLocale())->translatedFormat('Y F d') }} </span>
                               </span>
                                        </div>
                                    </li>
                                    <li>
                             <span class="project-details__info__icon">
                               <i class="icon-folder"></i>
                             </span>
                                        <div class="project-details__info__content">
                                            <span class="project-details__info__title">التصنيف</span>
                                            <span
                                                class="project-details__info__text">{{app()->getLocale() == 'ar' ? optional($post->category)->name_ar : optional($post->category)->name}}</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8 p-0">
                            <div class="project-details__image-container" data-aos="fade-up"
                                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                                <img src="{{$post->image()}}" alt="اسم الكتاب">

                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="project-details__text" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                             data-aos-duration="1300">
                            {!! optional($post->postLangsCurrent)->details !!}
                        </div>
                    </div>


                    <div class="blog-details__meta aos-init aos-animate" data-aos="fade-up"
                         data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                        <div class="blog-details__tags">
                            <div class="blog-details__categories__box">
                                <a href="" title="" class="rashed-btn">
                                    <span class="rashed-btn__text"> إستعاره الكتاب </span>
                                    <span class="rashed-btn__icon-box">
                           <span class="rashed-btn__icon">
                             <i class="icon-arrow-right-up" aria-hidden="true"></i>
                             <i class="icon-arrow-right-up" aria-hidden="true"></i>
                           </span>
                         </span>
                                </a>
                            </div>
                        </div>
                        <div class="blog-details__categories">
                            <div class="blog-details__categories__box">
                                <a href="" title="" class="rashed-btn">
                                    <span class="rashed-btn__text">شراء الكتاب</span>
                                    <span class="rashed-btn__icon-box">
                           <span class="rashed-btn__icon">
                             <i class="icon-arrow-right-up" aria-hidden="true"></i>
                             <i class="icon-arrow-right-up" aria-hidden="true"></i>
                           </span>
                         </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar">
                        <aside class="widget-area">
                            <div class="sidebar__form sidebar__single aos-init aos-animate" data-aos="fade-left"
                                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                                <h3 class="sidebar__categories-title sidebar__title">بحث متقدم </h3>
                                <div class="contact-one contact-one--page">
                                    <form action="{{route('site.releases.index')}}" class="form-one">
                                        <div class="row justify-content-center align-items-center">
                                            <div class="col-xl-12 col-md-12">
                                                <div class="form-one__control mb-20">
                                                    <input type="text" name="search" value="{{request('search')}}"
                                                           placeholder="أسم الأصدار ">
                                                    <i class="fa fa-edit " aria-hidden="true"></i>
                                                </div>
                                            </div>

                                            <div class="col-xl-12 col-md-12">
                                                <div class="form-one__control mb-20">
                                                    <select class="selectpicker" aria-label="" name="category"
                                                            data-container="body" data-dropup-auto="false">
                                                        <option value="" selected>أختر التصنيف</option>
                                                        @forelse($cats as $item)
                                                            <option value="{{$item->id}}">{{$item->$catName}}</option>
                                                        @empty
                                                        @endforelse
                                                    </select>
                                                    <i class="icon-folder" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-md-12">
                                                <button class="rashed-btn rashed-btn--base w-100">
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
                            <div class="sidebar__categories-wrapper sidebar__single aos-init aos-animate"
                                 data-aos="fade-left" data-aos-anchor-placement="top-bottom" data-aos-duration="1300"
                                 data-aos-delay="100">
                                <h4 class="sidebar__categories-title sidebar__title">التصنيفات</h4>
                                <ul class="sidebar__categories list-unstyled">
                                    @forelse($cats as $cat)
                                        <li>
                                            <a href="{{route('site.releases.index' ).'?category='.$cat->id}}">
                             <span class="sidebar__categories__text">
                               <span class="sidebar__categories__icon">
                                 <i class="fas fa-long-arrow-alt-right"></i>
                               </span>{{$cat->$catName}}</span>
                                                <span class="en-font">({{$cat->posts_count}})</span>
                                            </a>
                                        </li>
                                    @empty
                                    @endforelse
                                </ul>
                            </div>
                            <div class="sidebar__posts-wrapper sidebar__single aos-init" data-aos="fade-left"
                                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                                <h4 class="sidebar__posts-title sidebar__title">أضيف حديثاً</h4>
                                <ul class="sidebar__posts list-unstyled">
                                    @forelse($books as $book)
                                        <li class="sidebar__posts__item">
                                            <div class="sidebar__posts__image">
                                                <img src="{{$book->image()}}" alt="">
                                            </div>
                                            <div class="sidebar__posts__content">
                                                <div class="sidebar__posts__meta">
                               <span class="sidebar__posts__meta__icon">
                                 <i class="fas fa-calendar-alt"></i>
                               </span>
                                                    <span class="en-font"> {{date_create($book->txt1)->format('d')}} </span>
                                                    <span class="en-font">  {{date_create($book->txt1)->format('M')}}  </span>
                                                    <span class="en-font"> {{date_create($book->txt1)->format('Y')}} </span>
                                                </div>
                                                <h4 class="sidebar__posts__title">
                                                    <a href="{{route('site.releases.show' , $book->id)}}">{{$book->$name}}</a>
                                                </h4>
                                            </div>
                                        </li>
                                    @empty
                                    @endforelse
                                    {{--                                    <li class="sidebar__posts__item">--}}
                                    {{--                                        <div class="sidebar__posts__image">--}}
                                    {{--                                            <img src="assets/images/hero-slider/hero-slider-1-2.jpg" alt="">--}}
                                    {{--                                        </div>--}}
                                    {{--                                        <div class="sidebar__posts__content">--}}
                                    {{--                                            <div class="sidebar__posts__meta">--}}
                                    {{--                               <span class="sidebar__posts__meta__icon">--}}
                                    {{--                                 <i class="fas fa-calendar-alt"></i>--}}
                                    {{--                               </span>--}}
                                    {{--                                                <span class="en-font"> 31 </span>--}}
                                    {{--                                                <span class="en-font"> ديسمبر </span>--}}
                                    {{--                                                <span class="en-font"> 2026 </span>--}}
                                    {{--                                            </div>--}}
                                    {{--                                            <h4 class="sidebar__posts__title">--}}
                                    {{--                                                <a href="">أسم الكتاب يكتب هنا</a>--}}
                                    {{--                                            </h4>--}}
                                    {{--                                        </div>--}}
                                    {{--                                    </li>--}}
                                    {{--                                    <li class="sidebar__posts__item">--}}
                                    {{--                                        <div class="sidebar__posts__image">--}}
                                    {{--                                            <img src="assets/images/hero-slider/hero-slider-1-2.jpg" alt="">--}}
                                    {{--                                        </div>--}}
                                    {{--                                        <div class="sidebar__posts__content">--}}
                                    {{--                                            <div class="sidebar__posts__meta">--}}
                                    {{--                               <span class="sidebar__posts__meta__icon">--}}
                                    {{--                                 <i class="fas fa-calendar-alt"></i>--}}
                                    {{--                               </span>--}}
                                    {{--                                                <span class="en-font"> 31 </span>--}}
                                    {{--                                                <span class="en-font"> ديسمبر </span>--}}
                                    {{--                                                <span class="en-font"> 2026 </span>--}}
                                    {{--                                            </div>--}}
                                    {{--                                            <h4 class="sidebar__posts__title">--}}
                                    {{--                                                <a href="">أسم الكتاب يكتب هنا</a>--}}
                                    {{--                                            </h4>--}}
                                    {{--                                        </div>--}}
                                    {{--                                    </li>--}}
                                    {{--                                    <li class="sidebar__posts__item">--}}
                                    {{--                                        <div class="sidebar__posts__image">--}}
                                    {{--                                            <img src="assets/images/hero-slider/hero-slider-1-2.jpg" alt="">--}}
                                    {{--                                        </div>--}}
                                    {{--                                        <div class="sidebar__posts__content">--}}
                                    {{--                                            <div class="sidebar__posts__meta">--}}
                                    {{--                               <span class="sidebar__posts__meta__icon">--}}
                                    {{--                                 <i class="fas fa-calendar-alt"></i>--}}
                                    {{--                               </span>--}}
                                    {{--                                                <span class="en-font"> 31 </span>--}}
                                    {{--                                                <span class="en-font"> ديسمبر </span>--}}
                                    {{--                                                <span class="en-font"> 2026 </span>--}}
                                    {{--                                            </div>--}}
                                    {{--                                            <h4 class="sidebar__posts__title">--}}
                                    {{--                                                <a href="">أسم الكتاب يكتب هنا</a>--}}
                                    {{--                                            </h4>--}}
                                    {{--                                        </div>--}}
                                    {{--                                    </li>--}}
                                    {{--                                    <li class="sidebar__posts__item">--}}
                                    {{--                                        <div class="sidebar__posts__image">--}}
                                    {{--                                            <img src="assets/images/hero-slider/hero-slider-1-2.jpg" alt="">--}}
                                    {{--                                        </div>--}}
                                    {{--                                        <div class="sidebar__posts__content">--}}
                                    {{--                                            <div class="sidebar__posts__meta">--}}
                                    {{--                               <span class="sidebar__posts__meta__icon">--}}
                                    {{--                                 <i class="fas fa-calendar-alt"></i>--}}
                                    {{--                               </span>--}}
                                    {{--                                                <span class="en-font"> 31 </span>--}}
                                    {{--                                                <span class="en-font"> ديسمبر </span>--}}
                                    {{--                                                <span class="en-font"> 2026 </span>--}}
                                    {{--                                            </div>--}}
                                    {{--                                            <h4 class="sidebar__posts__title">--}}
                                    {{--                                                <a href="">أسم الكتاب يكتب هنا</a>--}}
                                    {{--                                            </h4>--}}
                                    {{--                                        </div>--}}
                                    {{--                                    </li>--}}
                                </ul>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
