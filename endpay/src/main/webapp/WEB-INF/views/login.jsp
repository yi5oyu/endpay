<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/assets/css/login.css">
<main>
    <section class="contents">
        <div class="login">
            <div class="login_box">
                <div class="login_title">End Pay</div>
	                <div class="login_row">
	                    <input class="login_input" type="text" name="userid" placeholder="아이디" />
	                </div>
	                <div class="login_row">
	                    <input class="login_input" type="text" name="userpw" placeholder="비밀번호" />
	                </div>
	                <div class="login_row">
	                    a태그로 sign 페이지이동
	                </div>
	                <div class="login_row">
	                    <button class="login_btn" onclick="sendAjaxRequest()">로그인</button>
	                </div>
                <div class="login_row sns_btns">
                    <a href="/naver/login" class="sns_btn naver_bg">
                        <span class="naver_icon">N</span>
                    </a>
                    <a href="/cacao/login" class="sns_btn cacao_bg">
                        <span class="cacao_icon">C</span>
                    </a>
                    <a href="/google/login" class="sns_btn google_bg">
                        <span class="google_icon">G</span>
                    </a>
                </div>
            </div>
        </div>
    </section>
         <script>
     function sendAjaxRequest() {
         // 입력값 가져오기
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
                 // 성공 시 처리
                 loadContents(0)
                 console.log("Success:", response)
             },
             error: function (error) {
                 // 실패 시 처리
                 loadContents(1)
                 console.error("Error:", error)
             }
         })
     }
 	</script>
</main>

</html>