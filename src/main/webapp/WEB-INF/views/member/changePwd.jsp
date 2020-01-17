<%@include file="/WEB-INF/views/header/fu_header2.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
	    var responseMessage = "<c:out value="${message}" />";
	    if(responseMessage != ""){
	        alert(responseMessage)
	    }
	}); 
</script>
<script type="text/javascript">
	
	function checkEmail(cp){
		var f = document.searchPassword;
		var pwd  = f.pwd.value;
		var pwdcheck  = f.pwdcheck.value;
		if(pwd=="" || pwd==null){
			alert("패스워드를 입력하세요을 입력하세요");
			f.pwd.focus();
			return;
		}
		if(pwdcheck != pwd){
			alert("패스워드가 다릅니다 패스워드를 확인해주세요");
			f.pwd.focus();
			return;
		}	
		f.action = cp+"/changePwd_ok.fu";
		f.submit();
	}	
	
</script>

      <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="<%=cp %>/resources/assets/img/login/login.jpg">
            <div class="container">
                <div class="row">
                 	<div class="col-6 col-md-4" style="text-align: center">
                    </div> 
                    <div class="col-6 col-md-4" style="text-align: center">
                        <h1 class="page-title">패스워드찾기</h1>
                    </div>     
                </div>
              </div>
        </section>
        <!-- Breadcrumb area End -->
        
        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--75 pb--80">
                <div class="container">
                	<div class="row">
                		<div class="col-md-4">       			
                		</div>
                		<div class="col-md-4">
                			<div class="login-box">
                				<h3 class="heading__terriary mb--30" style="text-align: center">패스워드찾기</h3>
               					<form class="form form--login"  method="post" name="searchPassword">
               					  <div class="form__group mb--20">
                                       <input type="hidden" value="${email}" name="email">
                                       <label class="form__label" for="username_email"><b>새 패스워드</b></label>
                                       <input type="password" class="form__input" id="username_email" name="pwd" style="size: 50px">
                                       <label class="form__label" for="username_email"><b>패스워드 확인 </b></label>
                                       <input type="password" class="form__input" id="username_email" name="pwdcheck" style="size: 50px">
                                  </div>
								   <div class="form__group mb--20">            
		                                <input type="button" class="form__input" value="패스워드변경" style="background-color: #FF5151; font-size:13pt; color:#ffffff;" onclick="checkEmail('<%=cp%>');">    
		                           </div>
                             		</form>
               					<br/>
                			</div>
                		</div>
                	</div>
                </div>
            </div>
<%@include file="/WEB-INF/views/footer/fu_footer.jsp"%>