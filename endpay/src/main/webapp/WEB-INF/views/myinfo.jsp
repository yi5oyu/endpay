<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<main>
    <div class="info_title">회원 정보</div>
    <div class="info">
        <div>회원번호</div>
        <div>${member.mid}</div>
        <div>아이디</div>
        <div>${member.userid}</div>
        <div>비밀번호</div>
        <div>${member.userpw}</div>
        <div>이름</div>
        <div>${member.uname}</div>
        <div>연락처</div>
        <div>${member.phone}</div>
        <div>이메일</div>
        <div>${member.email}</div>
        <div>회원 등급</div>
        <div>${member.grade}</div>
        <div>성별</div>
        <div>${member.gender}</div>
        <div>가입일</div>
        <div>${member.udate}</div>
    </div>
</main>