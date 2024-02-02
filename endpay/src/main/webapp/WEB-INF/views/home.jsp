<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="home_title home_content">로그인하고 서비스를 즐기세요</div>
            <div class="home_type">
                <div class="h_type_name">주요기능</div>
                <div class="h_type_name">REST API</div>
                <a href="" class="h_type_name">바로 체험하기</a>
            </div>

            <div class="home_explain home_content">

            </div>
        </div>
    </section>
<script>
const xhr = new XMLHttpRequest();
let arr = ["homeapi","homecontent"]
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

    let titles = document.querySelectorAll(".h_title_name")
    let types = document.querySelectorAll(".h_type_name")
    home_btn_event(titles)
    home_btn_event(types)
    function home_btn_event(arr){
        for(let i = 0 ; i<arr.length ;i++){
            arr[i].addEventListener("click", function(){
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