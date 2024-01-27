<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<main>
<style>

</style>
    <div class="info_title">사용자 정보 수정</div>
    <div class="info">
        <div>회원번호</div>
        <div class="mid">${member.mid}</div>
        <div>아이디</div>
        <div><input class="info_input" type="text" name="userid" value="${member.userid}"/></div>
        <div>비밀번호</div>
        <div><input class="info_input" type="text" name="userpw" value="${member.userpw}"/></div>
        <div>이름</div>
        <div><input class="info_input" type="text" name="uname" value="${member.uname}"/></div>
        <div>연락처</div>
        <div><input class="info_input" type="text" name="phone" value="${member.phone}"/></div>
        <div>이메일</div>
        <div><input class="info_input" type="text" name="email" value="${member.email}"/></div>
        <div>회원 등급</div>
        <div>${member.grade}</div>
        <div>성별</div>
        <div>${member.gender}</div>
        <div>가입일</div>
        <div>${member.udate}</div>
    </div>
    <div class="info_btn_box">
    	<button class="info_submit_btn" onclick="rewrite()">수정</button>
    	<button class="info_submit_btn" onclick="deletebyid()">삭제</button>
    </div>
    <script>
    	function rewrite(){
    		// ajax로 controller에 info_input value들 전달
    		let userData = {
 			mid: $(".mid").text(),
            userid: $("input[name='userid']").val(),
            userpw: $("input[name='userpw']").val(),
            uname: $("input[name='uname']").val(),
            phone: $("input[name='phone']").val(),
            email: $("input[name='email']").val()
        	}
            $.ajax({
                type: "PUT",
                url: "api/members/update",
                async : true,
                data: JSON.stringify(userData),
                headers: {
                    'Accept': 'application/json;charset=UTF-8',
                    'Content-Type': 'application/json; charset=UTF-8'
                },
                dataType:"json",
                success: function (response) {
                    alert("수정 성공")
                    console.log("Success:", response)
                },
                error: function (error) {
                    alert("수정 실패")
                    console.error("Error:", error)
                }
            })
    	}
    	
    	function deletebyid(){
    		// ajax로 controller에 info_input value들 전달
    		let mid = $(".mid").text()
            $.ajax({
                type: "DELETE",
                url: "api/members/delete/"+mid,
                async : true,
                success: function (response) {
                    // 성공 시 처리
                    alert("삭제 성공")
                    console.log("Success:", response)
                },
                error: function (error) {
                    // 실패 시 처리
                    alert("삭제 실패")
                    console.error("Error:", error)
                }
            })
    	}
    </script>
</main>
