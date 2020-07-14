import Loading from "./lib/Loading";
import Cookie from "./lib/Cookie";
import MoveElement from "./lib/MoveElement"

const toggleMenuMobile = () => {
	$(".toggle-menu.mobile").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".navbar-collapse").toggleClass("active");
		$("body").toggleClass("disabled");
	});
};


// Home banner
function homeBanner(){
	var swiper = new Swiper('.banner-main', {
		loop: true,
		speed: 1000,
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.banner-main .swiper-button-next',
			prevEl: '.banner-main .swiper-button-prev',
		},
	})
}

//Slide product home
function productHomeSlide(){
	var swiper = new Swiper('.product-home', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		breakpoints: {
			1280:{
				slidesPerView: 3,
			},
			575:{
				slidesPerView: 2,
				spaceBetween: 20,
			},
			320:{
				slidesPerView: 1,
				spaceBetween: 0,
			}
		},
	})
}

//Slide phần mềm NX
function nxSile(){
	var mySwiper = new Swiper('.nx-software', {
		speed: 1000,
		navigation: {
			nextEl: '.nx-software .swiper-button-next',
			prevEl: '.nx-software .swiper-button-prev',
		},
	});
}
function nxPro(){
	var swiper = new Swiper('.nx__pro', {
		slidesPerView: 2,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.nx-slide .swiper-button-next',
			prevEl: '.nx-slide .swiper-button-prev',
		},
		breakpoints: {
			991:{
				slidesPerView: 4,
				spaceBetween: 30,
			},
			768:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			
			480:{
				slidesPerView: 1,
			},
		},
	})
}

function vaxTor(){
	var swiper = new Swiper('.vaxtor-slide .vaxtor__pro', {
		slidesPerView: 3,
		spaceBetween: 30,
		observer: true,
		observeParents: true,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.vaxtor-slide .swiper-button-next',
			prevEl: '.vaxtor-slide .swiper-button-prev',
		},
		breakpoints: {
			1100:{
				spaceBetween: 20,
			},
			1024:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			991:{
				slidesPerView: 4,
				spaceBetween: 20,
			},
			768:{
				slidesPerView: 2,
				spaceBetween: 0,
			},
			375:{
				slidesPerView: 1,
				spaceBetween: 0,
			},
		},
	})
}
function eduSlide(){
	var swiper = new Swiper('.right-partner', {
		slidesPerView: 3,
		spaceBetween: 30,
		slidesPerColumn: 2,
		loop: true,
		speed: 1100,
		autoplay: true,
		spaceBetween: 20,
		navigation: {
			nextEl: '.right-slide .swiper-button-next',
			prevEl: '.right-slide .swiper-button-prev',
		},
		breakpoints: {
			1024:{
				slidesPerView: 6,
				spaceBetween: 10,
			},
			578:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			375:{
				slidesPerView: 2,
				spaceBetween: 0,
			},
		},
	})
}
function homeNewSlide(){
	var mySwiper = new Swiper('.new-home__slide', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1100,
		speed: 1100,
		autoplay: true,
		navigation: {
			nextEl: '.tbl-home-7__content__list .swiper-button-next',
			prevEl: '.tbl-home-7__content__list .swiper-button-prev',
		},
		breakpoints: {
			992:{
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			480:{
				slidesPerView: 1,
			}
		},
	});
}

function partnerSlide(){
	var swiper = new Swiper('.block__partner .swiper-container', {
		slidesPerColumn: 2,
		spaceBetween: 20,
		slidesPerView: 6,
		speed: 1000,
		autoplay: false,
		loop: true,
		navigation: {
			nextEl: '.block__partner .swiper-button-next',
			prevEl: '.block__partner .swiper-button-prev',
		},
		breakpoints: {
			1100:{
				slidesPerView: 5,
			},
			1024:{
				slidesPerView: 4,
			},
			992:{
				slidesPerView: 3,
				spaceBetween: 10,
			},
			575:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 2,
			}
		},

	});
}

