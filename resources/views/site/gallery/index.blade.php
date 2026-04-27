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
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">أبوم الصور</h1>
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
    <section class="about-one mt-60"
             style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="row">
                @forelse($galleries as $gallery)
                    <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                         data-aos-duration="1300">
                        <div class="project-card-two">
                            <div class="project-card-two__image">
                                <img src="{{asset($gallery->image())}}" alt="">
                                <a href="{{asset($gallery->image())}}" class="img-popup">
                                    <i class="icon-zoom-in" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div class="project-card-two__content">
                     <span class="project-card-two__icon">
                       <i class="fa fa-images" aria-hidden="true"></i>
                     </span>
                                <div class="project-card-two__inner">
                                    <h3 class="project-card-two__title">
                                        <a href="{{route('site.gallery.show' , $gallery->id)}}">{{$gallery->$name}}</a>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                @empty

                @endforelse
            </div>
        </div>
    </section>
    <section class="mb-60 ">
        <div class="container">
            <div class="black-inside-invers aos-init aos-animate" data-aos="fade-up"
                 data-aos-anchor-placement="top-bottom" data-aos-duration="1300" data-aos-delay="100">
                <div class="row">
                    <div class="col-12">
                        <div class="post-pagination">
                            <a href="#" class="post-pagination__icon left">
                                <i class="icon-arrow-left"></i>
                            </a>
                            <div class="post-pagination__numbers">
                                <a href="#" class="post-pagination__btn active">01</a>
                                <a href="#" class="post-pagination__btn">02</a>
                                <a href="#" class="post-pagination__btn">03</a>
                            </div>
                            <a href="#" class="post-pagination__icon right">
                                <i class="icon-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    {{--    <script src="assets/vendors/imagesloaded/imagesloaded.min.js"></script>--}}
    {{--    <script src="assets/vendors/isotope/isotope.js"></script>--}}
    {{--    <script src="assets/vendors/slick/slick.min.js"></script>--}}
@endsection
