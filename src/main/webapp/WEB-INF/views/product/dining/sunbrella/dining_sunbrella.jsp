<%@include file="/WEB-INF/views/header/fu_header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="<%=cp %>/resources/image/주방다이닝룸.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">DINING ROOM</h1>
                        <ul class="breadcrumb">
                            <li><a href="home.fu">Home</a></li>
                            <li class="current"><span>선브렐라 체어</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div  class="main-content-wrapper">
            <div class="shop-page-wrapper ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="shop-toolbar mb--50">
                                <div class="row align-items-center">
                                    <div class="col-md-5 mb-sm--30 mb-xs--10">
                                        <div class="shop-toolbar__left">
                                            <div class="product-ordering">
                                                <b>베스트상품</b>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="shop-toolbar__right d-flex justify-content-md-end justify-content-start flex-sm-row flex-column">
                                            <p class="product-pages">홈 > 주방 /다이닝룸 > 선브렐라 체어</p>
                                            <%-- <div class="product-view-mode ml--50 ml-xs--0">
                                                <a class="active" href="#" data-target="grid">
                                                    <img src="<%=cp %>/resources/assets/img/icons/grid.png" alt="Grid">
                                                </a>
                                            </div> --%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- slide start -->
                            <hr/><br/>
                            
                            <div class="product-gallery__nav-image">
                                        <div class="element-carousel nav-slider product-slide-nav slick-vertical-center" 
                                        data-slick-options='{
                                            "spaceBetween": 30,
                                            "slidesToShow": 5,
                                            "slidesToScroll": 1,
                                            "swipe": true,
                                            "infinite": true,
                                            "focusOnSelect": true,
                                            "arrows": true, 
                                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-left" },
                                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-right" }
                                        }'
                                        data-slick-responsive='[
                                            {
                                                "breakpoint":767, 
                                                "settings": {
                                                    "slidesToShow": 4
                                                } 
                                            },
                                            {
                                                "breakpoint":575, 
                                                "settings": {
                                                    "slidesToShow": 3
                                                } 
                                            },
                                            {
                                                "breakpoint":480, 
                                                "settings": {
                                                    "slidesToShow": 2
                                                } 
                                            }
                                        ]'>
                                      <c:forEach items="${catelists }" var="dto">
                                            <figure class="product-gallery__nav-image--single">
                                                <a href="dining_sunbrella_details.fu?imageIndex=${dto.imageIndex }&cateEn=${dto.cateEn}">
                                                	<img src="<%=cp %>/resources/images/dining/${dto.saveFileName}" style="max-width: 70%;" alt="Products">
                                                </a>
                                            </figure>
                                      </c:forEach>
                                        </div>
                                    </div>
                                    
                            		<br/><br/>
                            		
                           
                            		
                           	<div class="shop-toolbar mb--50">
                                <div class="row align-items-center">
                                    <div class="col-md-5 mb-sm--30 mb-xs--10">
                                        <div class="shop-toolbar__left">
                                            <div class="product-ordering">
                                                <b>선브렐라 체어</b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <hr/><br/>
                            <!-- slide end -->
                            
                            <div class="shop-products">
                                <div class="row">
                                <c:forEach items="${catelists }" var="dto">
                                    <div class="col-xl-3 col-lg-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="<%=cp %>/resources/images/dining/${dto.saveFileName}" alt="Product">
                                                    </figure>
                                                    <a href="dining_sunbrella_details.fu?imageIndex=${dto.imageIndex }&cateEn=${dto.cateEn }&pageNum=${pageNum}" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <!-- <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a> -->
                                                        <a href="wishlist.fu?cateEn=${dto.cateEn }&itemname=${dto.productName }&price=${dto.price }&imagepath=/resources/images/dining/${dto.saveFileName}&imageIndex=${dto.imageIndex}" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <!-- <a href="wishlist.jsp" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a> -->
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="dining_sunbrella_details.fu?imageIndex=${dto.imageIndex }&cateEn=${dto.cateEn }&pageNum=${pageNum}">${dto.productName }</a>
                                                    </div>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">${dto.price }원</span>
                                                        </div>
                                                        <%-- <a href="<%=cp %>/cart.fu" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a> --%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    
                                </div>
                            </div>
                            <nav class="pagination-wrap">
                                <ul class="pagination">
                                    <c:if test="${dataCount!=0 }">
                                    	${pageIndexList }
                                    </c:if>
                                    <c:if test="${dataCount==0 }">
                                    	찾으시는 제품이 없습니다.
                                    </c:if>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

<%@include file="/WEB-INF/views/footer/fu_footer.jsp"%>