function partnerSlideAbout(){
	var swiper = new Swiper('.partner__slide, .customer__slide', {
		slidesPerView: 6,
		spaceBetween: 20,
		loop: true,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		breakpoints: {
			1200:{
				slidesPerView: 5,
				spaceBetween: 10,
			},
			992:{
				slidesPerView: 4,
				spaceBetween: 10,
			},
			600:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 1,
			}
		},
	})
}

function prizeSlideAbout(){
	var swiper = new Swiper('.block-prize .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.block-prize .swiper-button-next',
			prevEl: '.block-prize .swiper-button-prev',
		},
		breakpoints: {
			1400:{
				slidesPerView: 4,
			},
			992:{
				slidesPerView: 4,
			},
			575:{
				slidesPerView: 3,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 2,
			}
		},
	})
}

function tabsDescription(){
	$('.tabs > li').on('click', function(){
		var $panel = $(this).closest('.tab-panels');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').slideUp(300, showNextPanel);
		
		function showNextPanel(){
			$(this).removeClass('active');
			$('#'+panelToShow).slideDown(300, function(){
			$(this).addClass('active');
			});
		};
		
	});

}

function solutionOther(){
	var swiper = new Swiper('.solution__other, .product__other', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.solution-other .swiper-button-next, .list-product .swiper-button-next',
			prevEl: '.solution-other .swiper-button-prev, .list-product .swiper-button-prev',
		},
		breakpoints: {
			1400:{
				slidesPerView: 3,
			},
			992:{
				slidesPerView: 3,
			},
			575:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			480:{
				slidesPerView: 1,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	})
}

function panelSlide(){
	var swiper = new Swiper('.panel-slide', {
		slidesPerView: 3,
		spaceBetween: 30,
		observer: true,
		observeParents: true,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.panel__slide .swiper-button-next',
			prevEl: '.panel__slide .swiper-button-prev',
		},
		breakpoints: {
			1400:{
				slidesPerView: 3,
			},
			992:{
				slidesPerView: 3,
			},
			575:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			480:{
				slidesPerView: 1,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	})
}

// Form search
function searchForm() {
	if($(window).width() <= 992){
		$('header').each(function() {
			$('.search').click(function(){
				$('.searchbox').slideToggle();
			})
		})
		$(window).scroll(function() {
			if ($(this).scrollTop() > 0) {
				$('.searchbox').slideUp();
			}
		});
	}
}

// CHECK LAYOUT CÓ BANNER KHÔNG
const checkLayoutBanner = () => {
	const banner2 = $('.banner-2');
	const breadcrumb = $('.global-breadcrumb');
	const heightHeader = $('header').outerHeight();
	if (banner2.length >= 1 && banner2.css('display') == 'block') {
		banner2.css('padding-top', heightHeader);
	} else if (breadcrumb.length >= 1 && breadcrumb.css('display') == 'block') {
		breadcrumb.css('padding-top', heightHeader);
	} else {
		$('main').css('padding-top', heightHeader);
	}
}

// Slide product slide
function productDetail() {
	var galleryThumbs = new Swiper(".thumb .gallery-thumbs", {
		direction: 'vertical',
		spaceBetween: 15,
		slidesPerView: 4,
		loop: true,
		freeMode: true,
		centeredSlides: true,
		centeredSlides: true,
		slideToClickedSlide: true,
		breakpoints:{
			1024:{
				direction: 'horizontal',
			},
		},
		navigation: {
			nextEl: '.thumb .swiper-button-next',
			prevEl: '.thumb .swiper-button-prev',
		},
	});
	var galleryTop = new Swiper(".gallery-top", {
		spaceBetween: 20,
		speed: 1500,
		// autoplay: {
		// 	delay: 3000,
		// 	disableOnInteraction: false,
		// },
		thumbs: {
		swiper: galleryThumbs,
		},
	});
	}

//Product Other
function productOther(){
	var swiper = new Swiper('.product__other, .list-product .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 20,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.list-product .swiper-button-next',
			prevEl: '.list-product .swiper-button-prev',
		},
		breakpoints: {
			1024:{
				slidesPerView: 3,
			},
			992:{
				slidesPerView: 3,
			},
			575:{
				slidesPerView: 2,
				spaceBetween: 10,
			},
			480:{
				slidesPerView: 1,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	})
}

function listFilter(){
	$('span').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
			$('.acc__title').removeClass('active');
		} else {
			$('.acc__title').find('span.active').removeClass('active');
			$(this).addClass('active');
			$(this).closest('.acc__card').find('.acc__title').addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});
	if($(window).width() <= 1024)
		$('.block__title').find('.acc__mobile').on('click', function(e){
			$('.content__sidebar').find('.acc').toggleClass('active');
			e.preventDefault();
		});
}

