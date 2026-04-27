@extends('site.master')

@section('content')
    <section class="page-header">
        <div class="page-header__bg"
             style="background-image: url('{{asset('site/assets/images/backgrounds/about-bread.webp')}}');"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300">{{$post->postLangsCurrent->name}}</h1>
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

    <section class="about-one section-space">
        <div class="container">
            <div class="row gutter-y-50">
                @if($post->pic)
                    <div class="col-lg-4" data-aos="fade-right" data-aos-anchor-placement="top-bottom"
                         data-aos-duration="1300">
                        <div class="about-one__image">
                            <div class="about-one__image__one">
                                <img src="{{$post->image()}}"
                                     alt="" class="about-one__image__one__img">
                                <img src="{{asset('site/assets/images/shapes/about-shape-1-1.png')}}"
                                     alt="{{$post->postLangsCurrent->name}}"
                                     class="about-one__image__shape-1">
                            </div>
                            <div class="about-one__experience">
                                <h3 class="about-one__experience__year">2021</h3>
                                <h4 class="about-one__experience__title">سنة التأسيس</h4>
                            </div>
                            <img src="{{asset('site/assets/images/shapes/about-shape-1-1.png')}}" alt="{{$post->postLangsCurrent->name}}"
                                 class="about-one__image__shape-2">
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <div class="about-one__content">
                            <div>
                                <h2 class="subtitle-two aos-init aos-animate" data-aos="fade-up"
                                    data-aos-anchor-placement="top-bottom"
                                    data-aos-duration="1500">{!! $post->postLangsCurrent->short !!}</h2>
                            </div>
                            <p class="about-one__text" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                               data-aos-duration="1300">{!! $post->postLangsCurrent->details !!}</p>
                        </div>
                    </div>
                @else

                    <div class="col-lg-12">
                        <div class="about-one__content">
                                 <div>
                                    <h2 class="subtitle-two aos-init aos-animate" data-aos="fade-up"
                                        data-aos-anchor-placement="top-bottom"
                                        data-aos-duration="1500">{!! $post->postLangsCurrent->short !!}</h2>
                                </div>
                             <p class="text-justify" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                               data-aos-duration="1300">

                                {!! $post->postLangsCurrent->details !!}</p>
                        </div>
                    </div>

                @endif

            </div>
        </div>
    </section>
@endsection
