<div class="custom-cursor__cursor"></div>
<div class="custom-cursor__cursor-two"></div>
<div class="preloader">
    <div class="preloader__image" style="background-image: url('{{asset('site/assets/images/loader.png')}}')"></div>
</div>
<div class="page-wrapper">
    <header class="main-header main-header--two sticky-header sticky-header--normal">
        <div class="container">
            <div class="topbar">
                <div class="container">
                    <div class="topbar__inner">
                        <ul class="topbar__info list-unstyled">
                            <li>
                     <span class="topbar__info__icon">
                       <i class="icon-email" aria-hidden="true"></i>
                     </span>
                                <span>
                       <a href="{{asset('site/mailto:info@domainname.com')}}">info@domainname.com</a>
                     </span>
                            </li>
                            <li>
                     <span class="topbar__info__icon">
                       <i class="icon-phone-call" aria-hidden="true"></i>
                     </span>
                                <span>
                       <a href="{{asset('site/tel:++97192014485')}}">+97192014485</a>
                     </span>
                            </li>
                        </ul>
                        <div class="topbar__right">
                            <div class="social-links">
                                <a href="{{asset('site/https://facebook.com/')}}" rel="noopener noreferrer" aria-label="Follow us on Facebook" title="Follow us on Facebook" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-facebook-f" aria-hidden="true"></i>
                   <span class="sr-only">Facebook</span>
                 </span>
                                </a>
                                <a href="{{asset('site/https://x.com/')}}" target="_blank" rel="noopener noreferrer" aria-label="Follow us on X (Twitter)" title="Follow us on X" target="_blank">
           <span class="social-links__icon">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
            <path d="M17.53 3H21L14.47 10.06L22.24 21H16.47L11.66 14.47L6.24 21H3L10.06 13.47L2 3H7.94L12.47 9.06L17.53 3Z"></path>
        </svg>
        <span class="sr-only">Follow us on X</span>
    </span>
                                </a>
                                <a href=""  title=""   rel="noopener noreferrer" aria-label="Follow us on whatsapp" title="Follow us on whatsapp" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-whatsapp" aria-hidden="true"></i>
                   <span class="sr-only">واتس اب</span>
                 </span>
                                </a>
                                <a href=""  title=""  rel="noopener noreferrer" aria-label="Follow us on Instagram" title="Follow us on Instagram" target="_blank">
                 <span class="social-links__icon">
                   <i class="fab fa-instagram" aria-hidden="true"></i>
                   <span class="sr-only">Instagram</span>
                 </span>
                                </a>
                                <a href=""  title=""  class="lang-icon" target="_self" title="English">
                       <span class="social-links__icon"> EN <span class="sr-only">English</span>
                       </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-header__inner">
                <div class="main-header__logo logo-retina">
                    <a href="{{asset('site/index.blade.php')}}" title="">
                        <img src="{{asset('site/assets/images/logo-light.png')}}" class="logo-default" alt="" width="120" />
                        <img src="{{asset('site/assets/images/logo-dark.png')}}" class="logo-sticky" alt="" width="80" />
                    </a>
                </div>
                <div class="main-header__right">
                    <nav class="main-header__nav main-menu">
                        <ul class="main-menu__list">
                            <li>
                                <a href="{{asset('site//')}}" title="الذهاب إلى الصفحة الرئيسية">الرئيسية</a>
                            </li>

                            <li class="dropdown">
                                <a href="{{asset('site//about')}}"
                                   title="تعرف علينا"
                                   aria-haspopup="true"
                                   aria-expanded="false">
                                    من نحن
                                </a>
                                <ul>
                                    <li>
                                        <a href="{{asset('site//about')}}" title="من نحن">من نحن</a>
                                    </li>
                                    <li>
                                        <a href="{{asset('site//vision')}}" title="رؤية المؤسسة">الرؤية</a>
                                    </li>
                                    <li>
                                        <a href="{{asset('site//mission')}}" title="رسالة المؤسسة">الرسالة</a>
                                    </li>
                                    <li>
                                        <a href="{{asset('site//goals')}}" title="أهداف المؤسسة">الأهداف</a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="{{asset('site//services')}}" title="خدماتنا">خدماتنا</a>
                            </li>

                            <li>
                                <a href="{{asset('site//publications')}}" title="الإصدارات">الإصدارات</a>
                            </li>

                            <li>
                                <a href="{{asset('site//news')}}" title="آخر الأخبار">الأخبار</a>
                            </li>

                            <li>
                                <a href="{{asset('site//gallery')}}" title="معرض الصور">معرض الصور</a>
                            </li>

                            <li>
                                <a href="{{asset('site//events')}}" title="الفعاليات">الفعاليات</a>
                            </li>

                            <li>
                                <a href="{{asset('site//contact')}}" title="اتصل بنا">اتصل بنا</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="mobile-nav__btn mobile-nav__toggler">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <a href="{{asset('site/#')}}" class="main-header__search search-toggler" title="بحث">
                        <i class="icon-search" aria-hidden="true"></i>
                        <span class="sr-only">بحث</span>
                    </a>
                    <div class="main-header__call">
                 <span class="main-header__call__icon">
                   <i class="icon-user" aria-hidden="true"></i>
                 </span>
                        <div class="main-header__call__content">
                            <h4 class="main-header__call__title"> تسجيل المتعاملين </h4>
                            <a href=""  title=""  title="تسجيل المتعاملين" class="main-header__call__number">أضغط هنا</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

