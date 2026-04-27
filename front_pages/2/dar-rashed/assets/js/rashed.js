(function ($) {
  "use strict";

  
  //Fact Counter + Text Count

    
    
    
    
    const counters = document.querySelectorAll('.counter');
const speed = 200; // The lower the slower

counters.forEach(counter => {
	const updateCount = () => {
		const target = +counter.getAttribute('data-target');
		const count = +counter.innerText;

		// Lower inc to slow and higher to slow
		const inc = target / speed;

		// console.log(inc);
		// console.log(count);

		// Check if target is reached
		if (count < target) {
			// Add inc to count and output in counter
			counter.innerText = count + inc;
			// Call function every ms
			setTimeout(updateCount, 1);
		} else {
			// counter.innerText = target;
		}
	};

	updateCount();
});

    
    
    
    
    
    
    
    
    

  // custom coursor
  if ($(".custom-cursor").length) {
    var cursor = document.querySelector(".custom-cursor__cursor");
    var cursorinner = document.querySelector(".custom-cursor__cursor-two");
    var a = document.querySelectorAll("a");

    document.addEventListener("mousemove", function (e) {
      var x = e.clientX;
      var y = e.clientY;
      cursor.style.transform = `translate3d(calc(${e.clientX}px - 50%), calc(${e.clientY}px - 50%), 0)`;
    });

    document.addEventListener("mousemove", function (e) {
      var x = e.clientX;
      var y = e.clientY;
      cursorinner.style.left = x + "px";
      cursorinner.style.top = y + "px";
    });

    document.addEventListener("mousedown", function () {
      cursor.classList.add("click");
      cursorinner.classList.add("custom-cursor__innerhover");
    });

    document.addEventListener("mouseup", function () {
      cursor.classList.remove("click");
      cursorinner.classList.remove("custom-cursor__innerhover");
    });

    a.forEach((item) => {
      item.addEventListener("mouseover", () => {
        cursor.classList.add("custom-cursor__hover");
      });
      item.addEventListener("mouseleave", () => {
        cursor.classList.remove("custom-cursor__hover");
      });
    });
  }

  if ($(".contact-form-validated").length) {
    $(".contact-form-validated").validate({
      // initialize the plugin
      rules: {
        name: {
          required: true,
        },
        email: {
          required: true,
          email: true,
        },
        message: {
          required: true,
        },
        subject: {
          required: true,
        },
      },
      submitHandler: function (form) {
        // sending value with ajax request
        $.post(
          $(form).attr("action"),
          $(form).serialize(),
          function (response) {
            $(form).parent().find(".result").append(response);
            $(form).find('input[type="text"]').val("");
            $(form).find('input[type="email"]').val("");
            $(form).find("textarea").val("");
          }
        );
        return false;
      },
    });
  }

  // mailchimp form
  if ($(".mc-form").length) {
    $(".mc-form").each(function () {
      var Self = $(this);
      var mcURL = Self.data("url");
      var mcResp = Self.parent().find(".mc-form__response");

      Self.ajaxChimp({
        url: mcURL,
        callback: function (resp) {
          // appending response
          mcResp.append(function () {
            return '<p class="mc-message">' + resp.msg + "</p>";
          });
          // making things based on response
          if (resp.result === "success") {
            // Do stuff
            Self.removeClass("errored").addClass("successed");
            mcResp.removeClass("errored").addClass("successed");
            Self.find("input").val("");

            mcResp.find("p").fadeOut(10000);
          }
          if (resp.result === "error") {
            Self.removeClass("successed").addClass("errored");
            mcResp.removeClass("successed").addClass("errored");
            Self.find("input").val("");

            mcResp.find("p").fadeOut(10000);
          }
        },
      });
    });
  }

  if ($(".video-popup").length) {
    $(".video-popup").magnificPopup({
      type: "iframe",
      mainClass: "mfp-fade",
      removalDelay: 160,
      preloader: true,

      fixedContentPos: false,
    });
  }

  if ($(".img-popup").length) {
    var groups = {};
    $(".img-popup").each(function () {
      var id = parseInt($(this).attr("data-group"), 10);

      if (!groups[id]) {
        groups[id] = [];
      }

      groups[id].push(this);
    });

    $.each(groups, function () {
      $(this).magnificPopup({
        type: "image",
        closeOnContentClick: true,
        closeBtnInside: false,
        gallery: {
          enabled: true,
        },
      });
    });
  }

  function dynamicCurrentMenuClass(selector) {
    let FileName = window.location.href.split("/").reverse()[0];

    selector.find("li").each(function () {
      let anchor = $(this).find("a");
      if ($(anchor).attr("href") == FileName) {
        $(this).addClass("current");
      }
    });
    // if any li has .current elmnt add class
    selector.children("li").each(function () {
      if ($(this).find(".current").length) {
        $(this).addClass("current");
      }
    });
    // if no file name return
    if ("" == FileName) {
      selector.find("li").eq(0).addClass("current");
    }
  }

  if ($(".main-menu__list").length) {
    // dynamic current class
    let mainNavUL = $(".main-menu__list");
    dynamicCurrentMenuClass(mainNavUL);
  }

  if ($(".service-details__nav").length) {
    // dynamic current class
    let mainNavUL = $(".service-details__nav");
    dynamicCurrentMenuClass(mainNavUL);
  }

  if ($(".main-menu").length && $(".mobile-nav__container").length) {
    let navContent = document.querySelector(".main-menu").innerHTML;
    let mobileNavContainer = document.querySelector(".mobile-nav__container");
    mobileNavContainer.innerHTML = navContent;
  }

  if ($(".sticky-header").length) {
    $(".sticky-header")
      .clone()
      .insertAfter(".sticky-header")
      .addClass("sticky-header--cloned");
  }

  if ($(".mobile-nav__container .main-menu__list").length) {
    let dropdownAnchor = $(
      ".mobile-nav__container .main-menu__list .dropdown > a"
    );
    dropdownAnchor.each(function () {
      let self = $(this);
      let toggleBtn = document.createElement("BUTTON");
      toggleBtn.setAttribute("aria-label", "dropdown toggler");
      toggleBtn.innerHTML = "<i class='fa fa-angle-down'></i>";
      self.append(function () {
        return toggleBtn;
      });
      self.find("button").on("click", function (e) {
        e.preventDefault();
        let self = $(this);
        self.toggleClass("expanded");
        self.parent().toggleClass("expanded");
        self.parent().parent().children("ul").slideToggle();
      });
    });
  }

  //Show Popup menu
  $(document).on("click", ".megamenu-clickable--toggler > a", function (e) {
    $("body").toggleClass("megamenu-popup-active");
    $(this).parent().find("ul").toggleClass("megamenu-clickable--active");
    e.preventDefault();
  });
  $(document).on("click", ".megamenu-clickable--close", function (e) {
    $("body").removeClass("megamenu-popup-active");
    $(".megamenu-clickable--active").removeClass("megamenu-clickable--active");
    e.preventDefault();
  });

  if ($(".mobile-nav__toggler").length) {
    $(".mobile-nav__toggler").on("click", function (e) {
      e.preventDefault();
      $(".mobile-nav__wrapper").toggleClass("expanded");
      $("body").toggleClass("locked");
    });
  }

  if ($(".sidebar-btn__toggler").length) {
    $(".sidebar-btn__toggler").on("click", function (e) {
      e.preventDefault();
      $(".sidebar-two").toggleClass("active");
      $("body").toggleClass("locked");
    });
  }

  if ($(".search-toggler").length) {
    $(".search-toggler").on("click", function (e) {
      e.preventDefault();
      $(".search-popup").toggleClass("active");
      $(".mobile-nav__wrapper").removeClass("expanded");
      $("body").toggleClass("locked");
    });
  }
  if ($(".mini-cart__toggler").length) {
    $(".mini-cart__toggler").on("click", function (e) {
      e.preventDefault();
      $(".mini-cart").toggleClass("expanded");
      $(".mobile-nav__wrapper").removeClass("expanded");
      $("body").toggleClass("locked");
    });
  }

  //accordion
  if ($(".rashed-accordion").length) {
    var accordionGrp = $(".rashed-accordion");
    accordionGrp.each(function () {
      var accordionName = $(this).data("grp-name");
      var Self = $(this);
      var accordion = Self.find(".accordion");
      Self.addClass(accordionName);
      Self.find(".accordion .accordion-content").hide();
      Self.find(".accordion.active").find(".accordion-content").show();
      accordion.each(function () {
        $(this)
          .find(".accordion-title")
          .on("click", function () {
            if ($(this).parent().hasClass("active") === false) {
              $(".rashed-accordion." + accordionName)
                .find(".accordion")
                .removeClass("active");
              $(".rashed-accordion." + accordionName)
                .find(".accordion")
                .find(".accordion-content")
                .slideUp();
              $(this).parent().addClass("active");
              $(this).parent().find(".accordion-content").slideDown();
            }
          });
      });
    });
  }

  $(".add").on("click", function () {
    if ($(this).prev().val() < 999) {
      $(this)
        .prev()
        .val(+$(this).prev().val() + 1);
    }
  });

  $(".sub").on("click", function () {
    if ($(this).next().val() > 0) {
      if ($(this).next().val() > 0)
        $(this)
          .next()
          .val(+$(this).next().val() - 1);
    }
  });

  if ($(".tabs-box").length) {
    $(".tabs-box .tab-buttons .tab-btn").on("click", function (e) {
      e.preventDefault();
      var target = $($(this).attr("data-tab"));

      if ($(target).is(":visible")) {
        return false;
      } else {
        target
          .parents(".tabs-box")
          .find(".tab-buttons")
          .find(".tab-btn")
          .removeClass("active-btn");
        $(this).addClass("active-btn");
        target
          .parents(".tabs-box")
          .find(".tabs-content")
          .find(".tab")
          .fadeOut(0);
        target
          .parents(".tabs-box")
          .find(".tabs-content")
          .find(".tab")
          .removeClass("active-tab");
        $(target).fadeIn(300);
        $(target).addClass("active-tab");
      }
    });
  }

  function thmOwlInit() {
    // owl slider
    let rashedowlCarousel = $(".rashed-owl__carousel");
    if (rashedowlCarousel.length) {
      rashedowlCarousel.each(function () {
        let elm = $(this);
        let options = elm.data("owl-options");
        let thmOwlCarousel = elm.owlCarousel(
          "object" === typeof options ? options : JSON.parse(options)
        );
        elm.find("button").each(function () {
          $(this).attr("aria-label", "carousel button");
        });
      });
    }

    let rashedowlCarouselNav = $(".rashed-owl__carousel--custom-nav");
    if (rashedowlCarouselNav.length) {
      rashedowlCarouselNav.each(function () {
        let elm = $(this);
        let owlNavPrev = elm.data("owl-nav-prev");
        let owlNavNext = elm.data("owl-nav-next");
        $(owlNavPrev).on("click", function (e) {
          elm.trigger("prev.owl.carousel");
          e.preventDefault();
        });

        $(owlNavNext).on("click", function (e) {
          elm.trigger("next.owl.carousel");
          e.preventDefault();
        });
      });
    }

    let rashedowlCarouselWithFilter = $(".rashed-owl__carousel--filter");
    if (rashedowlCarouselWithFilter.length) {
      rashedowlCarouselWithFilter.each(function () {
        let elm = $(this);
        let options = elm.data("owl-options");
        let filtersDiv = elm.data("owl-filters-div");
        let thmOwlCarousel = elm.owlCarousel(
          "object" === typeof options ? options : JSON.parse(options)
        );

        elm.find("button").each(function () {
          $(this).attr("aria-label", "carousel button");
        });

        $(filtersDiv).on("click", ".item", function () {
          var $item = $(this);
          $(filtersDiv).find(".item").removeClass("active");
          $item.addClass("active");
          var filter = $item.data("owl-filter");
          thmOwlCarousel.owlcarousel2_filter(filter);
          setTimeout(function () {
            var carousel = thmOwlCarousel.data("owl.carousel");
            elm
              .find(".rashed-owl__carousel__counter__current")
              .text(carousel.relative(carousel.current()) + 1);
          }, 100);
        });
      });
    }

    let rashedowlCarouselWithCounter = $(".rashed-owl__carousel--with-counter");
    if (rashedowlCarouselWithCounter.length) {
      rashedowlCarouselWithCounter.each(function () {
        let elm = $(this);
        let options = elm.data("owl-options");

        elm
          .on("initialized.owl.carousel", function (event) {
            var idx = event.item.index;
            var carousel = event.relatedTarget;
            var carouselCount = carousel.items().length;

            if (!event.namespace) {
              return;
            }

            elm.append(
              '<div class="rashed-owl__carousel__counter"><span class="rashed-owl__carousel__counter__current"></span> <span class="rashed-owl__carousel__counter__total"></span></div>'
            );
            elm
              .find(".rashed-owl__carousel__counter__current")
              .text(carousel.relative(carousel.current()) + 1);
            elm
              .find(".rashed-owl__carousel__counter__total")
              .text(carouselCount);
          })
          .owlCarousel(
            "object" === typeof options ? options : JSON.parse(options)
          )
          .on("changed.owl.carousel", function (event) {
            var carousel = event.relatedTarget;
            elm
              .find(".rashed-owl__carousel__counter__current")
              .text(carousel.relative(carousel.current()) + 1);
          });
      });
    }
  }

  function rashedSlickInit() {
    // slick slider
    let rashedslickCarousel = $(".rashed-slick__carousel");
    if (rashedslickCarousel.length) {
      rashedslickCarousel.each(function () {
        let elm = $(this);
        let options = elm.data("slick-options");
        let rashedslickCarousel = elm.slick(
          "object" === typeof options ? options : JSON.parse(options)
        );
      });
    }
    let rashedslickCarouselCounter = $(".rashed-slick__custome-counter");
    if (rashedslickCarouselCounter.length) {
      rashedslickCarouselCounter.each(function () {
        let elm = $(this);
        let options = elm.data("slick-options");
        let currentSlide;
        let slidesCount;
        let sliderCounter = document.createElement("div");
        sliderCounter.classList.add("rashed-slick__counter");

        let updateSliderCounter = function (slick, currentIndex) {
          currentSlide = slick.slickCurrentSlide() + 1;
          slidesCount = slick.slideCount;
          $(sliderCounter).html(
            '<span class="rashed-slick__counter__active">' +
              currentSlide +
              "</span>" +
              "" +
              "<span>" +
              slidesCount +
              "</span>"
          );
        };
        elm.on("init", function (event, slick) {
          elm.append(sliderCounter);
          updateSliderCounter(slick);
        });
        elm.on("afterChange", function (event, slick, currentSlide) {
          updateSliderCounter(slick, currentSlide);
        });

        let rashedslickCarousel = elm.slick(
          "object" === typeof options ? options : JSON.parse(options)
        );
      });
    }
  }
  $(".rashed-owl__carousel").on("initialized.owl.carousel", function () {
    console.log("Carousel initialized with thumbnail dots");
  });

  /*-- Handle Scrollbar --*/
  function handleScrollbar() {
    const bodyHeight = $("body").height();
    const scrollPos = $(window).innerHeight() + $(window).scrollTop();
    let percentage = (scrollPos / bodyHeight) * 100;
    if (percentage > 100) {
      percentage = 100;
    }
    $(".scroll-to-top .scroll-to-top__inner").css("width", percentage + "%");
  }

  /*-- One Page Menu --*/
  function SmoothMenuScroll() {
    var anchor = $(".scrollToLink");
    if (anchor.length) {
      anchor.children("a").bind("click", function (event) {
        if ($(window).scrollTop() > 10) {
          var headerH = "0";
        } else {
          var headerH = "0";
        }
        var target = $(this);
        $("html, body")
          .stop()
          .animate(
            {
              scrollTop: $(target.attr("href")).offset().top - headerH + "px",
            },
            900,
            "easeInOutExpo"
          );
        anchor.removeClass("current");
        anchor.removeClass("current-menu-ancestor");
        anchor.removeClass("current_page_item");
        anchor.removeClass("current-menu-parent");
        target.parent().addClass("current");
        event.preventDefault();
      });
    }
  }
  SmoothMenuScroll();

  function OnePageMenuScroll() {
    var windscroll = $(window).scrollTop();
    if (windscroll >= 117) {
      var menuAnchor = $(".one-page-scroll-menu .scrollToLink").children("a");
      menuAnchor.each(function () {
        var sections = $(this).attr("href");
        $(sections).each(function () {
          if ($(this).offset().top <= windscroll + 100) {
            var Sectionid = $(sections).attr("id");
            $(".one-page-scroll-menu").find("li").removeClass("current");
            $(".one-page-scroll-menu")
              .find("li")
              .removeClass("current-menu-ancestor");
            $(".one-page-scroll-menu")
              .find("li")
              .removeClass("current_page_item");
            $(".one-page-scroll-menu")
              .find("li")
              .removeClass("current-menu-parent");
            $(".one-page-scroll-menu")
              .find("a[href*=\\#" + Sectionid + "]")
              .parent()
              .addClass("current");
          }
        });
      });
    } else {
      $(".one-page-scroll-menu li.current").removeClass("current");
      $(".one-page-scroll-menu li:first").addClass("current");
    }
  }

  // window scroll event
  function stickyMenuUpScroll($targetMenu, $toggleClass) {
    var lastScrollTop = 0;
    window.addEventListener(
      "scroll",
      function () {
        var st = window.pageYOffset || document.documentElement.scrollTop;
        if (st > 500) {
          if (st > lastScrollTop) {
            // downscroll code
            $targetMenu.removeClass($toggleClass);
            // console.log("down");
          } else {
            // upscroll code
            $targetMenu.addClass($toggleClass);
            // console.log("up");
          }
        } else {
          $targetMenu.removeClass($toggleClass);
        }
        lastScrollTop = st;
      },
      false
    );
  }
    
    
    
    
 // stickyMenuUpScroll($(".sticky-header--normal"), "active");
    
    
    $(window).on("scroll", function () {
  var scrollTop = $(window).scrollTop();
  var stickyHeader = $(".sticky-header--normal");

  if (scrollTop > 100) {
    stickyHeader.addClass("active");
  } else {
    stickyHeader.removeClass("active");
  }
});
    
    

  //Strech Column
  function rashed_stretch() {
    var i = $(window).width();
    $(".row .rashed-stretch-element-inside-column").each(function () {
      var $this = $(this),
        row = $this.closest(".row"),
        cols = $this.closest('[class^="col-"]'),
        colsheight = $this.closest('[class^="col-"]').height(),
        rect = this.getBoundingClientRect(),
        l = row[0].getBoundingClientRect(),
        s = cols[0].getBoundingClientRect(),
        r = rect.left,
        d = i - rect.right,
        c = l.left + (parseFloat(row.css("padding-left")) || 0),
        u = i - l.right + (parseFloat(row.css("padding-right")) || 0),
        p = s.left,
        f = i - s.right,
        styles = {
          "margin-left": 0,
          "margin-right": 0,
        };
      if (Math.round(c) === Math.round(p)) {
        var h = parseFloat($this.css("margin-left") || 0);
        styles["margin-left"] = h - r;
      }
      if (Math.round(u) === Math.round(f)) {
        var w = parseFloat($this.css("margin-right") || 0);
        styles["margin-right"] = w - d;
      }
      $this.css(styles);
    });
  }
  rashed_stretch();

  /*-- Price Range --*/
  function priceFilter() {
    if ($(".price-ranger").length) {
      $(".price-ranger #slider-range").slider({
        range: true,
        min: 50,
        max: 1000,
        values: [11, 500],
        slide: function (event, ui) {
          $(".price-ranger .ranger-min-max-block .min").val("$" + ui.values[0]);
          $(".price-ranger .ranger-min-max-block .max").val("$" + ui.values[1]);
        },
      });
      $(".price-ranger .ranger-min-max-block .min").val(
        "$" + $(".price-ranger #slider-range").slider("values", 0)
      );
      $(".price-ranger .ranger-min-max-block .max").val(
        "$" + $(".price-ranger #slider-range").slider("values", 1)
      );
    }
  }

  function rashedChart() {
    const chartElements = document.querySelectorAll(".rashed-chart");
    if (chartElements.length === 0) {
      return;
    }
    chartElements.forEach(function (self) {
      let optionsData = self.getAttribute("data-chart-options");
      if (!optionsData) {
        return;
      }
      try {
        // JSON string to object
        let options = JSON.parse(optionsData);
        const ctx = self.getContext("2d");
        // 1. Handle Gradient (Cannot be stored in JSON)
        const gradient = ctx.createLinearGradient(0, 0, 0, 400);
        gradient.addColorStop(0, "rgba(238, 232, 222, 0.4)");
        gradient.addColorStop(1, "rgba(238, 232, 222, 0)");
        if (
          options.data.datasets[1] &&
          options.data.datasets[1].backgroundColor === "GRADIENT_PLACEHOLDER"
        ) {
          options.data.datasets[1].backgroundColor = gradient;
        }
        // 2. Handle Custom Tooltip Callback (Cannot be stored in JSON)
        options.options.plugins.tooltip = {
          enabled: true,
          backgroundColor: "rgba(0, 0, 0, 0.8)",
          titleFont: { size: 16, family: "DM Sans, sans-serif" },
          bodyFont: { size: 14, family: "DM Sans, sans-serif" },
          callbacks: {
            label: function (context) {
              let label = context.dataset.label || "";
              if (label) {
                label += ": ";
              }
              if (context.parsed.y !== null) {
                label += context.parsed.y + "k";
              }
              return label;
            },
          },
        };
        // 3. Handle Custom Y-Axis Ticks Callback (Cannot be stored in JSON)
        options.options.scales.y.ticks = {
          callback: function (value, index, values) {
            return value + "k";
          },
          font: { size: 14, family: "DM Sans, sans-serif" },
        };
        // 4. Handle X-Axis Ticks Font
        options.options.scales.x.ticks = {
          font: { size: 14, family: "DM Sans, sans-serif" },
        };
        // 5. Initialize the Chart
        new Chart(ctx, options);
      } catch (error) {
        console.error("Error initializing chart from data attribute:", error);
      }
    });
  }
  document.addEventListener("DOMContentLoaded", rashedChart);

  // window load event
  $(window).on("load", function () {
    if ($(".preloader").length) {
      $(".preloader").fadeOut();
    }
    thmOwlInit();
    rashedSlickInit();
    priceFilter();

    if ($(".circle-progress").length) {
      $(".circle-progress").appear(function () {
        $(".circle-progress").each(function () {
          let progress = $(this);
          let progressOptions = progress.data("options");
          progress.circleProgress(progressOptions);
          progress.data(
            "original-options",
            $.extend(true, {}, progressOptions)
          );
        });
      });
    }

    // Hover to change colors based on data attributes in the skill box.
    $(".skill-box-hover")
      .on("mouseenter", function () {
        let circleProgress = $(this).find(".circle-progress");
        if (circleProgress.length) {
          let progressOptions = circleProgress.data("options");
          if (progressOptions) {
            if (!circleProgress.data("original-options")) {
              circleProgress.data("original-options", progressOptions);
            }
            let newOptions = $.extend({}, progressOptions);
            let hoverEmptyFill = circleProgress.data("hover-empty-fill");
            let hoverFillColor = circleProgress.data("hover-fill-color");

            if (hoverEmptyFill) {
              newOptions.emptyFill = hoverEmptyFill;
            }
            if (hoverFillColor) {
              newOptions.fill.color = hoverFillColor;
            }
            circleProgress.circleProgress(newOptions);
          }
        }
      })
      .on("mouseleave", function () {
        let circleProgress = $(this).find(".circle-progress");
        if (circleProgress.length) {
          let originalOptions = circleProgress.data("original-options");
          if (originalOptions) {
            circleProgress.circleProgress(originalOptions);
          }
        }
      });

    if ($(".masonry-layout").length) {
      $(".masonry-layout").imagesLoaded(function () {
        $(".masonry-layout").isotope({
          layoutMode: "masonry",
        });
      });
    }
    if ($(".fitRow-layout").length) {
      $(".fitRow-layout").imagesLoaded(function () {
        $(".fitRow-layout").isotope({
          layoutMode: "fitRows",
        });
      });
    }

    if ($(".post-filter").length) {
      var postFilterList = $(".post-filter li");
      // for first init
      $(".filter-layout").isotope({
        filter: ".filter-item",
        animationOptions: {
          duration: 500,
          easing: "linear",
          queue: false,
        },
      });
      // on click filter links
      postFilterList.on("click", function () {
        var Self = $(this);
        var selector = Self.attr("data-filter");
        postFilterList.removeClass("active");
        Self.addClass("active");

        $(".filter-layout").isotope({
          filter: selector,
          animationOptions: {
            duration: 500,
            easing: "linear",
            queue: false,
          },
        });
        return false;
      });
    }

    if ($(".post-filter.has-dynamic-filter-counter").length) {
      // var allItem = $('.single-filter-item').length;

      var activeFilterItem = $(".post-filter.has-dynamic-filter-counter").find(
        "li"
      );

      activeFilterItem.each(function () {
        var filterElement = $(this).data("filter");
        var count = $(".filter-layout").find(filterElement).length;
        $(this).append("<sup>[" + count + "]</sup>");
      });
    }

    //AOS
    AOS.init();
  });

  $(window).on("scroll", function () {
    OnePageMenuScroll();
    handleScrollbar();
    if ($(".sticky-header--one-page").length) {
      var headerScrollPos = 130;
      var stricky = $(".sticky-header--one-page");
      if ($(window).scrollTop() > headerScrollPos) {
        stricky.addClass("active");
      } else if ($(this).scrollTop() <= headerScrollPos) {
        stricky.removeClass("active");
      }
    }

    var scrollToTopBtn = ".scroll-to-top";
    if (scrollToTopBtn.length) {
      if ($(window).scrollTop() > 500) {
        $(scrollToTopBtn).addClass("show");
      } else {
        $(scrollToTopBtn).removeClass("show");
      }
    }
  });

  $(window).on("resize", function () {
    rashed_stretch();
  });
})(jQuery);










  
    
