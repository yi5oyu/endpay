<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="home_title">로그인하고 서비스를 즐기세요</div>
            <div class="home_type">
                <div class="h_type_name">주요기능</div>
                <div class="h_type_name">REST API</div>
                <a href="" class="h_type_name">바로 체험하기</a>
            </div>

            <div id="home_content">

            </div>
        </div>
    </section>
<script>
	const xhr = new XMLHttpRequest();
	let arr = ["homeapi","homecontent"]
	loadhomes(0)
	function loadhomes(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${arr[i]}`,
	        success: function(response) {
	        	$('#home_content').html($(response).filter('main').html())
	        	
	        	
	        },
	        error: function() {
	            console.error('Failed to load content.');
	        }
	    })
	}

    let titles = document.querySelectorAll(".h_title_name")
    let types = document.querySelectorAll(".h_type_name")
    home_btn_event(titles)
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