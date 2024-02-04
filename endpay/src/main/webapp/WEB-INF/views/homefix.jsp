<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
   <div class="h_explain_head">CHANGLOG</div>
   <div class="h_explain_title">
       <div class="h_title_name" style="background-color: #5cc;">HISTORY</div>
       <div class="h_title_name">feature</div>
       <div class="h_title_name">bug</div>
       <div class="h_explain_content">
           <div class="api_box">
				
           </div>
       </div>
   </div> 
<script>
	const xhr = new XMLHttpRequest();
	let titles = document.querySelectorAll(".h_title_name")
	let charr = ["ch_history","ch_feature","ch_bug"]
	loadchs(0)
	function loadchs(i) {
	    $.ajax({
	        type: 'GET',
	        url: `\${charr[i]}`,
	        success: function(response) {
	        	$('.api_box').html($(response).filter('main').html())
	        },
	        error: function() {
	            console.error('Failed to load content.');
	        }
	    })
	}
	
	home_btn_event(titles)
    function home_btn_event(arr){
    for(let i = 0 ; i<arr.length ;i++){
        arr[i].addEventListener("click", function(){
        	loadchs(i)
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