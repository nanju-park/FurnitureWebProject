<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@include file="/WEB-INF/views/header/fu_header2.jsp" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%	
	request.setCharacterEncoding("UTF-8");
	int map_sumMoney = 0;	
%> 


<script type="text/javascript">

$(document).ready(function(){
		// 상품별 +버튼 추가할때 수량 증가
		$("[id ^='add']").click(function(e){
			var id_check = $(this).attr("id");			
			var lastNum = id_check.substr(id_check.length - 1)
			e.preventDefault();				
			var stat = $('#qty'+lastNum).val();				
			var num = parseInt(stat,10);
			num++;
			if(num>5){
			alert('더이상 늘릴수 없습니다.');
				num = 5;
				return;
			}
			
			$('#qty'+lastNum).val(num);
			//버튼별 데이터 움직이는거 확인 
			var item_price = $("#item_price"+lastNum).val();	
			item_price = item_price.substr(0, item_price.length -1); 
			item_price = Number(item_price)
			var totalItem_price_Num = item_price*num;		
			
			totalItem_price = String(totalItem_price_Num)+"원"
			$('#totalItem_price'+lastNum).val(totalItem_price);
			var map_sumMoney = $('#map_sumMoney').val();
			map_sumMoney = map_sumMoney.substr(0,map_sumMoney.length-1);
			var map_sumMoney_Num = Number(map_sumMoney); 
			var totalNum = map_sumMoney_Num + item_price;
			totalNum = String(totalNum)+"원";
			$('#map_sumMoney').val(totalNum);
			$('#map_allSum').val(totalNum);
		});	
		// 상품별 - 버튼 추가할때 수량 차감
		$("[id ^='min']").click(function(e){		
			var id_check = $(this).attr("id");
			var lastNum = id_check.substr(id_check.length-1)
			e.preventDefault();
			var stat = $('#qty'+lastNum).val();		
			var num = parseInt(stat,10);
			num--;
			if(num<1){
			
				alert('더이상 내릴수 없습니다.');
				num = 1;	
				return;
			}		
			$('#qty'+lastNum).val(num);				
			var item_price = $("#item_price"+lastNum).val();	
			item_price = item_price.substr(0, item_price.length -1); 
			item_price = Number(item_price)
			var totalItem_price = item_price*num;
			totalItem_price = String(totalItem_price)+"원"				
			$('#totalItem_price'+lastNum).val(totalItem_price);
			var map_sumMoney = $('#map_sumMoney').val();
			map_sumMoney = map_sumMoney.substr(0,map_sumMoney.length-1);
			var map_sumMoney_Num = Number(map_sumMoney); 
			var totalNum = map_sumMoney_Num-item_price;
			totalNum = String(totalNum)+"원";
			$('#map_sumMoney').val(totalNum);
			$('#map_allSum').val(totalNum);
		});
		
		
		
});

</script>

<script type="text/javascript">


	var data;
	
	function clickevent(eventdata){
		
		data = new Array();
		
		$('#productModal').modal();	
		//반복하여 다가져오기 
		var arrayQty =  new Array();
		var arraytotalItem_price =  new Array();
		$("[id^='qty']").each(function(indexQty){
			arrayQty[indexQty] = $(this).val();
		});
		$("[id^='totalItem_price']").each(function(indexSumMoney){
			arraytotalItem_price[indexSumMoney] = $(this).val();
		});
		for (var i = 0; i < arrayQty.length; i++) {		
			data[i]= "";		
			data[i] = arrayQty[i]+":"+arraytotalItem_price[i];
		}
	}
	function cartsubmit(){
		location.href="<%=cp%>/payment.fu?data="+data;		
	}
	
	
	// 상품 삭제 javascript  	
	var id;
	function clickremove() {	
		$("[id ^= 'removeItem']").click(function(){
			$('#removeModal').modal();
			id = $(this).attr("id");		
			id = id.substr(id.length-1);
		});
	}	
	function removeItem() {		
		location.href = "<%=cp%>/deletecart.fu?id="+id;
	}
	
	// 카트 비우기 javascript  
	function cleanCartModal(){
		
		$('#removeClear').modal();
	}
	
	function cleanCart() {
		location.href = "<%=cp%>/removeAllcart.fu";

	}
	
	
