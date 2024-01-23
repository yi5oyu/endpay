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
                <form method="post" action="/api/login">
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
                    <button class="login_btn" type="submit">로그인</button>
                </div>
                </form>
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
</main>

</html>