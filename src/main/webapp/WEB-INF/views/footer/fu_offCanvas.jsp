<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String location = request.getContextPath();
%>
        <div class="offcanvas-menu-wrapper" id="offcanvasMenu">
            <div class="offcanvas-menu-inner">
                <a href="" class="btn-close">
                    <i class="la la-remove"></i>
                </a>
                <nav class="offcanvas-navigation">
                    <ul class="offcanvas-menu">
                        <li class="menu-item-has-children active">
                            <a href="home.fu">Home</a>
                            <!-- <ul class="sub-menu">
                                <li>
                                    <a href="home.fu">Homepage 01</a>
                                </li>
                                <li>
                                    <a href="home2.fu">Homepage 02</a>
                                </li>
                            </ul> -->
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">제 품</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="living_total.fu">
                                        <span class="mm-text">거실 / 리빙룸</span>
                                    </a>
                                    <ul class="sub-menu">
                                    	<li>
                                    		<a href="living_sunb.fu?cateEn=sunb">
                                    			<span class="mm-text">★선브렐라 소파</span>
                                            </a>
                                    	</li>
                                        <li>
                                            <a href="living_fabric.fu?cateEn=fabric">
                                                <span class="mm-text">패브릭 소파</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="living_leather.fu?cateEn=leather">
                                                <span class="mm-text">가죽 소파</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="living_deus.fu?cateEn=deus">
                                                <span class="mm-text">데우스 소파</span>
                                            </a>
v                                       </li>
                                        <li>
                                            <a href="living_sideTable.fu?cateEn=sideTable">
                                                <span class="mm-text">사이드 테이블</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="living_TV.fu?cateEn=TV">
                                                <span class="mm-text">TV 장</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="living_shelf.fu?cateEn=shelf">
                                                <span class="mm-text">선반</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="living_bookcase.fu?cateEn=bookcase">
                                                <span class="mm-text">북 케이스</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="diningfull.fu">주방/다이닝룸</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="dining_sunbrella.fu?cate=선브렐라 체어">
                                                <span class="mm-text">선브렐라 체어</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_clean.fu?cate=클린터치 테이블">
                                                <span class="mm-text">클린터치 테이블</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_rnl.fu?cate=리놀륨 테이블">
                                                <span class="mm-text">리놀륨 테이블</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_table.fu?cate=테이블 / 식탁">
                                                <span class="mm-text">테이블 / 식탁</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_chair.fu?cate=체어 / 의자">
                                                <span class="mm-text">체어 / 의자</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_deco.fu?cate=장식장">
                                                <span class="mm-text">장식장</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="dining_desk.fu?cate=책상 / 선반">
                                                <span class="mm-text">책상 / 선반</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="bed_total.fu">침실/베드룸</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="bed_bed.fu?cateEn=BED">
                                                <span class="mm-text">침대</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="bed_ht.fu?cateEn=ht">
                                                <span class="mm-text">협탁</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="bed_dressingTable.fu?cateEn=dressingTable">
                                                <span class="mm-text">화장대</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="bed_chiff.fu?cateEn=chiff">
                                                <span class="mm-text">서랍장</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="decofull.fu">홈데코/리빙</a>
                                    <ul class="sub-menu">
	                                      <li>
	                                          <a href="deco_monthly.fu?cate=월간 카레클린트">
	                                              <span class="mm-text">월간 카레클린트</span>
	                                          </a>
	                                      </li>
	                                      <li>
	                                          <a href="deco_light.fu?cate=조명">
	                                              <span class="mm-text">조명</span>
	                                          </a>
	                                      </li>
	                                      <li>
	                                          <a href="deco_plasticch.fu?cate=PLASTIC 체어">
	                                              <span class="mm-text">PLASTIC 체어</span>
	                                          </a>
	                                      </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">지점안내</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">서울</a>
                                    <ul class="sub-menu">
										<li>
					                        <a href="<%=location%>/blog.fu?location=Gangnam">
					                            <span class="mm-text">강남</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=Hongdae">
					                            <span class="mm-text">홍대</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=MogDong">
					                            <span class="mm-text">목동</span>
					                        </a>
					                    </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">경기</a>
                                    <ul class="sub-menu">
										<li>
					                        <a href="<%=location%>/blog.fu?location=Hanam">
					                            <span class="mm-text">하남</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=BunDang">
					                            <span class="mm-text">분당</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=Dongtan">
					                            <span class="mm-text">동탄</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=Anyang">
					                            <span class="mm-text">안양</span>
					                        </a>
					                    </li>
					                    <li>
					                        <a href="<%=location%>/blog.fu?location=Pyeongtaek">
					                            <span class="mm-text">평택</span>
					                        </a>
					                    </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">커뮤니티</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="qnamain.fu">
                                        <span class="mm-text">Q&A</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="reviewmain.fu">
                                        <span class="mm-text">상품평</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="event_list.fu">Event</a>
                        </li>
                    </ul>
                    <div class="site-info vertical">
                        <div class="site-info__item">
                            <a href="tel:+01223566678"><strong>+01 2235 666 78</strong></a>
                            <a href="mailto:Support@contixs.com">Support@furtrate.com</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>