function helperCus(){
	$('.__title').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
		$(this).removeClass('active');
		} else {
		$(this).closest('.acc').find('.__title.active').removeClass('active');
		$(this).addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});

}


function hideTool() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 50) {
			$("#block__tool").addClass("active");
		} else {
			$("#block__tool").removeClass("active");
		}
	});
}

// Sub menu mobile
function subMenuMobile(){
	if($(window).width() <= 1024){
		$('.submenu-toggle').on('click', function(event){
			var dropDown = $(this).closest('.nav-item').find('.nav-item__dropdownmenu');
			$(this).closest('.nav-item').find('.nav-item__dropdownmenu').addClass('active');
			$(this).closest('.navbar-nav').find('.nav-item__dropdownmenu').not(dropDown).slideUp();
			if ($(this).hasClass('active')) {
				$(this).addClass('active');
			} else {
				$(this).closest('.navbar-nav').find('.submenu-toggle').removeClass('active');
				$(this).removeClass('active');
			}
				dropDown.stop(false, true).slideToggle();
				event.preventDefault();
		});
	}
}

function coutingNumber(){
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
			$({ countNum: $this.text()}).animate({
				countNum: countTo
			},
		{
		duration: 5000,
		easing:'linear',
		step: function() {
		$this.text(Math.floor(this.countNum));
		},
		complete: function() {
			$this.text(this.countNum);
			//alert('finished');
		}
	
		});
	});
}

function DataBG() {
	$('[data-bg]').each(function () {
		$(this).addClass('data-bg lazyload')
	})
}

function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}

function productFillter(){
	$('.block__filter').find('.filter__icon').on('click', function(e){
		$('.block__filter').find('ul.nav').toggleClass('active');
		e.preventDefault();
	})
}
//Move select fillter product
function moveSelect(){
	$('.fillter').appendTo('ul.nav #div');
	$('.fillter').each(function () {
		if (!$(this).text().match(/^\s*$/)) {
			$(this).insertBefore($(this).prev('.nav-item'));
		}
});
}


function moveNav(){
	if($(window).width() <= 991.98){
		$('.nav-top').appendTo('.nav-main .header-icon');
	}else{
		$('.nav-top').appendTo('.navbar-collapse #div')
	}
}

document.addEventListener('DOMContentLoaded', () => {
	// Loading();
	Cookie();
	new WOW().init();
	homeBanner();
	coutingNumber();
	toggleMenuMobile();
	checkLayoutBanner();
	productHomeSlide();
	searchForm();
	nxSile();
	nxPro();
	vaxTor();
	eduSlide();
	homeNewSlide();
	partnerSlide();
	partnerSlideAbout();
	prizeSlideAbout();
	tabsDescription();
	panelSlide();
	solutionOther();
	productDetail();
	productOther();
	listFilter();
	helperCus();
	$('select').niceSelect();
	hideTool();
	subMenuMobile();
	DataBG();
	setBackground();
	productFillter();
	moveSelect();
	moveNav()
});