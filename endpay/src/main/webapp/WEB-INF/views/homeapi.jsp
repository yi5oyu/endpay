<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
   <div class="h_explain_head">API 문서</div>
   <div class="h_explain_title">
       <div class="h_title_name h_api_name">Member</div>
       <div class="h_title_name h_api_name">Spending</div>
       <div class="h_explain_content">
           <div class="api_box">
               
           </div>
       </div>
   </div>
<script>
	let titles = document.querySelectorAll(".h_title_name")
	home_btn_event(titles)
	    function home_btn_event(arr){
        for(let i = 0 ; i<arr.length ;i++){
            arr[i].addEventListener("click", function(){
            	$(".api_box").html(loadhtml(i))
                arr[i].style.backgroundColor = "#5cc"
                for(let j = 0 ;j<arr.length ;j++)
                    if(i!=j)
                    arr[j].style.backgroundColor = "#5cc4ef"

            })
        }
    }
	function loadhtml(i){
		let html = ''
		if(i==1){
	        html += create_html("POST", "/api/spending", "saveSpending")
	        html += create_html("GET", "/api/spending", "findSpendings")
	        html += create_html("GET", "/api/spending/{sid}", "findSpending")
	        html += create_html("GET", "/api/spending/{mid}", "findMidSpendings")
	        html += create_html("GET", "/api/spending/{mid}/{startDate}/{endDate}", "dateSpendings")
	        html += create_html("GET", "/api/spending/{mid}/{year}", "monthsSpendings")
	        html += create_html("DELETE", "/api/spending", "deleteSpending")
		}
		if(i==0){
	        html += create_html("POST", "/api/members", "saveMember");
	        html += create_html("GET", "/api/members", "findMembers");
	        html += create_html("GET", "/api/members/{mid}", "findMember");
	        html += create_html("GET", "/api/members/login?userid={userid}&userpw={userpw}", "checkMember");
	        html += create_html("PUT", "/api/members", "updateMember");
	        html += create_html("DELETE", "/api/members/{mid}", "deleteMember");
		}
		return html
	}
    function create_html(method, text, apiMethod) {
    	let letter = ""
    	if(method == "GET"){
    		letter = 'get'
    	}else if(method == "POST"){
    		letter = 'post'
    	}else if(method == "PUT"){
    		letter = 'put'
    	}else
    		letter = 'del'
    		
    	return (
            '<div class="api_docu api_' + letter + '">' +
            '    <div class="api_icon api_' + letter + '_icon">' + method + '</div>' +
            '    <div class="api_text">' + text + '</div>' +
            '    <div class="api_method">' + apiMethod + '</div>' +
            '</div>'
        )
    }
</script>
</main>
</html>