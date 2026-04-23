{{--    <title> الأخبار | دار راشد للنشر</title>--}}

@extends('site.master')
@section('content')

    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/service-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">خدماتنا</h1>
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
    <section class="section-space" style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="row ">


                <div
                    class="features-one__carousel rashed-owl__carousel rashed-owl__carousel--basic-navxxx owl-carousel owl-theme"
                    data-aos="fade-down"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-owl-options='{
            "items": 1,
            "margin": 30,
            "loop": true,
            "smartSpeed": 700,
            "nav": false,
            "dots": true,
            "navText": ["<i class=\"icon-arrow-left\"></i>","<i class=\"icon-arrow-right\"></i>"],
            "autoplay": false,
            "responsive": {
                 "0": {
                        "items": 1
                    },
                    "576": {
                        "items": 1
                    },
                    "992": {
                        "items": 2
                    },
                    "1200": {
                        "items": 3
                    }
            }
        }'
                >
                    @forelse($services as $key => $val)
                         <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="300"
                        >
                            <div class="services-two-section__item">
                                <div class="services-box">
                                    <div class="icon">
                                        <i class="fas fa-exchange-alt" aria-hidden="true"></i>
                                    </div>
                                    <h2><a href="">{{optional($val->postLangsCurrent)->name}}</a></h2>
                                    <p>{!! optional($val->postLangsCurrent)->short !!}</p>
                                    <div class="d-flex justify-content-center gap-3">
                                        <a href="" title="" class="rashed-btn rashed-btn--brown">
                                            <span class="rashed-btn__text">التفاصيل</span>
                                            <span class="rashed-btn__icon-box">
            <span class="rashed-btn__icon">
                <i class="icon-arrow-right-up" aria-hidden="true"></i>
                <i class="icon-arrow-right-up" aria-hidden="true"></i>
            </span>
        </span>
                                        </a>

                                        <a href="" title="" class="rashed-btn">
                                            <span class="rashed-btn__text">قدم الآن</span>
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
                    @empty
                    @endforelse

{{--                                        <div--}}
{{--                                            class="item"--}}
{{--                                            data-aos="fade-down"--}}
{{--                                            data-aos-anchor-placement="top-bottom"--}}
{{--                                            data-aos-duration="1300"--}}
{{--                                            data-aos-delay="300"--}}
{{--                                        >--}}
{{--                                            <div class="services-two-section__item">--}}
{{--                                                <div class="services-box">--}}
{{--                                                    <div class="icon">--}}
{{--                                                        <i class="icon-calendar" aria-hidden="true"></i>--}}
{{--                                                    </div>--}}
{{--                                                    <h2><a href="">الفاعليات</a></h2>--}}
{{--                                                    <p>--}}
{{--                                                        استعراض الفعاليات المتاحة للحجز و تأكيد--}}
{{--                                                        حجزها--}}
{{--                                                    </p>--}}
{{--                                                    <div class="d-flex justify-content-center gap-3">--}}





