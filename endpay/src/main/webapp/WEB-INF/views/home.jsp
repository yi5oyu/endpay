<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="home_title home_content">
                <c:if test="${member != null}">
            		CashFlow 지출 관리 웹 사이트
            	</c:if>
            	<c:if test="${member == null}">
            		자동 로그인으로 CashFlow 체험하기
            		<div class="h_auto_login" style="background-color: #f14a4a; float:right" onclick="auto_login()">자동 로그인</div>
            	</c:if>
            </div>
            <div class="home_type">
                <div class="h_type_name" style="background-color: #5cc;" >주요기능</div>
                <div class="h_type_name">REST API</div>
                <div class="h_type_name">CHANGLOG</div>
<!--                 <div class="h_type_name">피드백 하기</div> -->
                
            </div>

            <div class="home_content home_explain">

            </div>
        </div>
    </section>
<script>
function auto_login(){
	$.ajax({
        type: "GET",
        url: "api/members/login",
        async : true,
        data: "userid=test&userpw=123",
        dataType:'html',
        success: function (response) {
            console.log("Success:", response)
            window.location.href="cashflow"
        },
        error: function (error) {
            console.error("Error:", error)
            window.location.href="login"
        }
    })
}
	const xhr = new XMLHttpRequest();
	let arr = ["homecontent","homeapi","homefix"]
	loadhomes(0)
	function loadhomes(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${arr[i]}`,
	        success: function(response) {
	        	$('.home_explain').html($(response).filter('main').html())
	        },
	        error: function() {
	            console.error('Failed to load content.');
	        }
	    })
	}

    let types = document.querySelectorAll(".h_type_name")
   
    home_btn_event(types)
    function home_btn_event(arr){
        for(let i = 0 ; i<arr.length ;i++){
            arr[i].addEventListener("click", function(){
            	loadhomes(i)
                arr[i].style.backgroundColor = "#5cc"
                for(let j = 0 ;j<arr.length ;j++)
                    if(i!=j)
                    arr[j].style.backgroundColor = "#5cc4ef"
            })
        }
    }

</script>    
</main>
</html>