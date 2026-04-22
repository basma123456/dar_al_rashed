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
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300"> تفاصيل الفعاليه </h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
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
                <form action="{{route('site.events.index')}}" class="form-one" method="get">
                    @csrf
                    <div class="row justify-content-center align-items-center">
                        <div class="col-xl-3 col-md-6">
                            <div class="projects__info">
                                <h2 class="projects__info__title mb-0">بحث متقدم فى الفعاليات</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control">
                                <input type="text" placeholder="أسم الفاعليه" name="search" value="{{old('search')}}">
                                <i class="fa fa-edit " aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="form-one__control ">
                                <select class="selectpicker" aria-label="" name="date" data-container="body"
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
                            <button class="rashed-btn rashed-btn--white w-100" type="submit">
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
    <section class="product-details">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 aos-init aos-animate" data-aos="fade-up"
                     data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <div class="about-two__item__inner">
                   <span class="about-two__item__icon">
                     <i class="icon-calendar"></i>
                   </span>
                        <div class="about-two__item__content">
                            <h4 class="about-two__item__title">{{optional($post->postLangsCurrent)->name}}</h4>
                            <p class="about-two__item__text">
                                <span class="en-font me-2">{{ optional($post->postLangsCurrent)->txt1}}</span>
                                <span class=" me-2"> إلى </span>
                                <span class="en-font me-2">{{ optional($post->postLangsCurrent)->txt2}}</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12" data-aos="fade-right" data-aos-anchor-placement="top-bottom"
                     data-aos-duration="1300">
                    <div class="outer">
                        <div id="big" class="owl-carousel owl-theme">
                            @forelse($post->gallery as $key => $val)
                                <div class="item">
                                    <img src="{{asset($val->image())}}" alt="">
                                </div>
                            @empty
                            @endforelse

                        </div>
                        <div id="thumbs" class="owl-carousel owl-theme">
                            @forelse($post->gallery as $key => $val)
                                <div class="item">
                                    <img src="{{asset($val->image())}}" alt="">
                                </div>
                            @empty
                            @endforelse


                        </div>
                    </div>
                </div>
                <div class="col-lg-12 mb-30" data-aos="fade-right" data-aos-anchor-placement="top-bottom"
                     data-aos-duration="1300">{!!  optional($post->postLangsCurrent)->details  !!}
                </div>
                <div class="col-lg-12 aos-init aos-animate mb-60" data-aos="fade-up"
                     data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <div class="blog-details__meta p-3">
                        <div class="blog-details__tags">
                            <div class="blog-details__categories__box">
                                <h3 class="fw-bold fs-6 mb-0"> شارك الحدث : </h3>
                            </div>
                        </div>
                        <div class="blog-details__categories">
                            <div class="blog-details__categories__box">
                                <div class="product-details__socials">
                                    <div class="social-links">
                                        <a href="">
                             <span class="social-links__icon">
                               <i class="fab fa-facebook-f" aria-hidden="true"></i>
                               <span class="sr-only">فيسبوك</span>
                             </span>
                                        </a>
                                        <a href="">
                             <span class="social-links__icon">
                               <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"
                                    xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                                 <path
                                     d="M17.53 3H21L14.47 10.06L22.24 21H16.47L11.66 14.47L6.24 21H3L10.06 13.47L2 3H7.94L12.47 9.06L17.53 3Z"></path>
                               </svg>
                               <span class="sr-only">إكس</span>
                             </span>
                                        </a>
                                        <a href="">
                             <span class="social-links__icon">
                               <i class="fab fa-whatsapp" aria-hidden="true"></i>
                               <span class="sr-only">واتس اب</span>
                             </span>
                                        </a>
                                        <a href="">
                             <span class="social-links__icon">
                               <i class="fab fa-instagram" aria-hidden="true"></i>
                               <span class="sr-only">نستجرام</span>
                             </span>
                                        </a>
                                    </div>
                                    <script>
                                        function toggleShare() {
                                            document.querySelector(".product-details__socials").classList.toggle("open");
                                        }

                                        function copyAndRedirect() {
                                            const url = "https://viralpurplecow.com";
                                            navigator.clipboard.writeText(url);
                                            window.open(url, "_blank");
                                        }
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="finance-statistic mb-60">
        <div class="container">
            <div class="row gutter-y-40">
                <div class="col-lg-6 order-1 order-lg-0">
                    <div class="finance-statistic__bg aos-init aos-animate"
                         style="background-image: url('{{asset('site/assets/images/backgrounds/event-bg.jpg')}}');"
                         data-aos="fade-right"
                         data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                        <div class="finance-statistic__bg__content">
                     <span class="finance-statistic__bg__icon">
                      <i class="icon-calendar"></i>
                     </span>
                            <h4 class="finance-statistic__bg__title">أحدث الفعاليات</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 order-0 order-lg-1">
                    <div class="services-three__grid">
                        <div class="services-three__content">
                            @forelse($events as $key => $val)
                                <div class="services-three__item" data-aos="fade-up"
                                     data-aos-anchor-placement="top-bottom"
                                     data-aos-duration="1300">
                                    <div class="services-three__item__left">
                                        <div class="services-three__item__icon-box">
                                            <div class="services-three__item__icon">
                                                <span class="en-font">{{ (int)date_create( optional($post->postLangsCurrent)->txt1)->format('d') }}</span>
                                                <span class="en-font">{{ (int)date_create( optional($post->postLangsCurrent)->txt1)->format('m') }}</span>
                                            </div>
                                        </div>
                                        <h4 class="services-three__item__title">
                                            <a href="{{route('site.events.show' , $val->id)}}">{{optional($val->postLangsCurrent)->name}}</a>
                                        </h4>
                                    </div>
                                    <a href="{{route('site.events.show' , $val->id)}}" class="services-three__item__btn">
                                        <i class="icon-right-2"></i>
                                    </a>
                                </div>
                            @empty
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