{{--                                                        <a href="" title="" class="rashed-btn rashed-btn--brown">--}}
{{--                                                            <span class="rashed-btn__text">التفاصيل</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}

{{--                                                        <a href="" title="" class="rashed-btn">--}}
{{--                                                            <span class="rashed-btn__text">قدم الآن</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}


{{--                                        <div--}}
{{--                                            class="item"--}}
{{--                                            data-aos="fade-down"--}}
{{--                                            data-aos-anchor-placement="top-bottom"--}}
{{--                                            data-aos-duration="1300"--}}
{{--                                            data-aos-delay="300"--}}
{{--                                        >--}}
{{--                                            <div class="services-two-section__item">--}}
{{--                                                <div class="services-box">--}}
{{--                                                    <div class="icon">--}}
{{--                                                        <i--}}
{{--                                                            class="fas fa-pencil-alt"--}}
{{--                                                            aria-hidden="true"--}}
{{--                                                        ></i>--}}
{{--                                                    </div>--}}
{{--                                                    <h2><a href="">طلب نشر كتاب</a></h2>--}}
{{--                                                    <p>--}}
{{--                                                        استعراض الفعاليات المتاحة للحجز و تأكيد--}}
{{--                                                        حجزها--}}
{{--                                                    </p>--}}
{{--                                                    <div class="d-flex justify-content-center gap-3">--}}





{{--                                                        <a href="" title="" class="rashed-btn rashed-btn--brown">--}}
{{--                                                            <span class="rashed-btn__text">التفاصيل</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}

{{--                                                        <a href="" title="" class="rashed-btn">--}}
{{--                                                            <span class="rashed-btn__text">قدم الآن</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}


{{--                                        <div--}}
{{--                                            class="item"--}}
{{--                                            data-aos="fade-down"--}}
{{--                                            data-aos-anchor-placement="top-bottom"--}}
{{--                                            data-aos-duration="1300"--}}
{{--                                            data-aos-delay="300"--}}
{{--                                        >--}}
{{--                                            <div class="services-two-section__item">--}}
{{--                                                <div class="services-box">--}}
{{--                                                    <div class="icon">--}}
{{--                                                        <i--}}
{{--                                                            class="fa fa-book"--}}
{{--                                                            aria-hidden="true"--}}
{{--                                                        ></i>--}}
{{--                                                    </div>--}}
{{--                                                    <h2><a href="">بيع كتب</a></h2>--}}
{{--                                                    <p>--}}
{{--                                                        استعراض الفعاليات المتاحة للحجز و تأكيد--}}
{{--                                                        حجزها--}}
{{--                                                    </p>--}}
{{--                                                    <div class="d-flex justify-content-center gap-3">--}}





{{--                                                        <a href="" title="" class="rashed-btn rashed-btn--brown">--}}
{{--                                                            <span class="rashed-btn__text">التفاصيل</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}

{{--                                                        <a href="" title="" class="rashed-btn">--}}
{{--                                                            <span class="rashed-btn__text">قدم الآن</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                        <div--}}
{{--                                            class="item"--}}
{{--                                            data-aos="fade-down"--}}
{{--                                            data-aos-anchor-placement="top-bottom"--}}
{{--                                            data-aos-duration="1300"--}}
{{--                                            data-aos-delay="300"--}}
{{--                                        >--}}
{{--                                            <div class="services-two-section__item">--}}
{{--                                                <div class="services-box">--}}
{{--                                                    <div class="icon">--}}
{{--                                                        <i--}}
{{--                                                            class="fas fa-id-card"--}}
{{--                                                            aria-hidden="true"--}}
{{--                                                        ></i>--}}
{{--                                                    </div>--}}
{{--                                                    <h2><a href="">العضويات</a></h2>--}}
{{--                                                    <p>--}}
{{--                                                        استعراض الفعاليات المتاحة للحجز و تأكيد--}}
{{--                                                        حجزها--}}
{{--                                                    </p>--}}
{{--                                                    <div class="d-flex justify-content-center gap-3">--}}





{{--                                                        <a href="" title="" class="rashed-btn rashed-btn--brown">--}}
{{--                                                            <span class="rashed-btn__text">التفاصيل</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}

{{--                                                        <a href="" title="" class="rashed-btn">--}}
{{--                                                            <span class="rashed-btn__text">قدم الآن</span>--}}
{{--                                                            <span class="rashed-btn__icon-box">--}}
{{--                                <span class="rashed-btn__icon">--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                    <i class="icon-arrow-right-up" aria-hidden="true"></i>--}}
{{--                                </span>--}}
{{--                            </span>--}}
{{--                                                        </a>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}


                </div>


            </div>
        </div>
    </section>
     <script>
        window.disableOwlAutoInit = true;
    </script>
    <script>
        $(document).ready(function () {

            // wait until theme tries to init
            setTimeout(function () {

                $('.features-one__carousel').each(function () {

                    var $el = $(this);

                    // destroy anything already initialized by theme
                    if ($el.hasClass('owl-loaded')) {
                        $el.trigger('destroy.owl.carousel');
                        $el.removeClass('owl-loaded');
                        $el.find('.owl-stage-outer').children().unwrap();
                    }

                    // read your existing options (KEEP YOUR HTML)
                    var options = $el.attr('data-owl-options');
                    options = JSON.parse(options);

                    // initialize ONCE correctly
                    $el.owlCarousel(options);

                });

            }, 600); // important: AFTER theme runs

        });
    </script>

@endsection
