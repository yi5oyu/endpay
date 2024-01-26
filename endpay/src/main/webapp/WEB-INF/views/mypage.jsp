<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	    * {
        font-size: 0;
        margin: 0;
    }
    main {
        width: 1080px;
        height: 760px;
        margin: 0 auto;
        /* padding: 10px; */
        background-color: rgba(231, 228, 228, 0.536);
        display: flex;
    }
    .main {
        width: 840px;
        height: 730px;
        margin: 15px;
        background-color: white;
        border-radius: 5px;
    }
    .contents {
        width: 840px;
        height: 730px;
    }
    .my_menu{
        display: inline-block;
        width: 210px;
        height: 700px;
        margin: 15px;
        border-radius: 5px;
        background-color: #5cc4ef70;
    }
    .my_name{
        display: inline-block;
        width: 190px;
        height: 70px;
        margin: 10px;
        /* background-color: black; */
    }
    .my_name > div:nth-child(1){
        font-size: 20px;
        text-align: center;
        height: 40px;
        line-height: 40px;
        font-weight: 900;
    }
    .my_name > div:nth-child(2){
        font-size: 15px;
        text-align: center;
        height: 30px;
        line-height: 30px;
        font-weight: 400;
        color: gray;
    }
    .my_home{
        margin: 10px;
        display: inline-block;
        width: 170px;
        height: 40px;
        line-height: 40px;
        font-size: 18px;
        padding-left: 20px;
        font-weight: 600;
    }
    .my_setting{
        margin: 10px;
        display: inline-block;
        width: 170px;
        height: 200px;
        padding-left: 20px;
    }
    .setting_title{
        height: 40px;
        line-height: 40px;
        font-size: 18px;
        font-weight: 600;
    }
    .setting_info{
        height: 30px;
        line-height: 30px;
        font-size: 16px;
        font-weight: 300;
    }
    
    .my_info{
        vertical-align: top;
        display: inline-block;
        width: 585px;
        height: 700px;
        background-color: #5cc4ef70;
        margin-top: 15px;
        border-radius: 5px;
    }
    .info_title{
        width: 565px;
        height: 60px;
        line-height: 60px;
        font-size: 25px;
        padding-left: 20px;
        font-weight: 600;
        margin: 10px 0;
    }
    .info{
        width: 560px;
        height: 630px;
        margin-left: 25px;
    }
    .info > div{
        display: inline-block;
        height: 55px;
        line-height: 55px;
        font-weight: 600;
        vertical-align: top;
    }
    .info > div:nth-child(n){
        width: 100px;
        font-size: 18px;
        color: gray;
    }
    .info > div:nth-child(2n){
        width: 460px;
        font-size: 18px;
        color: black;
    }
    .info_input{
        vertical-align: top;
        outline: none;
        width: 100%;
        height: 100%;
        font-size: 16px;
        border: 0;
        background-color: transparent;
    }
</style>
<main>
    <section class="contents">
        <div class="main">
            <div class="my_menu">
                <div class="my_name">
                    <div>idwjkvnw</div>
                    <div>GUEST</div>
                </div>
                <div class="my_home mypage">
                    MY 홈
                </div>
                <div class="my_setting">
                    <div class="setting_title">계정 설정</div>
                    <div class="setting_info mypage">회원 정보</div>
                </div>
                <div class="my_home mypage">로그아웃</div>
            </div>
            <div class="my_info">

            </div>
        </div>
    </section>
</main>
<script>
	
</script>
</html>