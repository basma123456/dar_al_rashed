@extends('site.master')
@section('content')


    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/photo-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">تفاصيل ألبوم الصور</h1>
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
    <section class="product-details mt-60">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 aos-init aos-animate" data-aos="fade-up"
                     data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <div class="about-two__item__inner">
                   <span class="about-two__item__icon">
                     <i class="fa fa-images"></i>
                   </span>
                        <div class="about-two__item__content">
                            <h2 class="about-two__item__title">{{$post->$name}}</h2>

                        </div>
                    </div>
                </div>
                <div class="col-lg-12" data-aos="fade-right" data-aos-anchor-placement="top-bottom"
                     data-aos-duration="1300">
                    <div class="outer">
                        <div id="big" class="owl-carousel owl-theme">
                            <div class="item">
                                <img src="{{$post->image()}}" alt="">
                            </div>
                            @forelse($post->gallery as $img)
                                <div class="item">
                                    <img src="{{$img->image()}}" alt="">
                                </div>
                            @empty
                            @endforelse
                        </div>
                        <div id="thumbs" class="owl-carousel owl-theme">
                            <div class="item">
                                <img src="{{$post->image()}}" alt="">
                            </div>
                        @forelse($post->gallery as $img)
                                <div class="item">
                                    <img src="{{$img->image()}}" alt="">
                                </div>
                            @empty
                            @endforelse

                        </div>
                    </div>
                </div>

                <div class="col-lg-12 aos-init aos-animate mb-60" data-aos="fade-up"
                     data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <div class="blog-details__meta p-3">
                        <div class="blog-details__tags">
                            <div class="blog-details__categories__box">
                                <h3 class="fw-bold fs-6 mb-0"> شارك ألبو الصور : </h3>
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
    <section class="finance-growth section-space mb-60 project-two">
        <div class="finance-growth__bg jarallax" data-jarallax data-speed="0.3s" style="
            background-image: url('{{asset('site/assets/images/backgrounds/bg-gallery.webp')}}');
            ">
            <div class="finance-growth__bg__shape finance-growth__bg__shape--1" style="
                background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-1.png')}}');
                "></div>
            <div class="finance-growth__bg__shape finance-growth__bg__shape--2" style="
                background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-2.png')}}');
                "></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="book-appointment__content mb-30">
                    <div class="sec-title sec-title--center">
                        <span class="subtitle-two subtitle--double-lines-center" data-aos="fade-up"
                              data-aos-anchor-placement="top-bottom" data-aos-duration="1500"> أحدث</span>
                        <h2 data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500"
                            class="text-white mb-5"> ألبومات الصور </h2>
                    </div>


                    <div class="col-md-12">
                        <div class="outer-box">


                            @forelse($galleries as $img)
                                <div class="project-block-four">
                                    <div class="inner-box">
                                        <div class="image-box">
                                            <figure class="image"><a href=""><img src="{{asset($img->image())}}" alt=""></a>
                                            </figure>
                                        </div>
                                        <div class="content-box">

                                            <h3 class="title"><a href="">{{$img->$name}}</a></h3>
                                            <div class="button">
                                                <a href="{{route('site.gallery.show' , $img->id)}}" title=""
                                                   class="rashed-btn">
                                                    <span class="rashed-btn__text">شاهد المزيد</span>
                                                    <span class="rashed-btn__icon-box">
                              <span class="rashed-btn__icon"><i class="icon-arrow-right-up" aria-hidden="true"></i><i
                                      class="icon-arrow-right-up" aria-hidden="true"></i></span></span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="content-box-hover">
                                            <h3 class="title"><a
                                                    href="{{route('site.gallery.show' , $img->id)}}">{{$img->$name}}</a>
                                            </h3>
                                        </div>
                                        <div class="overlay-1"></div>
                                    </div>
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

