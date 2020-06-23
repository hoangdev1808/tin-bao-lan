import Loading from "./lib/Loading";


const toggleMenuMobile = () => {
	$(".toggle-menu.mobile").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".navbar-collapse").toggleClass("active");
		$("body").toggleClass("disabled");
	});

	$("#overlay").on("click", function() {
		$(this).removeClass("active");
		$("body").removeClass("disabled");
		$(".navbar-collapse").removeClass("active");
		$(".toggle-menu.mobile").removeClass("active");
	});
};


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
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	})
}

function vaxTor(){
	var swiper = new Swiper('.vaxtor__pro', {
		slidesPerView: 3,
		spaceBetween: 30,
		observer: true,
		observeParents: true,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	})
}
function eduSlide(){
	var swiper = new Swiper('.right-partner', {
		slidesPerView: 3,
		slidesPerColumn: 2,
		observer: true,
		observeParents: true,
		loop: true,
		speed: 1100,
		autoplay: true,
		spaceBetween: 30,
		navigation: {
			nextEl: '.right-slide .swiper-button-next',
			prevEl: '.right-slide .swiper-button-prev',
		},
	})
}
function homeNewSlide(){
	var mySwiper = new Swiper('.new-home__slide', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1100,
		navigation: {
			nextEl: '.new-home-list .swiper-button-next',
			prevEl: '.new-home-list .swiper-button-prev',
		},
		breakpoints: {
			992:{
				slidesPerView: 3,
			},
			575:{
				slidesPerView: 1,
				spaceBetween: 10,
			},
			320:{
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
		spaceBetween: 0,
		loop: true,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: '.partner .swiper-button-next',
			prevEl: '.partner .swiper-button-prev',
		},
		breakpoints: {
			1400:{
				slidesPerView: 6,
			},
			992:{
				slidesPerView: 4,
			},
			575:{
				slidesPerView: 3,
				spaceBetween: 10,
			},
			320:{
				slidesPerView: 1,
			}
		},
	})
}
function cusSlideAbout(){
	var swiper = new Swiper('.customer__slide', {
		slidesPerView: 6,
		spaceBetween: 0,
		loop: true,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: '.customer .swiper-button-next',
			prevEl: '.customer .swiper-button-prev',
		},
		breakpoints: {
			1400:{
				slidesPerView: 6,
			},
			992:{
				slidesPerView: 4,
			},
			575:{
				slidesPerView: 3,
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
	$('header').each(function() {
		$('.search').click(function(){
			$('.search-form').slideToggle(500);
		})
	})
	$('.close').click(function(){
		$('.search-form').slideUp();
	})
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('.search-form').slideUp();
        }
	});
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
		spaceBetween: 10,
		slidesPerView: 4,
		loop: true,
		freeMode: true,
		loopedSlides: 5,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpoints:{
			1024:{
				direction: 'horizontal',
			},
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
		$('.acc__mobile').find('.read-all').on('click', function(e){
			e.stopPropagation();
			$('.content__sidebar').find('.acc').addClass('active');
		});
		$('.acc__mobile').find('.back').on('click', function(e) {
			e.stopPropagation();
			$('.content__sidebar').find('.acc').removeClass('active');
		})

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
const setHeightOverFolowBySomeElement = () => {
	const heightGet = $('[data-getHeight]').height();
	const heightSet = $('[data-setHeight]');
	const responsive = heightSet.attr('data-setHeight');
	if (window.innerWidth > responsive) {
		heightSet.css('max-height', heightGet)
	}
}

document.addEventListener('DOMContentLoaded', () => {
	Loading();
	toggleMenuMobile();
	setHeightOverFolowBySomeElement();
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
	cusSlideAbout();
	prizeSlideAbout();
	tabsDescription();
	panelSlide();
	solutionOther();
	productDetail();
	productOther();
	listFilter();
	helperCus();
	$('select').niceSelect();
});