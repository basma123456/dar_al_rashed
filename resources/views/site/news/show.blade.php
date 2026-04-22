@extends('site.master')

@section('content')
    <!----page header ------->
    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/news-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"> تفاصيل الخبر </h1>
                        <ul class="rashed-breadcrumb list-unstyled aos-init" data-aos="fade-right"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                            <li>
                                <a href="index.html" title="">الرئيسيه</a>
                            </li>
                            <li>
                                <a href="" title="">الأخبار</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-header__image"></div>
    </section>
    <!--------end page header ---->


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
                                <input type="text" name="search" value="{{old('search')}}" placeholder="أسم الخبر">
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
    <section class="mb-60">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 ">
                    <div class="container-date mb-30">
                        <div class="box-date">
                            <div
                                class="inner-div en-font fs-20 fw-bold">{{ (int)date_create( optional($post->postLangsCurrent)->txt1)->format('d') }}</div>
                            <div
                                class="inner-div">{{ \Illuminate\Support\Carbon::parse(optional($post->postLangsCurrent)->txt1)->translatedFormat('F') }}</div>
                        </div>
                        <div class="text-date">{{optional($post->postLangsCurrent)->name}}</div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12">
                    {!! optional( $post->postLangsCurrent)->details !!}
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="testimonial-one__single-top">
                        <div class="img-box">
                            <div class="inner">
                                <img src="{{asset($post->image())}}"
                                     alt="">
                            </div>
                            <div class="share-btn">
                                <div class=" icon" onclick="toggleShare()">
                                    <i class="fa fa-share"></i>
                                </div>
                                <ul class="share-items">
                                    <li>
                                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://viralpurplecow.com/blog/what-is-a-purple-cow"
                                           title="Share on Facebook" target="_blank">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.linkedin.com/shareArticle?mini=true&url=https://viralpurplecow.com/blog/what-is-a-purple-cow&title=What%20is%20a%20'Purple%20Cow'?"
                                           title="Share on instagram" target="_blank">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.linkedin.com/shareArticle?mini=true&url=https://viralpurplecow.com/blog/what-is-a-purple-cow&title=What%20is%20a%20'Purple%20Cow'?"
                                           title="Share on X" target="_blank">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"
                                                 xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                                                <path
                                                    d="M17.53 3H21L14.47 10.06L22.24 21H16.47L11.66 14.47L6.24 21H3L10.06 13.47L2 3H7.94L12.47 9.06L17.53 3Z"></path>
                                            </svg>

                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://wa.me/?text=https://viralpurplecow.com/blog/what-is-a-purple-cow"
                                           title="Share on WhatsApp" target="_blank">
                                            <i class="fab fa-whatsapp"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    function toggleShare() {
                        document.querySelector(".share-btn").classList.toggle("open");
                    }

                    function copyAndRedirect() {
                        const url = "https://viralpurplecow.com";
                        navigator.clipboard.writeText(url);
                        window.open(url, "_blank");
                    }
                </script>
            </div>
        </div>
    </section>
    <section class="finance-growth section-space min-h-350">
        <div class="finance-growth__bg jarallax" data-jarallax data-speed="0.3s"
             style="background-image: url('{{asset('site/assets/images/backgrounds/news.jpg')}}');">
            <div class="finance-growth__bg__shape finance-growth__bg__shape--1" style="
                background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-1.png')}}');
                "></div>
            <div class="container">
                <div class="row">
                    <div class="book-appointment__content mt-60 mb-30">
                        <div class="sec-title sec-title--center">
                        <span class="subtitle-two subtitle--double-lines-center aos-init aos-animate" data-aos="fade-up"
                              data-aos-anchor-placement="top-bottom" data-aos-duration="1500">أحدث</span>
                            <h2 data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500"
                                class="text-white mb-5 aos-init aos-animate"> أخبارنا </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="services-page mt--180 mb-60">
        <div class="container">
            <div
                class="services-page__carousel rashed-owl__carousel rashed-owl__carousel--basic-nav owl-carousel owl-theme"
                data-owl-options='{
			"items": 1,
			"margin": 30,
			"loop": false,
			"smartSpeed": 700,
			"nav": false,
			"dots": true,
			"navText": ["<i class=\"icon-arrow-left\"></i>","<i class=\"icon-arrow-right\"></i>"],
			"autoplay": true,
			"responsive": {
				"0": {
					"items": 1,
					"nav": true,
					"dots": false
				},
				"768": {
					"items": 2
				},
				"992": {
					"items": 3
				}
			}
		}'>

                @foreach($news as $key => $val)
                    <div class="item" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300"
                         data-aos-delay="300">
                        <div class="blog-card mb-0">
                            <div class="blog-card__image">
                                <img src="{{asset($val->up1Image())}}" alt="">
                                <a href="{{route('site.news.show' , $val->id)}}" class="blog-card__image__link">
                                    <span class="sr-only"></span>
                                </a>
                            </div>
                            <div class="blog-card__content">
                                <div class="blog-card__admin">
                                    <div class="days en-font">{{ (int)date_create(optional( $val->postLangsCurrent)->txt1)->format('d') }}</div>
                                    <div class="blog-card__admin__info">{{ \Illuminate\Support\Carbon::parse(optional($val->postLangsCurrent)->txt1)->translatedFormat('F') }}</div>
                                </div>
                                <h3 class="blog-card__title">
                                    <a href="{{route('site.news.show' , $val->id)}}"> {{ optional($val->postLangsCurrent)->name}} </a>
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
                    </div><!-- /.item -->
                @endforeach
            </div>
        </div>
    </section>

@endsection
