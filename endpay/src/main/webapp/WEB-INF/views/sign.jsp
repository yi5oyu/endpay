<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/assets/css/sign.css">
<main>
    <section class="contents">
        <div class="sign">
            <div class="sign_box">
                <a href="login" class="sign_title">End Pay</a>
                <div class="sign_row">
                    <input class="sign_input" type="text" name="userid" value="test" />
                </div>
                <div class="sign_row">
                    <input class="sign_input" type="text" name="userpw" value="123" />
                </div>
                <div class="sign_row">
                    <input class="sign_input" type="text" name="uname" value="홍길동" />
                </div>
                <div class="sign_row">
                    <div class="gender">
                        <label class="gender_2">
                            <input class="radiogen" type="radio" name="gender" value="남자" checked>
                            <span class="radio_span">남자</span>
                        </label>
                        <label class="gender_2">
                            <input class="radiogen" type="radio" name="gender" value="여자">
                            <span class="radio_span">여자</span>
                        </label>                
                    </div>
                </div>
                <div class="sign_row">
                    <input class="sign_input" type="text" name="phone" value="010-1111-2222" />
                </div>
                <div class="sign_row">
                    <input class="sign_input" type="text" name="email" value="abcdef@gmail.com" />
                </div>
                <div class="sign_row">
                    <button class="sign_btn" onclick="sendAjaxRequest()">회원가입</button>
                </div>
            </div>
        </div>
    </section>
     <script>
     radioEvent()
     function radioEvent() {
         let gender = document.querySelectorAll(".gender_2")
         let radio = document.querySelectorAll(".radiogen")
         let span = document.querySelectorAll(".radio_span")
         for(let i = 0 ;i<gender.length ;i++){
             gender[i].addEventListener("click",function(){
                 radio[i].checked = true
                 if(i==0){
                     span[0].style.backgroundColor = "#1ac333"
                     span[1].style.backgroundColor = "white"
                 }
                 else{
                     span[1].style.backgroundColor = "#1ac333"
                     span[0].style.backgroundColor = "white"
                 }
                     
             })
         }
     }
     
     function sendAjaxRequest() {
         // 입력값 가져오기
         let userData = {
             userid: $("input[name='userid']").val(),
             userpw: $("input[name='userpw']").val(),
             uname: $("input[name='uname']").val(),
             gender: $("input[name='gender']:checked").val(),
             phone: $("input[name='phone']").val(),
             email: $("input[name='email']").val()
         }
     
         $.ajax({
             type: "POST",
             url: "api/members/newsign",
             async : true,
             data: JSON.stringify(userData),
             headers: {
                 'Accept': 'application/json;charset=UTF-8',
                 'Content-Type': 'application/json; charset=UTF-8'
             },
             dataType:"json",
             success: function (response) {
                 // 성공 시 처리
                 alert("회원 가입 성공")
                 window.location.href = "login"
                 console.log("Success:", response)
             },
             error: function (error) {
                 // 실패 시 처리
                 alert("실패")
                 console.error("Error:", error)
             }
         })
     }
 	</script>
</main>
</html>
