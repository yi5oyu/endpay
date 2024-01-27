<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<main>
	<div class="spend_head">
	    <div class="spend_title">소비 기록</div>
	    
	</div>
	<div class="spend_main">
	    <div class="spend_main_title">
	        <div class="spend_date spend_row_head">날 짜</div>
	        <div class="spend_money spend_row_head">금 액</div>
	        <div class="spend_ex spend_row_head">구 분</div>
	        <div class="spend_con spend_row_head">항 목</div>
	    </div>
	    <div class="spend_rows">
	        <div class="spend_row">
	            <div class="spend_date">2024-01-27</div>
	            <div class="spend_money spend_row_margin">100,000,000</div>
	            <div class="spend_ex spend_row_margin">비정규지출</div>
	            <div class="spend_con spend_row_margin">교육</div>
	        </div>
	    </div>
	    <div class="spend_footer" id="spend_page">
	        <div class="pagination">
	            <a href="#">1</a>
	            <a href="#">2</a>
	            <a href="#">3</a>
	            <a href="#">4</a>
	            <a href="#">5</a>
	        </div>
	    </div>
	</div>
	<div class="spend_footer" id="spend_btns">
	    <button class="spend_btn">수정</button>
	</div>
</main>