@extends('site.master')

@section('content')
    {{--    {{dd($post->postLangsCurrent)}}--}}
    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/service-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300">{{ optional($post->postLangsCurrent)->name }}</h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                            <li>
                                <a href="{{url('/')}}" title="">الرئيسيه</a>
                            </li>
                            <li>
                                <a href="{{route('site.services.index')}}" title="">خدماتنا</a>
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
                <div class="row justify-content-center align-items-center">
                    <div class="col-xl-6 col-md-6">
                        <div class="projects__info">
                            <h2 class="projects__info__title mb-0"> اجمالي الطلبات المقدمة | <span
                                    class="counter en-font text-white fw-bold" data-target="5000">0</span>
                            </h2>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="services-two__bottom__button">
                            <a href="" title="" class="rashed-btn rashed-btn--white me-2">
                                <span class="rashed-btn__text">قدم على الخدمه</span>
                                <span class="rashed-btn__icon-box">
                         <span class="rashed-btn__icon">
                           <i class="icon-arrow-right-up"></i>
                           <i class="icon-arrow-right-up"></i>
                         </span>
                       </span>

                            </a>
                            <a title="" class="rashed-btn rashed-btn--white" target="_blank" download=""
                               href="{{asset($post->up1)}}">
                                <span class="rashed-btn__text">دليل الأستخدام</span>
                                <span class="rashed-btn__icon-box">
                         <span class="rashed-btn__icon">
                           <i class="icon-arrow-right-up"></i>
                           <i class="icon-arrow-right-up"></i>
                         </span>
                       </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about-one section-space-b">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="about-one__content">
                        <div class="tabs-box" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                             data-aos-duration="1300">
                            <ul class="tab-buttons list-unstyled">
                                <li data-tab="#about01" class="tab-btn active-btn">وصف الخدمه</li>
                                <li data-tab="#about02" class="tab-btn ">خطوات التقديم على الخدمه</li>
                                <li data-tab="#about03" class="tab-btn">الأسئله الشائعه</li>
                            </ul>
                            <div class="tabs-content">
                                <div class="tab active-tab" id="about01">
                                    <div class="tabs-content__inner">
                                        {!! optional($post->postLangsCurrent)->details !!}
                                    </div>
                                </div>
                                <div class="tab " id="about02">
                                    <div class="tabs-content__inner">
                                        {!! optional($post->postLangsCurrent)->area1 !!}
                                    </div>
                                </div>
                                <div class="tab" id="about03">
                                    <div class="tabs-content__inner">
                                        {!! optional($post->postLangsCurrent)->area2 !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="mb-60 ">
        <div class="container">
            <div class="black-inside-invers aos-init aos-animate" data-aos="fade-up"
                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                <div class="row">
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-12">
                        <div class="projects__info ms-3">
                            <h2 class="projects__info__title mb-0 "> تقيم الخدمه </h2>
                        </div>
                    </div>
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-12">
                        <div id="ratingCount" class="rating-count"></div>
                    </div>
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-12">
                        <div class="bg-rating d-flex">
                            <div class="rating">
                                <input type="radio" id="star-5" onclick="pressStar(this , 5)"
                                       {{(int)$rate == 5 ? 'checked' : '' }}  name="num" value="5">
                                <label for="star-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-4" onclick="pressStar(this ,4)"
                                       {{(int)$rate == 4 ? 'checked' : '' }}   name="num" value="4">
                                <label for="star-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-3" name="num" onclick="pressStar(this ,3)"
                                       {{(int)$rate == 3 ? 'checked' : '' }}   value="3">
                                <label for="star-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-2" name="num" onclick="pressStar(this ,2)"
                                       {{(int)$rate == 2 ? 'checked' : '' }}   value="2">
                                <label for="star-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-1" name="num" onclick="pressStar(this ,1)"
                                       {{(int)$rate == 1 ? 'checked' : '' }}   value="1">
                                <label for="star-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <section class="finance-growth section-space min-h-350">
        <div
            class="finance-growth__bg jarallax"
            data-jarallax data-speed="0.3s"
            style="background-image: url('{{asset('site/assets/images/backgrounds/services.jpg')}}');">
            <div class="finance-growth__bg__shape finance-growth__bg__shape--1" style="
                background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-1.png')}}');"></div>
            <div class="container">
                <div class="row">
                    <div class="book-appointment__content mt-60 mb-30">
                        <div class="sec-title sec-title--center">
                            <span class="subtitle-two subtitle--double-lines-center aos-init aos-animate"
                                  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500">المزيد</span>
                            <h2 data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500"
                                class="text-white mb-5 aos-init aos-animate"> خدماتنا </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="services-page mt--180 mb-100">
        <div class="container">
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
                                    <a href="{{route('site.services.show' , $val->id)}}" title=""
                                       class="rashed-btn rashed-btn--brown">
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

            </div>


        </div>
    </section>

@endsection

@section('scripts')
    <script>
        function pressStar(obj, num) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });
            $.ajax({
                type: 'POST',
                url: '{{url('rate/'.$post->id)}}',
                data: {
                    num: num,
                },
                // contentType: false,
                // processData: false,
                success: (response) => {
                    console.log(response);
                    alert('Form submitted successfully');
                    // location.reload();
                },
                error: function (response) {
                    // $('#ajax-form').find(".print-error-msg").find("ul").html('');
                    // $('#ajax-form').find(".print-error-msg").css('display','block');
                    // $.each( response.responseJSON.errors, function( key, value ) {
                    //     $('#ajax-form').find(".print-error-msg").find("ul").append('<li>'+value+'</li>');
                    // });
                }
            });


        }
    </script>
@endsection