$(document).ready(function() {
  var bigimage = $("#big");
  var thumbs = $("#thumbs");
  //var totalslides = 10;
  var syncedSecondary = true;

  bigimage
    .owlCarousel({
    items: 1,
    slideSpeed: 2000,
    nav: false,
    autoplay: true,
      autoplayHoverPause: true,
    dots: false,
    loop: true,
    responsiveRefreshRate: 200,
    navText: [
      '<i class="fa fa-arrow-left" aria-hidden="true"></i>',
      '<i class="fa fa-arrow-right" aria-hidden="true"></i>'
    ]
  })
    .on("changed.owl.carousel", syncPosition);

  thumbs
    .on("initialized.owl.carousel", function() {
    thumbs
      .find(".owl-item")
      .eq(0)
      .addClass("current");
  })
    .owlCarousel({
    items: 6,
    dots: false,
    margin: 10,
    nav: true,
    navText: [
      '<i class="icon-arrow-right" aria-hidden="true"></i>',
      '<i class="icon-arrow-left" aria-hidden="true"></i>'
    ],
    smartSpeed: 200,
    slideSpeed: 500,
    slideBy: 4,
    responsiveRefreshRate: 100
  })
    .on("changed.owl.carousel", syncPosition2);

  function syncPosition(el) {
    //if loop is set to false, then you have to uncomment the next line
    //var current = el.item.index;

    //to disable loop, comment this block
    var count = el.item.count - 1;
    var current = Math.round(el.item.index - el.item.count / 2 - 0.5);

    if (current < 0) {
      current = count;
    }
    if (current > count) {
      current = 0;
    }
    //to this
    thumbs
      .find(".owl-item")
      .removeClass("current")
      .eq(current)
      .addClass("current");
    var onscreen = thumbs.find(".owl-item.active").length - 1;
    var start = thumbs
    .find(".owl-item.active")
    .first()
    .index();
    var end = thumbs
    .find(".owl-item.active")
    .last()
    .index();

    if (current > end) {
      thumbs.data("owl.carousel").to(current, 100, true);
    }
    if (current < start) {
      thumbs.data("owl.carousel").to(current - onscreen, 100, true);
    }
  }

  function syncPosition2(el) {
    if (syncedSecondary) {
      var number = el.item.index;
      bigimage.data("owl.carousel").to(number, 100, true);
    }
  }

  thumbs.on("click", ".owl-item", function(e) {
    e.preventDefault();
    var number = $(this).index();
    bigimage.data("owl.carousel").to(number, 300, true);
  });
});
