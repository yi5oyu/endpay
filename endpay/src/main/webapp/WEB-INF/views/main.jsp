<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.1.0/css/datepicker.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/air-datepicker@2.2.3/dist/js/datepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/assets/css/header.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/login.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/sign.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/menu.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/spending.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/show.css">
<style>
	*{
		font-size: 0;
		margin: 0;
	}
</style>
<body>
    <header>
        <div class="head">
            <div class="head_box">
                <div class="header_box"></div>
                <div class="info_box">
                    <div class="user_info">gebsjsd 님</div>
                    <div class="href_info">
                        <a class="menu_btn">로그인</a>
                        <a class="menu_btn">회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main>
    <section class="menu">
        <div class="h_menu menu_btn">소비 내역서</div>
        <div class="menu_btn">지출 작성</div>
    </section>
    <section class="contentss">
    
    </section>
</main>
</body>
<script>
	const xhr = new XMLHttpRequest();
	let arr = ["nn","nnn","sh","sp"]
	loadContents(0)
	function loadContents(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${arr[i]}`,
	        success: function(response) {
	        	console.log($(response).filter('html').html())
	            $('.contentss').html($(response).filter('main').html());
	        },
	        error: function() {
	            console.error('Failed to load content.');
	        }
	    });
	}
	let a = document.querySelectorAll(".menu_btn")
	for(let i = 0 ;i<a.length ;i++){
	    a[i].addEventListener("click",function(){
	        loadContents(i)
	    })
	}
	
	
</script>
<script type="text/javascript" src="resources/assets/js/menu.js"></script>

</html>