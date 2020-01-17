<%@include file="/WEB-INF/views/header/fu_header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <!-- Slider area Start -->
            <section class="homepage-slider mb--80 mb-md--60">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="element-carousel slick-right-bottom"
                            data-slick-options='{
                                "slidesToShow": 1, 
                                "arrows": true,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-arrow-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-arrow-right" }
                            }' 
                            data-slick-responsive='[{"breakpoint": 768, "settings": {"arrows": false}}]'>
                                <div class="item">
                                    <div class="single-slide d-flex align-items-center bg-color" data-bg-color="#dbf3f2">
                                        <div class="row align-items-center no-gutters w-100">
                                            <div class="col-xl-6 col-md-6 mb-sm--50 order-md-2">
                                                <figure data-animation="fadeInUp" data-duration=".3s" data-delay=".3s" class="pl-15 pr--60">
                                                    <img src="<%=cp %>/resources/assets/img/slider/slider-02-img-01.png" alt="Slider O1 image" class="mx-auto">
                                                </figure>
                                            </div>
                                            <div class="col-md-5 col-lg-5 offset-md-1 order-md-1">
                                                <div class="slider-content">
                                                    <div class="slider-content__text border-color-2 mb--40 mb-md--30">
                                                        <p class="mb--15" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">#New Treand</p>
                                                        <p class="mb--20" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Enlight your world. Make yourself more bright.</p>
                                                        <h1 class="heading__primary lh-pt7" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Abotar Lighting</h1>
                                                    </div>
                                                    <div class="slider-content__btn">
                                                        <a href="#" class="btn btn-outline btn-brw-2 btn-brc-2" data-animation="fadeInUp" data-duration=".3s" data-delay=".6s">Shop Now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="single-slide d-flex align-items-center bg-color" data-bg-color="#dbf3f2">
                                        <div class="row align-items-center no-gutters w-100">
                                            <div class="col-xl-7 col-md-6 mb-sm--50">
                                                <figure data-animation="fadeInUp" data-duration=".3s" data-delay=".3s" class="plr--15">
                                                    <img src="<%=cp %>/resources/assets/img/slider/slider-01-img-01.png" alt="Slider O1 image" class="mx-auto">
                                                </figure>
                                            </div>
                                            <div class="col-md-6 col-lg-5 offset-lg-1 offset-xl-0">
                                                <div class="slider-content">
                                                    <div class="slider-content__text mb--40 mb-md--30">
                                                        <p class="mb--15" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">#New Treand</p>
                                                        <p class="mb--20" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Enlight your world. Make yourself more bright.</p>
                                                        <h1 class="heading__primary lh-pt7" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Abotar Lighting</h1>
                                                    </div>
                                                    <div class="slider-content__btn">
                                                        <a href="#" class="btn btn-outline btn-brw-2" data-animation="fadeInUp" data-duration=".3s" data-delay=".6s">Shop Now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Slider area End -->
            
            <!-- Banner Area Start -->
            <section class="banner-area mb--75 mb-md--55">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 mb-md--30">
                            <div class="banner banner-info-top">
                                <div class="banner__inner">
                                    <figure class="banner__image">
                                        <img src="<%=cp %>/resources/assets/img/banner/banner-01.jpg" alt="Banner">
                                    </figure>
                                    <div class="banner__info pt--105 pt-md--80 pl--70 pl-md--50">
                                        <div class="banner__info--inner width-1">
                                            <h2 class="banner__title-1">Carnival Full Set</h2>
                                            <p class="banner__text-1 mb--15">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                            <a href="shop.html" class="banner__btn">Buy Now</a>
                                        </div>
                                    </div>
                                    <a href="shop.html" class="banner__link"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 offset-lg-1">
                            <div class="banner banner-info-right-center mb--30">
                                <div class="banner__inner">
                                    <figure class="banner__image">
                                        <img src="<%=cp %>/resources/assets/img/banner/banner-02.jpg" alt="Banner">
                                    </figure>
                                    <div class="banner__info pr--70 pr-md--50">
                                        <div class="banner__info--inner width-2">
                                            <h2 class="banner__title-1">Reading Chair</h2>
                                            <p class="banner__text-1 mb--15">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                            <a href="shop.html" class="banner__btn">Buy Now</a>
                                        </div>
                                    </div>
                                    <a href="shop.html" class="banner__link"></a>
                                </div>
                            </div>
                            <div class="banner banner-info-left-center">
                                <div class="banner__inner">
                                    <figure class="banner__image">
                                        <img src="<%=cp %>/resources/assets/img/banner/banner-03.jpg" alt="Banner">
                                    </figure>
                                    <div class="banner__info pl--85 pl-md--50">
                                        <div class="banner__info--inner width-3 text-right">
                                            <h2 class="banner__title-1">Easy Chair</h2>
                                            <p class="banner__text-1 mb--15">Get Discount</p>
                                            <a href="shop.html" class="banner__btn">Buy Now</a>
                                        </div>
                                    </div>
                                    <a href="shop.html" class="banner__link"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Banner Area End -->

            <!-- Product Tab Area Start -->
            <section class="product-tab-area mb--30 mb-md--10">
                <div class="container">
                    <div class="row mb--28 mb-md--18 mb-sm--33">
                        <div class="col-md-3 text-md-left text-center">
                            <h2>All Products</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs justify-content-md-end justify-content-center" id="product-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="new-all-tab" data-toggle="tab" href="#new-all" role="tab" aria-controls="new-all" aria-selected="true">
                                        <span class="nav-text">All</span>
                                    </a>
                                    <a class="nav-item nav-link" id="new-wooden-tab" data-toggle="tab" href="#new-wooden" role="tab" aria-controls="new-wooden" aria-selected="false">
                                        <span class="nav-text">wooden</span>
                                    </a>
                                    <a class="nav-item nav-link" id="new-furnished-tab" data-toggle="tab" href="#new-furnished" role="tab" aria-controls="new-furnished" aria-selected="false">
                                        <span class="nav-text">furnished</span>
                                    </a>
                                    <a class="nav-item nav-link" id="new-table-tab" data-toggle="tab" href="#new-table" role="tab" aria-controls="new-table" aria-selected="false">
                                        <span class="nav-text">table</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="product-tab-content">
                                <div class="tab-pane fade show active" id="new-all" role="tabpanel" aria-labelledby="new-all-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="new-price">
                                                                    <span class="money">$150</span>
                                                                </span>
                                                                <span class="old-price">
                                                                    <span class="money">$200</span>
                                                                </span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-09-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-wooden" role="tabpanel" aria-labelledby="new-wooden-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-furnished" role="tabpanel" aria-labelledby="new-furnished-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-table" role="tabpanel" aria-labelledby="new-table-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-10-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="<%=cp %>/resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="product-details.html" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="product-details.html">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="cart.html" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Product Tab Area End -->

            <!-- Brand Logo Area Start -->
            <div class="brand-logo-area mb--80 mb-md--60">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-12">
                            <div class="brand-log-wrapper bg-color ptb--75" data-bg-color="#e9fefd">
                                <div class="element-carousel"
                                data-slick-options='{
                                    "slidesToShow": 5,
                                    "autoplay": true
                                }'
                                data-slick-responsive='[
                                    {"breakpoint": 1200, "settings": {"slidesToShow": 4}},
                                    {"breakpoint": 992, "settings": {"slidesToShow": 3}},
                                    {"breakpoint": 768, "settings": {"slidesToShow": 2}},
                                    {"breakpoint": 480, "settings": {"slidesToShow": 1}}
                                ]'>
                                    <div class="item">
                                        <figure>
                                            <img src="<%=cp %>/resources/assets/img/brand/brand-01.png" alt="Brand" class="mx-auto">
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure>
                                            <img src="<%=cp %>/resources/assets/img/brand/brand-02.png" alt="Brand" class="mx-auto">
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure>
                                            <img src="<%=cp %>/resources/assets/img/brand/brand-03.png" alt="Brand" class="mx-auto">
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure>
                                            <img src="<%=cp %>/resources/assets/img/brand/brand-04.png" alt="Brand" class="mx-auto">
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure>
                                            <img src="<%=cp %>/resources/assets/img/brand/brand-05.png" alt="Brand" class="mx-auto">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Brand Logo Area End -->

            <!-- Best Sale Product Area Start -->
            <section class="best-sale-product-area mb--75 mb-md--55">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="best-sale-product bg-color" data-bg-color="#f7f8f9">
                                <div class="best-sale-product__inner bg-color" data-bg-color="#ffffff">
                                    <figure class="best-sale-product__img">
                                        <a href="product-details.html">
                                            <img src="<%=cp %>/resources/assets/img/products/best-product-01.png" alt="Best Sale Product">
                                        </a>
                                    </figure>
                                    <div class="best-sale-product__info">
                                        <h2 class="best-sale-product__heading">
                                            <span class="best-sale-product__heading--main">Best Sale</span>
                                            <span class="best-sale-product__heading--sub">Get Best Discount</span>
                                        </h2>
                                        <p class="best-sale-product__desc">It is a long established fact that a reader will be distracted by the readable content</p>
                                        <a href="shop.html" class="btn btn-outline btn-size-md btn-color-primary btn-shape-round btn-hover-2">Shop Now</a>
                                    </div>
                                </div>
                                <figure class="best-sale-product__top-image">
                                    <img src="<%=cp %>/resources/assets/img/others/1.png" alt="bg image">
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Best Sale Product Area End -->

            <!-- Blog Area Start -->
            <section class="blog-area mb--70 mb-md--50">
                <div class="container">
                    <div class="row mb--35 mb-md--23">
                        <div class="col-12 text-center">
                            <h2>News &amp; Updates</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="element-carousel" data-slick-options='{
                                "spaceBetween": 30,
                                "slidesToShow": 3,
                                "slidesToScroll": 1
                            }'
                            data-slick-responsive='[
                                {"breakpoint": 992, "settings": {"slidesToShow": 2}},
                                {"breakpoint": 768, "settings": {"slidesToShow": 1}}
                            ]'>
                                <div class="item">
                                    <article class="blog">
                                        <div class="blog__inner">
                                            <figure class="blog__media">
                                                <div class="image">
                                                    <img src="<%=cp %>/resources/assets/img/blog/blog-01.jpg" alt="Blog" class="w-100">
                                                    <a href="blog-details-image.html" class="item-overlay"></a>
                                                </div>
                                            </figure>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="blog-details-image.html">There are many variations of passages of Lorem.</a></h2>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="item">
                                    <article class="blog">
                                        <div class="blog__inner">
                                            <figure class="blog__media">
                                                <div class="image">
                                                    <img src="<%=cp %>/resources/assets/img/blog/blog-02.jpg" alt="Blog" class="w-100">
                                                    <a href="blog-details-image.html" class="item-overlay"></a>
                                                </div>
                                            </figure>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="blog-details-image.html">There are many variations of passages of Lorem.</a></h2>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="item">
                                    <article class="blog">
                                        <div class="blog__inner">
                                            <figure class="blog__media">
                                                <div class="image">
                                                    <img src="<%=cp %>/resources/assets/img/blog/blog-03.jpg" alt="Blog" class="w-100">
                                                    <a href="blog-details-image.html" class="item-overlay"></a>
                                                </div>
                                            </figure>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="blog-details-image.html">There are many variations of passages of Lorem.</a></h2>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Blog Area End -->
        </main>
        <!-- Main Content Wrapper End -->

<%@include file="/WEB-INF/views/footer/fu_footer.jsp"%>