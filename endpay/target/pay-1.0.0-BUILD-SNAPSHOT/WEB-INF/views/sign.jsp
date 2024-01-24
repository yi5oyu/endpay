<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/assets/css/sign.css">
<main>
    <section class="contents">
        <div class="sign">
            <div class="sign_box">
                <form method="post" action="api/newsign">
                <div class="sign_title">End Pay</div>
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
                            <span>남자</span>
                        </label>
                        <label class="gender_2">
                            <input class="radiogen" type="radio" name="gender" value="여자">
                            <span>여자</span>
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
                    <button class="sign_btn" type="submit">회원가입</button>
                </div>
                </form>
            </div>
        </div>
    </section>
</main>
</html>