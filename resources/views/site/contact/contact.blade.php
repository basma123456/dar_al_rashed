@extends('site.master')
@section('content')
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/backgrounds/contact-bread.webp);"></div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-10 col-xl-9 page-header__col">
                    <div class="page-header__content">
                        <h1 class="page-header__title aos-init" data-aos="fade-left"
                            data-aos-anchor-placement="top-bottom" data-aos-duration="1300">اتصل بنا</h1>
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
    <section class="contact-one contact-one--page section-space">
        <img src="assets/images/shapes/arrow-left.png" alt="shape" class="contact-one__bg__shape">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="contact-one__content">
                        <ul class="contact-one__info list-unstyled">
                            <li data-aos="fade-right" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                                <div class="contact-one__info__inner">
                         <span class="contact-one__info__icon">
                           <i class="icon-phone-call"></i>
                         </span>
                                    <div class="contact-one__info__content">
                                        <h4 class="contact-one__info__title">تواصل الآن</h4>
                                        <a href="tel:+97192014485" class="contact-one__info__text dir-ltr en-font">97192014485</a>
                                    </div>
                                </div>
                            </li>
                            <li data-aos="fade-left" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                                <div class="contact-one__info__inner">
                         <span class="contact-one__info__icon">
                           <i class="icon-mail"></i>
                         </span>
                                    <div class="contact-one__info__content">
                                        <h4 class="contact-one__info__title">أرسل لنا بريدًا إلكترونيًا</h4>
                                        <a href="mailto:info@domainname.com" title="راسل دار راشد للنشر"
                                           class="contact-one__info__text en-font">info@domaimname.com</a>
                                    </div>
                                </div>
                            </li>
                            <li data-aos="fade-right" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                                <div class="contact-one__info__inner">
                         <span class="contact-one__info__icon">
                           <i class="icon-round-arrow"></i>
                         </span>
                                    <div class="contact-one__info__content">
                                        <h4 class="contact-one__info__title">العنوان</h4>
                                        <a href="" class="contact-one__info__text">برج الفجيرة - طريق الشيخ حمد بن
                                            عبدالله الشرقي الطابق الأول</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                     data-aos-duration="1300">
                    <div class="contact-one__form">
                        <form action="" class="contact-form-validated form-one">
                            <div class="form-one__group">
                                <div class="form-one__control form-one__control--full">
                                    <input type="text" name="name" placeholder="الأسم بالكامل *">
                                    <i class="icon-user" aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control">
                                    <input type="tel" name="phone" placeholder="رقم الجوال *">
                                    <i class="icon-phone-call" aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control">
                                    <input type="email" name="email" placeholder="البريد الإلكترونى *">
                                    <i class="icon-mail" aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control">
                                    <input type="text" name="subject" placeholder="الموضوع *">
                                    <i class="fa fa-edit " aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control ">
                                    <select class="selectpicker" aria-label="" data-container="body"
                                            data-dropup-auto="false">
                                        <option selected>الغرض من الرساله</option>
                                        <option value="1">شكوى</option>
                                        <option value="2">إقتراح</option>
                                        <option value="3">استعلام عن خدمه</option>
                                    </select>
                                    <i class="icon-support" aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control form-one__control--full">
                                    <textarea id="message" name="message" cols="30" rows="5" class="  h-100"
                                              placeholder="اكتب رسائلك هنا .... "></textarea>
                                    <i class="fa fa-pen" aria-hidden="true"></i>
                                </div>
                                <div class="form-one__control form-one__control--full">
                                    <button type="submit" class="rashed-btn w-100">
                                        <span class="rashed-btn__text w-100">إرسال</span>
                                        <span class="rashed-btn__icon-box">
                             <span class="rashed-btn__icon">
                               <i class="icon-arrow-right-up" aria-hidden="true"></i>
                               <i class="icon-arrow-right-up" aria-hidden="true"></i>
                             </span>
                           </span>
                                    </button>
                                </div>
                                <div class="alert alert-success form-one__control form-one__control--full fade show"
                                     role="alert" style="display: none">تم إرسال الرساله بنجاح
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12" data-aos="fade-up" data-aos-anchor-placement="top-bottom"
                     data-aos-duration="1300">
                    <div class="contact-one__form">
                        <iframe style="border: 0;"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3612.4329695086485!2d56.33136747595835!3d25.121048934779765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ef4f88b3af38421%3A0xf55d64eac9cc136e!2sFujairah%20Culture%20%26%20Media%20Authority!5e0!3m2!1sen!2seg!4v1756740857507!5m2!1sen!2seg"
                                width="600" height="365" allowfullscreen="allowfullscreen" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
