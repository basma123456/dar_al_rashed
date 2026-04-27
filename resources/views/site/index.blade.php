@extends('site.master')

@section('content')

    <section class="hero-slider">
        <div
            class="hero-slider__carousel rashed-owl__carousel--with-counter rashed-owl__carousel--basic-nav owl-carousel owl-theme"
            data-owl-options='{
        "items": 1,
        "margin": 0,
        "animateIn": "fadeIn",
        "animateOut": "fadeOut",
        "loop": true,
        "autoplay": true,
        "smartSpeed": 700,
        "nav": true,
        "dots": false,
        "navText": ["<i class=\"icon-arrow-left\" aria-hidden=\"true\"></i>",
        "<i class=\"icon-arrow-right\" aria-hidden=\"true\"></i>"]}'>

            <div class="hero-slider__item">
                <div class="hero-slider__bg"
                     style="background-image: url('{{asset('site/assets/images/backgrounds/hero-slider-bg-1-1.jpg')}}');"></div>
                <div class="container">
                    <div class="hero-slider__grid">
                        <div class="hero-slider__image">
                            <div class="hero-slider__image__inner">
                                <div class="hero-slider__image__main">
                                    <img
                                        src="{{asset('site/assets/images/hero-slider/hero-slider-1-2.jpg')}}"
                                        alt=""
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="hero-slider__content">
                            <div class="hero-slider__tagline">
                                <img
                                    src="{{asset('site/assets/images/hero-slider/hero-slider-tagline-1-1.jpg')}}'"
                                    alt=""
                                    class="hero-slider__tagline__image"
                                />
                                <h6 class="hero-slider__tagline__text">
                                    مسرحيه شعائر الإبادة
                                </h6>
                            </div>
                            <h2 class="hero-slider__title">
                                النص الفائز بالمركز الأول في جائزة الشيخ راشد بن
                                حمد الشرقي 2020
                            </h2>
                            <div class="hero-slider__description">
                                <p class="hero-slider__text">
                                    شعائر الإباده رحلة مسرحيه بين تناقضات الحرب
                                    والحياه تكشف صراع الأمل واليأس والخوف والأمان .
                                    عمل إنسانى ينقل أنين المدنيين وأحلامهم ويعرى
                                    أسرار معناهم فى أزمنة الحروب ...
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <img
                    src="{{asset('site/assets/images/shapes/hero-slider-shape-1-1.png')}}"
                    alt="shape"
                    class="hero-slider__shape-1"
                />
                <div class="hero-slider__shape-2"></div>
            </div>

            <div class="hero-slider__item">
                <div
                    class="hero-slider__bg"
                    style="
                        background-image: url('{{asset('site/assets/images/backgrounds/hero-slider-bg-1-1.jpg')}}');
                        "
                ></div>
                <div class="container">
                    <div class="hero-slider__grid">
                        <div class="hero-slider__image">
                            <div class="hero-slider__image__inner">
                                <div class="hero-slider__image__main">
                                    <img src="{{asset('site/assets/images/hero-slider/hero-slider-1-1.jpg')}}" alt=""/>
                                </div>
                            </div>
                        </div>
                        <div class="hero-slider__content">
                            <div class="hero-slider__tagline">
                                <img src="{{asset('site/assets/images/hero-slider/hero-slider-tagline-1-2.jpg')}}"
                                     alt="" class="hero-slider__tagline__image"/>
                                <h6 class="hero-slider__tagline__text"> رواية الملف الأصفر </h6>
                            </div>
                            <h2 class="hero-slider__title"> الرواية الفائزة بالمركز الثاني للكبار بجائزة الشيخ راشد بن
                                حمد الشرقي للإبداع </h2>
                            <div class="hero-slider__description">
                                <p class="hero-slider__text"> ظهورك المفاجئ بعثر هدوئي وأعاد ألم الماضي ارتسم الغضب في
                                    عيوني كاللهب الأحمر وملامحي فضحت صدمتي رغم صمتي .... </p>
                            </div>
                        </div>
                    </div>
                </div>
                <img
                    src="{{asset('site/assets/images/shapes/hero-slider-shape-1-1.png')}}"
                    alt="shape"
                    class="hero-slider__shape-1"
                />
                <div class="hero-slider__shape-2"></div>
            </div>
        </div>
    </section>

    <section class="about-one section-space position-relative">
        <div
            class="about-one__bg"
            style="background-image: url('{{asset('site/assets/images/backgrounds/bg-black-pt.webp')}}');"
        ></div>

        <div class="shape4 float-bob-y">
            <img src="{{asset('site/assets/images/shapes/about-v1-shape2.png')}}" alt=""/>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-4">
                    <div class="about-one__img">
                        <div class="inner">
                            <img
                                src="{{asset('site/assets/images/about/about-v1-img1.jpg')}}"
                                alt=""
                            />
                        </div>
                    </div>
                </div>

                <div class="col-xl-8">
                    <div class="about-two__content">
                        <div class="about__two-right">
                            <div>
                              <span
                                  class="subtitle-two"
                                  data-aos="fade-up"
                                  data-aos-anchor-placement="top-bottom"
                                  data-aos-duration="1500"
                              >من نحن</span
                              >
                                <h1
                                    data-aos="fade-up"
                                    data-aos-anchor-placement="top-bottom"
                                    data-aos-duration="1500"
                                >
                                    دار راشد للنشر
                                </h1>
                            </div>
                            <p
                                class="about-two__text text-justify"
                                data-aos="fade-up"
                                data-aos-anchor-placement="top-bottom"
                                data-aos-duration="1300"
                            >
                                أكد سمو الشيخ الدكتور راشد بن حمد الشرقي رئيس هيئة
                                الفجيرة للثقافة والإعلام، على أهمية اقتصاد المعرفة
                                من خلال تكريس دور الكتاب بوصفه نافذة تعلم الإنسان
                                وصناعة تساهم في التأسيس لنقلة نوعية ومرموقة في
                                قطاع التنمية المعرفية وبناء مجتمع الغد. جاء ذلك
                                خلال افتتاح سموه “دار راشد للنشر” الذي يضم نحو 12
                                الف عنوانا من الكتاب في مجال الثقافة والأدب
                                والمسرح والدراسات النقدية والعديد من كتب التاريخ.
                                وقال سموه: إن الدار هي البذرة التي نبذرها في أرض
                                الفجيرة، وحافزا مهما يساهم في صناعة مشروع ثقافي
                                حضاري حقيقي في الإمارة بفضل توجيهات صاحب السمو
                                الشيخ حمد بن محمد الشرقي عضو المجلس الأعلى حاكم
                                الفجيرة وحرص سموه الدائم على دعم المشهد الثقافي
                                الإماراتي. <br/>
                                وتجول سموه في أروقة الدار واطلع على أبرز الكتب
                                التي تساهم في رفد المكتبة العربية الثقافية ورافق
                                سموه في الافتتاح محمد سعيد الضنحاني مدير الديوان
                                الأميري نائب رئيس هيئة الفجيرة للثقافة والاعلام، و
                                المهندس محمد سيف الأفخم مدير عام بلدية الفجيرة،
                                وفيصل جواد المدير التنفيذي لهيئة الفجيرة للثقافة
                                والإعلام، وعدد من مدراء الدوائر المحلية
                                والاتحادية....
                            </p>
                        </div>

                        <div class="about-two__item d-flex flex-wrap">
                            <div class="about-two__item d-flex flex-wrap">
                                <a
                                    href="#"
                                    title=""
                                    class="services-two__link col-12 col-md-4"
                                >
                                    <div
                                        class="services-two__bottom__content h-100"
                                    >
                                    <span class="services-two__bottom__icon">
                                       <i
                                           class="icon-eye"
                                           aria-hidden="true"
                                       ></i>
                                    </span>
                                        <div class="services-two__bottom__inner">
                                            <h4 class="services-two__bottom__title">
                                                الرؤيه
                                            </h4>
                                            <p class="services-two__bottom__text">
                                                تحديد الطموحات المستقبلية للدار في
                                                عالم النشر والثقافة
                                            </p>
                                        </div>
                                    </div>
                                </a>

                                <a
                                    href="#"
                                    title=""
                                    class="services-two__link col-12 col-md-4"
                                >
                                    <div
                                        class="services-two__bottom__content h-100"
                                    >
                                    <span class="services-two__bottom__icon">
                                       <i
                                           class="icon-bubble-chat"
                                           aria-hidden="true"
                                       ></i>
                                    </span>
                                        <div class="services-two__bottom__inner">
                                            <h4 class="services-two__bottom__title">
                                                الرساله
                                            </h4>
                                            <p class="services-two__bottom__text">
                                                توضيح الدور الذي تؤديه الدار في خدمة
                                                المجتمع والمثقفين
                                            </p>
                                        </div>
                                    </div>
                                </a>

                                <a
                                    href="#"
                                    title="الأهداف"
                                    class="services-two__link col-12 col-md-4"
                                >
                                    <div
                                        class="services-two__bottom__content h-100"
                                    >
                                    <span class="services-two__bottom__icon">
                                       <i
                                           class="icon-planning"
                                           aria-hidden="true"
                                       ></i>
                                    </span>
                                        <div class="services-two__bottom__inner">
                                            <h4 class="services-two__bottom__title">
                                                الأهداف
                                            </h4>
                                            <p class="services-two__bottom__text">
                                                عرض الأهداف الاستراتيجية قصيرة وطويلة
                                                المدى
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="finance-growth section-space">
        <div
            class="finance-growth__bg jarallax"
            data-jarallax
            data-speed="0.3s"
            style="background-image: url('{{asset('site/assets/images/backgrounds/services.jpg')}}');"
        >
            <div
                class="finance-growth__bg__shape finance-growth__bg__shape--1"
                style="background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-1.png')}}');"
            ></div>
            <div
                class="finance-growth__bg__shape finance-growth__bg__shape--2"
                style="background-image: url('{{asset('site/assets/images/shapes/finance-growth-shape-2.png')}}');"
            ></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="book-appointment__content mb-30">
                    <div class="sec-title sec-title--center">
                        <span
                            class="subtitle-two subtitle--double-lines-center"
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                        >ماذا نفعل</span
                        >
                        <h2
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                            class="text-white mb-5"
                        >
                            خدماتنا
                        </h2>
                    </div>

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
            "autoplay": true,
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
                        <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="300"
                        >
                            <div class="features-one__card">
                                <div class="features-one__card__icon-box">
                                 <span class="features-one__card__icon">
                                    <i
                                        class="fas fa-id-card"
                                        aria-hidden="true"
                                    ></i>
                                 </span>
                                </div>
                                <div class="features-one__card__content">
                                    <h4 class="features-one__card__title">
                                        <a href="" title="">العضويات</a>
                                    </h4>
                                    <p class="features-one__card__text">
                                        برامج عضوية متنوعة بمزايا حصرية للأعضاء
                                    </p>
                                </div>
                                <div
                                    class="features-one__card__border features-one__card__border--2"
                                ></div>
                            </div>
                        </div>
                        <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="300"
                        >
                            <div class="features-one__card">
                                <div class="features-one__card__icon-box">
                                 <span class="features-one__card__icon">
                                    <i
                                        class="fas fa-exchange-alt"
                                        aria-hidden="true"
                                    ></i>
                                 </span>
                                </div>
                                <div class="features-one__card__content">
                                    <h4 class="features-one__card__title">
                                        <a href="" title="">الاستعارة</a>
                                    </h4>
                                    <p class="features-one__card__text">
                                        نظام إلكتروني لاستعارة الكتب وإدارة المواعيد
                                    </p>
                                </div>
                                <div
                                    class="features-one__card__border features-one__card__border--2"
                                ></div>
                            </div>
                        </div>

                        <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="200"
                        >
                            <div class="features-one__card">
                                <div class="features-one__card__icon-box">
                                 <span class="features-one__card__icon">
                                    <i
                                        class="icon-calendar"
                                        aria-hidden="true"
                                    ></i>
                                 </span>
                                </div>
                                <div class="features-one__card__content">
                                    <h4 class="features-one__card__title">
                                        <a href="" title="" title="">الفاعليات</a>
                                    </h4>
                                    <p class="features-one__card__text">
                                        استعراض الفعاليات المتاحة للحجز و تأكيد
                                        الحجز عبر البريد الإلكتروني
                                    </p>
                                </div>
                                <div
                                    class="features-one__card__border features-one__card__border--2"
                                ></div>
                            </div>
                        </div>

                        <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="300"
                        >
                            <div class="features-one__card">
                                <div class="features-one__card__icon-box">
                                 <span class="features-one__card__icon">
                                    <i
                                        class="fas fa-pencil-alt"
                                        aria-hidden="true"
                                    ></i>
                                 </span>
                                </div>
                                <div class="features-one__card__content">
                                    <h4 class="features-one__card__title">
                                        <a href="" title="" title="">طلب نشر كتاب</a>
                                    </h4>
                                    <p class="features-one__card__text">
                                        نموذج إلكتروني للمؤلفين لتقديم مخطوطاتهم
                                    </p>
                                </div>
                                <div
                                    class="features-one__card__border features-one__card__border--2"
                                ></div>
                            </div>
                        </div>

                        <div
                            class="item"
                            data-aos="fade-down"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1300"
                            data-aos-delay="300"
                        >
                            <div class="features-one__card">
                                <div class="features-one__card__icon-box">
                                 <span class="features-one__card__icon">
                                    <i
                                        class="fa fa-book"
                                        aria-hidden="true"
                                    ></i>
                                 </span>
                                </div>
                                <div class="features-one__card__content">
                                    <h4 class="features-one__card__title">
                                        <a href="" title="" title="">بيع الكتب</a>
                                    </h4>
                                    <p class="features-one__card__text">
                                        متجر إلكتروني متكامل للإصدارات
                                    </p>
                                </div>
                                <div
                                    class="features-one__card__border features-one__card__border--2"
                                ></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="working-process section-space postion-relative"
             style="background-image:url('{{asset('site/assets/images/shapes/bg-light.webp')}}')">
        <div class="container">
            <div class="sec-title sec-title--center">
                  <span
                      class="subtitle-two subtitle--double-lines-center aos-init aos-animate"
                      data-aos="fade-up"
                      data-aos-anchor-placement="top-bottom"
                      data-aos-duration="1500"
                  >أحدث</span
                  >
                <h2
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1500"
                    class="mb-5 aos-init aos-animate"
                >
                    الفاعليات
                </h2>
            </div>
            <div class="working-process__inner">
                <div
                    class="working-process__carousel rashed-owl__carousel rashed-owl__carousel--basic-nav owl-carousel owl-theme"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-owl-options='{
                "items": 1,
                "margin": 30,
                "loop": false,
                "smartSpeed": 700,
                "nav": false,
                "dots": true,
                "navText": ["<i class=\"icon-arrow-left\" aria-hidden=\"true\"></i>",
  "<i class=\"icon-arrow-right\" aria-hidden=\"true\"></i>"],
                "autoplay": true,
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
                    <div
                        class="item"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="100"
                    >
                        <div class="working-process__card">
                            <div class="working-process__card__image">
                                <img
                                    src="{{asset('site/assets/images/resources/working-process-1-1.jpg')}}"
                                    alt=""
                                />
                                <div class="working-process__card__overlay">
                                    <a
                                        href=""
                                        class="working-process__card__btn"
                                        aria-label="اقرأ المزيد عن الفاعليه"
                                        title="اقرأ المزيد"
                                    ><i class="icon-right"></i
                                        ></a>
                                </div>
                            </div>
                            <div class="working-process__card__content">
                              <span class="working-process__card__step"
                              >31-1-2026</span
                              >
                                <h3 class="working-process__card__title">
                                    <a href="" title="" title="">
                                        دار راشد للنشر تهدي إصداراتها خلال معرض
                                        أبوظبي الدولي للكتاب
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div
                        class="item"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="200"
                    >
                        <div
                            class="working-process__card working-process__card--two"
                        >
                            <div class="working-process__card__image">
                                <img
                                    src="{{asset('site/assets/images/resources/working-process-1-2.jpg')}}"
                                    alt=""
                                />
                                <div class="working-process__card__overlay">
                                    <a
                                        href=""
                                        class="working-process__card__btn"
                                        aria-label="اقرأ المزيد عن الفاعليه"
                                        title="اقرأ المزيد"
                                    ><i class="icon-right"></i
                                        ></a>
                                </div>
                            </div>
                            <div class="working-process__card__content">
                              <span class="working-process__card__step"
                              >31-1-2026</span
                              >
                                <h3 class="working-process__card__title">
                                    <a href="" title="" title=""
                                    >دار راشد للنشر تنظم فعالية قرائية للأطفال
                                        ضمن مشاركتها في معرض القاهرة الدولي
                                        للكتاب</a
                                    >
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div
                        class="item"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="300"
                    >
                        <div class="working-process__card">
                            <div class="working-process__card__image">
                                <img
                                    src="{{asset('site/assets/images/resources/working-process-1-3.jpg')}}"
                                    alt=""
                                />
                                <div class="working-process__card__overlay">
                                    <a
                                        href=""
                                        class="working-process__card__btn"
                                        aria-label="اقرأ المزيد عن الفاعليه"
                                        title="اقرأ المزيد"
                                    ><i class="icon-right"></i
                                        ></a>
                                </div>
                            </div>
                            <div class="working-process__card__content">
                              <span class="working-process__card__step"
                              >31-1-2026</span
                              >
                                <h3 class="working-process__card__title">
                                    <a href="" title="" title=""
                                    >إنطلاق فعاليات معرض حديث الذاكرة في دار
                                        راشد للنشر
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div
                        class="item"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="400"
                    >
                        <div
                            class="working-process__card working-process__card--two"
                        >
                            <div class="working-process__card__image">
                                <img
                                    src="{{asset('site/assets/images/resources/working-process-1-4.jpg')}}"
                                    alt=""
                                />
                                <div class="working-process__card__overlay">
                                    <a
                                        href=""
                                        class="working-process__card__btn"
                                        aria-label="اقرأ المزيد عن الفاعليه"
                                        title="اقرأ المزيد"
                                    ><i class="icon-right"></i
                                        ></a>
                                </div>
                            </div>
                            <div class="working-process__card__content">
                              <span class="working-process__card__step"
                              >31-1-2026</span
                              >
                                <h3 class="working-process__card__title">
                                    <a href="" title="" title=""
                                    >دار راشد للنشر تنظم ورشة أدبية بعنوان
                                        "الكتابة الإبداعية" لمنتسبي دورة أصدقاء
                                        الدفاع المدني بالفجيرة
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a href="" title=" تعرف على المزيد من فاعلياتنا ">
                <div
                    class="finance-growth__bottom__text"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-aos-delay="500"
                >
                    <span class="finance-growth__bottom__icon"></span>

                    مزيد من الفاعليات

                </div>
            </a>
        </div>
    </section>
    <section class="services-two section-space rs-portfolio-one">
        <img
            src="{{asset('site/assets/images/shapes/arrow-left.png')}}"
            alt="shape"
            class="contact-one__bg__shape"
        />
        <div class="container">
            <div class="services-two__top">
                <div class="row gutter-y-40 align-items-lg-end">
                    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
                        <span
                            class="subtitle-two aos-init aos-animate"
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                        >أحدث</span
                        >
                        <h3
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                            class="aos-init aos-animate"
                        >
                            أخبار دار راشد للنشر
                        </h3>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                        <div class="custom-nav"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="services-two__container">
            <div
                class="services-two__carousel rashed-owl__carousel rashed-owl__carousel--basic-nav owl-carousel owl-theme"
                data-owl-options='{
            "items": 1,
            "margin": 30,
            "loop": false,
            "autoplay": true,
            "smartSpeed": 600,
            "nav": true,
            "dots": false,
            "navContainer": ".custom-nav",