</script>

 <!-- Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="<%=cp %>/resources/image/홈데코리빙.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">Cart</h1>
                        <ul class="breadcrumb">
                            <li><a href="home.fu">Home</a></li>
                            <li class="current"><span>Cart</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
		<!--  Modal start  -->
	    <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 pt-md--40 pb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mb-md--50">
                          <c:choose >
                             <c:when test="${empty cartlist}">
                                  <b>장바구니가 비어있습니다.</b>
                             </c:when>
                              <c:otherwise>
                              <form action=""  name="form" method="post">
                                <div class="row no-gutters">
                                    <div class="col-12">
                                        <div class="table-content table-responsive">
                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                        <th class="text-left">상품정보</th>
                                                        <th>판매가</th>
                                                        <th style="text-align: center">수량</th>
                                                        <th style="text-align: center">합계</th>
                                                    </tr>
                                                </thead>
                                                <tbody>				                                
													<%
				                                	 	List<String> cartlist=(List<String>)request.getAttribute("cartlist");
			                                        	if(cartlist!=null){
			                                        		Iterator iterator=cartlist.iterator();
			                                        		int buttonIndex = 0; 
			                                        		int i=0;
			                                        		while(iterator.hasNext()){
			                                        			String result=(String)iterator.next();
			                                        			String[] value=result.split(":");
			                                        			value[2]  = value[2].replaceAll(",","");			                                        			
				                                    %>
				                                    
				                                    
													<tr>
                                                        <td class="product-remove text-left"><input type="button" id="removeItem<%=buttonIndex%>" style="border: none; background-color: rgb(255,255,255);" class="la la-remove" value="X" onclick="clickremove();"></td>
                                                        <td class="product-thumbnail text-left">
                                                             <img src="<%=cp %><%=value[3] %>" alt="Product Thumnail">
                                                        </td>
                                                        <td class="product-name text-left wide-column">
                                                            <h3>
                                                                <br/><%=value[1] %><br/>
                                                               	<font style="color: rgb(255,81,81);">option</font> : <%=value[4] %>
                                                            </h3>
                                                        </td>
                                                        <td class="product-price" >
                                                            <span class="product-price-wrapper">
                                                                	&nbsp;&nbsp;<input type="text" value="<%=value[2] %>원" id="item_price<%=buttonIndex%>" style="border: none;text-align: center;"/>
                                                                </span>
                                                            </span>
                                                        </td>
                                                        
                                                        <td class="product-quantity" style="padding-top: 33px;">     
                                                         	<button type="button" id="add<%=buttonIndex%>" class="btn-light" style="width: 15px;height: 20px;border: none">+</button>                                                                                                                                      	   		
                                                	   		<input  type="text"   id="qty<%=buttonIndex%>" name="qty-2" value="1" min="1" style="width: 10px;height: 20px;border: none;text-align: right">                    
                                                	   		<button type="button" id="min<%=buttonIndex%>" class="btn-light" style="width: 13px;height: 20px;border: none">-</button>   
                                                        <td class="product-total-price" style="padding-top: 33px;">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">
                                                                	<input type="text" value="<%=value[2] %>원" id="totalItem_price<%=buttonIndex%>" style="border: none;text-align: center"/>
                                                              </span>
                                                            </span>
                                                        </td>
                                                    </tr>
   													<% 
   													  map_sumMoney += Integer.parseInt(value[2]);
   													  buttonIndex++;
   													%>
   													<%}       	
                                   				    }%> 			   
	                                                </tbody>
	                                            </table>
	                                        </div>  
	                                    </div>
	                                </div>
	                                <div class="row no-gutters border-top pt--20 mt--20">
	                                    <div class="col-sm-6">
	                                        <div class="coupon">
	                                           <!--  <input type="text" id="coupon" name="coupon" class="cart-form__input" placeholder="Coupon Code">
	                                            <button type="submit" class="cart-form__btn">Apply Coupon</button> -->
	                                      	 </div>
		                                    </div>
		                                    <div class="col-sm-6 text-sm-right">
		                                        <input type="button" class="cart-form__btn" onclick="cleanCartModal()" value="카트비우기" style="border: none">
		                                    </div>
		                                </div>
		                            </form>                              
                          	</c:otherwise>
                          </c:choose>
                        </div>
						
                        <div class="col-lg-4">
                            <div class="cart-collaterals">
                                <div class="cart-totals">
                                    <h5 class="font-size-14 font-bold mb--15">Cart totals</h5>
                                    <div class="cart-calculator">
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>총 상품금액</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>
                                            	<c:if test="${not empty cartlist }">
                                            		<input type="text" value="<%=map_sumMoney%>원" id="map_sumMoney" style="border: none;background-color: rgb(246,246,246);text-align: right;" /> 
                                                </c:if>
                                                <c:if test="${empty cartlist }">
                                            		<input type="text" value="0원" id="map_sumMoney" style="border: none;background-color: rgb(246,246,246);text-align: right;" /> 
                                               	</c:if>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>배송비</span>
                                            </div>
                                            <div class="cart-calculator__item--value" >
                                                <span>
                                                	<input type="text" value="+0원" id="map_sumMoney" style="border: none;background-color: rgb(246,246,246);text-align: right;"/>       	
                                                </span>
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item order-total">
                                            <div class="cart-calculator__item--head">
                                                <span>결제예정금액 </span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span class="product-price-wrapper">
                                              	<c:if test="${not empty cartlist }">
                                              		<input type="text" value="<%=map_sumMoney%>원" style="border: none;background-color: rgb(246,246,246);text-align: right" id="map_allSum"/>
                                                </c:if>
                                                <c:if test="${empty cartlist }">
                                              		<input type="text" value="0원" style="border: none;background-color: rgb(246,246,246);text-align: right" id="map_allSum"/>
                                                </c:if>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>                             
                               	<div name="addcart" class="btn btn-size-lg" onclick="clickevent()" style="width: 370px">
	                                   상품주문
	                            </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <!-- Main Content Wrapper Start -->                     
       <!-- Qicuk View Modal Start -->
        <div class="modal fade product-modal" id="productModal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document" style="width: 300">
            <div class="modal-content">
              <div class="modal-body" align="center">
              <br><br><br>
                	상품을 주문하시겠습니까?
                <br>
                <button class="btn btn-size-sm" onclick="cartsubmit()">예</button>&nbsp;
                <button class="btn btn-size-sm"  data-dismiss="modal">아니오</button>     
              	<br><br><br>                      
              </div>
            </div>
          </div>
        </div>
        
        <!-- Qicuk View Modal End -->
        <!-- Cart Item Delete Modal Start -->
        <div class="modal fade product-modal" id="removeModal" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="modal-dialog" role="document" style="width: 300">
        		<div class="modal-content">
        			<div class="modal-body" align="center"><br><br><br>
    					해당 상품을 카트에서 지우겠습니까?<br><br/>
    					<button class="btn btn-size-sm" onclick="removeItem()">예</button>
    					<button class="btn btn-size-sm"  data-dismiss="modal">아니오</button>
    					<br><br><br>
    				</div>
    			</div>
    		</div>
    	</div>
        <!--Cart Item Delete Modal End -->
        
        <!-- Cart Item All Clear Modal Start -->
        <div class="modal fade product-modal" id="removeClear" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="modal-dialog" role="document" style="width: 300">
        		<div class="modal-content">
        			<div class="modal-body" align="center"><br><br><br>
    					모든 상품을 카트에서 지우겠습니까?<br><br/>
    					<button class="btn btn-size-sm" onclick="cleanCart();">예</button>
    					<button class="btn btn-size-sm"  data-dismiss="modal">아니오</button>
    					<br><br><br>
    				</div>
    			</div>
    		</div>
    	</div>
        <!--Cart Item All Clear Modal End -->
        
        
<%@include file="/WEB-INF/views/footer/fu_footer.jsp"%>