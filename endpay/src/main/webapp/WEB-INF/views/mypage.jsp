<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="my_menu">
                <div class="my_name">
                    <div>${member.userid}</div>
                    <div>${member.grade}</div>
                </div>
                <div class="my_home mypage">MY 홈</div>
                <div class="my_setting">
                    <div class="setting_title">계정 설정</div>
                    <div class="setting_info mypage">회원 정보</div>
                    <div class="setting_info mypage">소비 기록</div>
                </div>
                <div class="my_home logout">로그아웃</div>
            </div>
            <div class="my_info">

            </div>
        </div>
    </section>
    <script>
    	document.querySelector(".logout").addEventListener("click", function(){
    		window.location.href="logout"
    	})
	</script>
</main>
</html>