"navText": ["<i class=\"icon-arrow-left\" aria-hidden=\"true\"></i>",
  "<i class=\"icon-arrow-right\" aria-hidden=\"true\"></i>"],
  "responsive": {
                "0": {
                    "items": 1
                },
                "768": {
                    "items": 2
                },
                "992": {
                    "items": 3
                },
                "1200": {
                    "items": 3
                },
                "1400": {
                    "items": 4
                },
                "1600": {
                    "items": 4
                }
            }
        }'
            >
                <div
                    class="item"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-aos-delay="100"
                >
                    <div class="rs-portfolio-item">
                        <div class="rs-portfolio-thumb">
                            <img src="{{asset('site/assets/images/resources/6.jpg')}}" alt=""/>
                        </div>
                        <div class="rs-portfolio-content">
                            <div class="rs-portfolio-tag">
                                <a href="" title="" title="">31-1-2026</a>
                            </div>
                            <h4 class="rs-portfolio-title underline has-white">
                                <a href="" title="" title=""
                                >نظمت دار راشد للنشر صباح اليوم في مقرها، جلسة
                                    قراءة قصصية للأطفال
                                </a>
                            </h4>
                            <div class="rs-portfolio-btn">
                                <a
                                    href="portfolio-details.html"
                                    class="rs-btn has-theme-orange has-circle has-icon"
                                >
                                 <span class="icon-box">
                                    <svg
                                        class="icon-first"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                    <svg
                                        class="icon-second"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                 </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="item"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-aos-delay="100"
                >
                    <div class="rs-portfolio-item">
                        <div class="rs-portfolio-thumb">
                            <img src="{{asset('site/assets/images/resources/3.jpg')}}" alt=""/>
                        </div>
                        <div class="rs-portfolio-content">
                            <div class="rs-portfolio-tag">
                                <a href="" title="" title="">31-1-2026</a>
                            </div>
                            <h4 class="rs-portfolio-title underline has-white">
                                <a href="" title="" title=""
                                >"محمد الشرقي يكرم دار راشد للنشر في ختام
                                    برنامج "أصدقاء الدفاع المدني
                                </a>
                            </h4>
                            <div class="rs-portfolio-btn">
                                <a
                                    href="portfolio-details.html"
                                    class="rs-btn has-theme-orange has-circle has-icon"
                                >
                                 <span class="icon-box">
                                    <svg
                                        class="icon-first"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                    <svg
                                        class="icon-second"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                 </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="item"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-aos-delay="100"
                >
                    <div class="rs-portfolio-item">
                        <div class="rs-portfolio-thumb">
                            <img src="{{asset('site/assets/images/resources/4.jpg')}}" alt=""/>
                        </div>
                        <div class="rs-portfolio-content">
                            <div class="rs-portfolio-tag">
                                <a href="" title="" title="">31-1-2026</a>
                            </div>
                            <h4 class="rs-portfolio-title underline has-white">
                                <a href="" title="" title=""
                                >روضة الشرق تحتفي باليوم الإماراتي للتعلم
                                    بزيارة ثقافية لدار راشد للنشر
                                </a>
                            </h4>
                            <div class="rs-portfolio-btn">
                                <a
                                    href="portfolio-details.html"
                                    class="rs-btn has-theme-orange has-circle has-icon"
                                >
                                 <span class="icon-box">
                                    <svg
                                        class="icon-first"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                    <svg
                                        class="icon-second"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                 </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="item"
                    data-aos="fade-up"
                    data-aos-anchor-placement="top-bottom"
                    data-aos-duration="1300"
                    data-aos-delay="100"
                >
                    <div class="rs-portfolio-item">
                        <div class="rs-portfolio-thumb">
                            <img src="{{asset('site/assets/images/resources/5.jpg')}}" alt=""/>
                        </div>
                        <div class="rs-portfolio-content">
                            <div class="rs-portfolio-tag">
                                <a href="" title="" title="">31-1-2026</a>
                            </div>
                            <h4 class="rs-portfolio-title underline has-white">
                                <a href="" title=""
                                >الفجيرة للثقافة والإعلام تنظم محاضرة حول "
                                    الوقاية من الحرائق في مكان العمل
                                </a>
                            </h4>
                            <div class="rs-portfolio-btn">
                                <a
                                    href="portfolio-details.html"
                                    class="rs-btn has-theme-orange has-circle has-icon"
                                >
                                 <span class="icon-box">
                                    <svg
                                        class="icon-first"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                    <svg
                                        class="icon-second"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 32 32"
                                    >
                                       <path
                                           d="M31.71,15.29l-10-10L20.29,6.71,28.59,15H0v2H28.59l-8.29,8.29,1.41,1.41,10-10A1,1,0,0,0,31.71,15.29Z"
                                       ></path>
                                    </svg>
                                 </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="services-two__bottom">
                <div class="row gutter-y-30 align-items-center">
                    <div
                        class="col-xl-8 col-lg-8 col-md-8 col-sm-6 col-6"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="100"
                    >
                        <div class="services-two__bottom__content">
                            <div class="services-two__bottom__inner">
                                <h4 class="services-two__bottom__title">
                                    المزيد من الأخبار
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-6"
                        data-aos="fade-up"
                        data-aos-anchor-placement="top-bottom"
                        data-aos-duration="1300"
                        data-aos-delay="200"
                    >
                        <div class="services-two__bottom__button">
                            <a href="" title="" class="rashed-btn rashed-btn--white">
                                <span class="rashed-btn__text">أضغط هنا</span>
                                <span class="rashed-btn__icon-box"
                                ><span class="rashed-btn__icon"
                                    ><i class="icon-arrow-right-up"></i
                                        ><i class="icon-arrow-right-up"></i></span
                                    ></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="faq-one section-space news-one position-relative">
        <div class="container">
            <div class="sec-title">
                <div
                    class="d-flex justify-content-between align-items-center flex-wrap"
                >
                    <div class="left-box">
                        <span
                            class="subtitle-two aos-init aos-animate"
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                        >أحدث</span
                        >
                        <h4
                            data-aos="fade-up"
                            data-aos-anchor-placement="top-bottom"
                            data-aos-duration="1500"
                            class="aos-init aos-animate"
                        >
                            إصدارات دار راشد للنشر
                        </h4>
                    </div>
                    <div class="news-one_button">
                        <a href="" title="" class="rashed-btn" title="">
                            <span class="rashed-btn__text">المزيد</span>
                            <span class="rashed-btn__icon-box">
                              <span class="rashed-btn__icon"
                              ><i
                                      class="icon-arrow-right-up"
                                      aria-hidden="true"
                                  ></i
                                  ><i
                                      class="icon-arrow-right-up"
                                      aria-hidden="true"
                                  ></i></span
                              ></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="news-block_one col-lg-4 col-md-12 col-sm-12">
                    <div class="news-block_one-inner">
                        <div class="news-block_one-image_outer">
                            <div class="news-block_one-date">30 يناير 2026</div>
                            <div class="news-block_one-image">
                                <a href="" title="" title=""
                                ><img
                                        src="{{asset('site/assets/images/resources/480889302_937807391863788_3218459521584195044_n.jpg')}}"
                                        alt=""
                                    /></a>
                                <img
                                    src="{{asset('site/assets/images/resources/480889302_937807391863788_3218459521584195044_n.jpg')}}"
                                    alt=""
                                />
                            </div>
                        </div>
                        <div class="news-block_one-content">
                            <ul class="news-block_one-meta">
                                <li>
                                 <span
                                     class="icon fas fa-feather-alt fa-fw"
                                     aria-hidden="true"
                                 ></span>
                                    محمد اسماعيل اللباني
                                </li>
                            </ul>
                            <h4 class="news-block_one-title">
                                <a href="" title="" title=""> هوية التحديث </a>
                            </h4>
                            <div class="news-block_one-button">
                                <a
                                    class="news-block_one-more"
                                    href=""
                                    title="أقرأ لمحة عن الكتاب"
                                >
                                    أقرأ المزيد
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="news-block_one col-lg-4 col-md-12 col-sm-12">
                    <div class="news-block_one-inner">
                        <div class="news-block_one-image_outer">
                            <div class="news-block_one-date">30 يناير 2026</div>
                            <div class="news-block_one-image">
                                <a href="" title="" title=""
                                ><img
                                        src="{{asset('site/assets/images/resources/2.jpg')}}"
                                        alt=""
                                    /></a>
                                <img src="{{asset('site/assets/images/resources/2.jpg')}}" alt=""/>
                            </div>
                        </div>
                        <div class="news-block_one-content">
                            <ul class="news-block_one-meta">
                                <li>
                                 <span
                                     class="icon fas fa-feather-alt fa-fw"
                                     aria-hidden="true"
                                 ></span
                                 >مصطفى سعيدي - محمود صلاح رفاعي - محمود عقاب -
                                    الشيماء رجب أحمد
                                </li>
                            </ul>
                            <h4 class="news-block_one-title">
                                <a href="" title="" title=""> سامح ومدينة الأساطير </a>
                            </h4>
                            <div class="news-block_one-button">
                                <a
                                    class="news-block_one-more"
                                    href=""
                                    title="أقرأ لمحة عن الكتاب"
                                >
                                    أقرأ المزيد
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="news-block_one col-lg-4 col-md-12 col-sm-12">
                    <div class="news-block_one-inner">
                        <div class="news-block_one-image_outer">
                            <div class="news-block_one-date">30 يناير 2026</div>
                            <div class="news-block_one-image">
                                <a href="" title="" title=""
                                ><img
                                        src="{{asset('site/assets/images/resources/1.jpg')}}"
                                        alt=""
                                    /></a>
                                <img src="{{asset('site/assets/images/resources/1.jpg')}}" alt=""/>
                            </div>
                        </div>
                        <div class="news-block_one-content">
                            <ul class="news-block_one-meta">
                                <li>
                                 <span
                                     class="icon fas fa-feather-alt fa-fw"
                                     aria-hidden="true"
                                 ></span>
                                    شيماء المرزوقى
                                </li>
                            </ul>
                            <h4 class="news-block_one-title">
                                <a href="" title="" title=""> رواية إياز </a>
                            </h4>
                            <div class="news-block_one-button">
                                <a
                                    class="news-block_one-more"
                                    href=""
                                    title="أقرأ لمحة عن الكتاب"
                                >
                                    أقرأ المزيد
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
