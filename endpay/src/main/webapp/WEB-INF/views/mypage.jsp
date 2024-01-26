<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="my_menu">
                <div class="my_name">
                    <div>idwjkvnw</div>
                    <div>GUEST</div>
                </div>
                <div class="my_home mypage">
                    MY 홈
                </div>
                <div class="my_setting">
                    <div class="setting_title">계정 설정</div>
                    <div class="setting_info mypage">회원 정보</div>
                </div>
                <div class="my_home">로그아웃</div>
            </div>
            <div class="my_info">

            </div>
        </div>
    </section>
</main>
<script>
	const xhr = new XMLHttpRequest();
	let arr = ["myinfo","rewriteinfo"]
	loadContents(0)
	function loadMyContents(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${arr[i]}`,
	        success: function(response) {
	            $('.my_info').html($(response).filter('body').html());
	        },
	        error: function() {
	            console.error('Failed to load content.');
	        }
	    });
	}
	let a = document.querySelectorAll(".mypage")
	for(let i = 0 ;i<a.length ;i++){
	    a[i].addEventListener("click",function(){
	    	loadMyContents(i)
	    })
	}
</script>
</html>