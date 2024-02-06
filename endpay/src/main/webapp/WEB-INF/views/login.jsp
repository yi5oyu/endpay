<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/assets/css/login.css">
    <div class="login">
        <div class="login_box">
            <a class="login_title" href="cashflow"><img class="logo"src="resources/assets/pic/CashFlow-logo.png"></a>
             <div class="login_row">
                 <input class="login_input" type="text" name="userid" placeholder="아이디" />
             </div>
             <div class="login_row">
                 <input class="login_input" type="text" name="userpw" placeholder="비밀번호" />
             </div>
             <div class="login_row login_a">
             	 <a href="cashflow">홈</a>
                 <a href="newsign">회원가입</a>
             </div>
             <div class="login_row">
                 <button class="login_btn">로그인</button>
             </div>
            <div class="login_row sns_btns">
<!--             
                <a href="/naver/login" class="sns_btn naver_bg">
                    <span class="naver_icon">N</span>
                </a>
                <a href="/cacao/login" class="sns_btn cacao_bg">
                    <span class="cacao_icon">C</span>
                </a>
                <a href="/google/login" class="sns_btn google_bg">
                    <span class="google_icon">G</span>
                </a>
-->
            </div>
        </div>
    </div>
    <script>
	   let logs = document.querySelectorAll(".login_input")
	   for(let i = 0 ; i<logs.length ;i++){
	        logs[i].addEventListener("focus",function(){
	            logs[i].style.border = "2px solid #5cc4ef"
	        })
	        logs[i].addEventListener("focusout",function(){
	            logs[i].style.border = "none"
	        })
	   }
       document.querySelector(".login_btn").addEventListener("click", function(){
           let b = true
           for(let i = 0;i<logs.length ;i++){
               if(logs[i].value == "")
                   b = false
           }
           if(b){
        	   sendAjaxRequest()
           } else{
               alert("아이디와 비밀번호를 입력해주세요")
           }
      })
     function sendAjaxRequest() {
         let userData = 
             "userid="+$("input[name='userid']").val()+
             "&userpw="+$("input[name='userpw']").val()

         $.ajax({
             type: "GET",
             url: "api/members/login",
             async : true,
             data: userData,
             dataType:'html',
             success: function (response) {
                 console.log("Success:", response)
                 window.location.href="cashflow"
             },
             error: function (error) {
                 console.error("Error:", error)
                 alert("아이디/비밀번호를 다시 확인해주세요")
                 window.location.href="login"
             }
         })
     }
 	</script>

</html>