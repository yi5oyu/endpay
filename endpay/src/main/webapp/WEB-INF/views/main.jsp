<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.1.0/css/datepicker.min.css">
<script src="https://cdn.jsdelivr.net/npm/air-datepicker@2.2.3/dist/js/datepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/assets/css/header.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/menu.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/show.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/spending.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/mypage.css">
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
                <div class="header_box">
                	<img class="logo"src="resources/assets/pic/CashFlow-logo.png">
                </div>
                <div class="info_box">
                    <c:if test="${member != null}">
                    	<div class="user_info">${member.userid}</div>
	        			<div class="href_info">
	                        <a class="" style="display: none">로그인</a>
	                        <a class="" style="display: none">회원가입</a>
	                        <a href="logout">로그아웃</a>
	                    </div>
    				</c:if>
                    <c:if test="${member == null}">
                    	<div class="user_info"></div>
	        			<div class="href_info">
	                        <a class="" href="login">로그인</a>
	                        <a class="" href="newsign">회원가입</a>
	                    </div>
    				</c:if>
                </div>
            </div>
        </div>
	</header>
    <main>
    <section class="menu">
    	<c:if test="${member != null}">
	        <div class="h_menu menu_btn">홈</div>
	        <div class="menu_btn">소비 내역서</div>
	        <div class="menu_btn">지출 작성</div>
	        
	        <div class="menu_btn">마이 페이지</div>
        </c:if>
        <c:if test="${member == null}">
    		<div class="h_menu menu_btn">홈</div>
    		<div class="menu_btn">마이 페이지</div>
    	</c:if>
    </section>
    <section class="contentss">
    
    </section>
</main>
</body>
<script>
	const xhr = new XMLHttpRequest();
	let arr = ["home","show","spending"  ,"mypage"]
	loadContents(0)
	function loadContents(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${arr[i]}`,
	        success: function(response) {
	        	$('.contentss').html($(response).filter('main').html());
	        	if(arr[i]=="mypage"){
	        		const xhr = new XMLHttpRequest();
	        		let arr = ["myinfo","rewriteinfo","myspending"]
	        		loadMyContents(0)
	        		function loadMyContents(j) {
	        		    $.ajax({
	        		        type: 'GET',
	        		        url: `\${arr[j]}`,
	        		        success: function(response) {
	        		            $('.my_info').html($(response).filter('main').html());
	        		        },
	        		        error: function() {
	        		            console.error('Failed to load content.');
	        		        }
	        		    });
	        		}
	        		let a = document.querySelectorAll(".mypage")
	        		for(let j = 0 ;j<a.length ;j++){
	        		    a[j].addEventListener("click",function(){
	        		    	loadMyContents(j)
	        		    })
	        		}
	        	}
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