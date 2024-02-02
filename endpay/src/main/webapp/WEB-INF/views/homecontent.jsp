<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
   <div class="h_explain_head">주요 기능</div>
   <div class="h_explain_title">
       <div class="h_title_name" style="background-color: #5cc;">내정보</div>
       <div class="h_title_name">지출</div>
       <div class="h_explain_content">
           <div class="api_box">
				<img class="h_myinfo_img" src="resources/assets/pic/myinfo.png">
            	<img class="h_myspend_img" src="resources/assets/pic/myspend.png">
           </div>
       </div>
   </div>
<script>
	let titles = document.querySelectorAll(".h_title_name")
	home_btn_event(titles)
	    function home_btn_event(arr){
        for(let i = 0 ; i<arr.length ;i++){
            arr[i].addEventListener("click", function(){
            	let img_html = ''
            	if(i==0){
            		img_html += '<img class="h_myinfo_img" src="resources/assets/pic/myinfo.png">'
            		img_html += '<img class="h_myspend_img" src="resources/assets/pic/myspend.png">'
            	}
            	if(i==1){
            		img_html += '<img class="h_show_img" src="resources/assets/pic/show_spending.png">'
                	img_html += '<img class="h_write_img" src="resources/assets/pic/write_spending.png">'
            	}
            	$(".api_box").html(img_html)
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