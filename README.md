<h1>CashFlow</h1> 

### ・ 목차
 - [웹 사이트](#웹-사이트)
 - [개요](#개요)
 - [기술 및 도구](#기술-및-도구)
 - [ERD](#ERD)
 - [Sequence Diagram](#Sequence-Diagram)
 - [기능 구현](#기능-구현)
 - [개선점/후기](#개선점/후기)
## **웹 사이트**
- 무료 도메인 사용: https://내도메인.한국     
~~http://cashflow.kro.kr/pay/cashflow~~   


## **개요**
<h4><i>[소개]</i></h4>
지출관리 웹 사이트<br>
지출 내역을 등록 / 지출 내역 차트 <br>

<h4><i>[기간]</i></h4>
2024.01.16 ~<br>

~~배포: 2024.02.04.~~

<h4><i>[인원]</i></h4>
1명 (개인 프로젝트)

## **기술 및 도구**
<p>
<img src="https://img.shields.io/badge/Java-007396?style=flat-square&logo=java&logoColor=white"/>
<img src="https://img.shields.io/badge/html5-E34F26?style=flat-square&logo=html5&logoColor=white"/> 
<img src="https://img.shields.io/badge/css3-1572B6?style=flat-square&logo=css3&logoColor=white"/> 
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"/> 
<img src="https://img.shields.io/badge/jquery-0769AD?style=flat-square&logo=jquery&logoColor=white"/> 
</p>
<p>
<img src="https://img.shields.io/badge/Spring-6DB33F?style=flat-square&logo=Spring&logoColor=white">
<img src="https://img.shields.io/badge/JSP-black?style=flat-square&logo=java&logoColor=white"> 
<img src="https://img.shields.io/badge/Servlet-008CDD?style=flat-square&logo=Stripe&logoColor=white">
<img src="https://img.shields.io/badge/JSTL-007396?style=flat-square&logo=java&logoColor=white"/>
<img src="https://img.shields.io/badge/AJAX-2E77BC?style=flat-square&logo=Betfair&logoColor=white">
<img src="https://img.shields.io/badge/REST_API-004040?style=flat-square&logo=rest&logoColor=white"/>
</p>
<p>
<img src="https://img.shields.io/badge/JPA-232F3E?style=flat-square&logo=Spreadshirt&logoColor=white"/>
<img src="https://img.shields.io/badge/Spring_Data_JPA-6DB33F?style=flat-square&logo=spring&logoColor=white"/>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=MySQL&logoColor=white"/>  
<img src="https://img.shields.io/badge/Maven-C71A36?style=flat-square&logo=apache-maven&logoColor=white"/>
<img src="https://img.shields.io/badge/Tomcat-F8DC75?style=flat-square&logo=Apache Tomcat&logoColor=black"/>  
<img src="https://img.shields.io/badge/AWS_EC2-232F3E?style=flat-square&logo=Amazon-AWS&logoColor=white">
<img src="https://img.shields.io/badge/AWS_RDS-232F3E?style=flat-square&logo=Amazon-AWS&logoColor=white">
<img src="https://img.shields.io/badge/Amazon_Linux-2023-232F3E?style=flat-square&logo=Amazon&logoColor=white"/>
<img src="https://img.shields.io/badge/Putty-005CFF?style=flat-square&logo=putty&logoColor=white"/>
</p>
<p>
<img src="https://img.shields.io/badge/STS-6DB33F?style=flat-square&logo=Spring&logoColor=white">
<img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white"/>
<img src="https://img.shields.io/badge/VSCode-007ACC?style=flat-square&logo=visual-studio-code&logoColor=white"/>
<img src="https://img.shields.io/badge/Mermaid-0076BF?style=flat-square&logo=mermaid&logoColor=white"/>  
</p>


## **ERD**
<details>
<summary>접기/펼치기</summary>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/c6a947f0-2556-4f10-87ed-fa8afbe7cbb2">
</details>

## **Sequence Diagram**

<details>
<summary>접기/펼치기</summary>
<h4>・ 회원</h4>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/071c7779-78c0-4a65-abf8-6fb05bd4d637">
 
<h4>・ 지출</h4>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/f31130ba-d536-4e4e-ae38-2c7d656c98b8">
</details>

## **기능 구현**
<details>
<summary>접기/펼치기</summary>
 
### 구현 페이지
<h4>・ 로그인 / 회원가입</h4>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/dbad5adf-310d-469a-9e3e-71da6a460212">

<h4>・ 메인 페이지</h4>
<p>- 홈</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/cc64b718-c80a-4cce-8f04-b3dd98541df7">
<p>- 지출 입력</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/df91cb0a-36a8-4d1a-abc5-0e370205715c">
<p>- 지출 확인</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/4678b272-cf49-4e0a-a013-6b2ea7bcd107">
<p>- 마이페이지</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/2cdfb0ba-7f81-476d-a586-4e347bf893f0">

### 기능
<h4>・ REST API</h4>
<p>- 회원</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/18c25ba7-bbbe-4574-813e-6aaaffd32693">
<p>- 지출</p>
<img src="https://github.com/yi5oyu/endpay/assets/111046436/b914e9e2-67b5-48cc-9974-f68bb32c6b46">
</details>

<!-- 
## **업데이트**
### ・ Release (2024.02.04)
<h4>Features</h4>
 - 소비기록 페이징 / 지출 작성 버튼 이벤트 수정 (2024-02-05)
 
<br>
<h4>Bug Fixes</h4>
 - 마이페이지 로그아웃 기능 수정 (2024-02-04)<br>
 - 회원가입 오류 수정 (2024-02-06)
<br>
-->

## **개선점/후기**

- AJAX를 사용해 비동기 방식의 SPA 페이지 구현   
  : 로딩없는 페이지 이동   
  
- AWS EC2(sentOS 계열) 서버에 수동 배포 ([수동 배포 방법](https://github.com/yi5oyu/Study/blob/main/AWS/EC2/2.%20Release))   
  : 코드를 변경할때마다 수동 빌드 > EC2 서버접속 > 배포 Tomcat 서버 OFF > war 파일 이동 > 서버 ON   
   > 빌드 자동화와 무중단 배포 학습 필요   
  
- JPA를 사용한 REST API 구현   
  : @Query 네이티브 SQL 사용
   > QueryDSL 학습 필요(복잡한 쿼리문, 파라미터가 많은 동적쿼리 처리)
  
- 의존성 충돌   
  : 낮은 버전 Spring 사용으로 낮은 버전의 Oracle 사용으로 인한 오류(ORA-25156: old style outer join (+) cannot be used with ANSI joins)
   > MySQL로 변경  
   > Spring Boot로 전환

- HTTP (안전하지 않은 사이트 경고)  
  > HTTPS 인증 필요
<br>

<!-- JPA를 처음 사용하며 [오류](https://github.com/yi5oyu/Study/blob/main/JPA/0.%20Error/Memo.txt)를 접하고 수정<br> -->

<!-- 화면구성, 프로젝트의 구조와 구현 방법에 많은 시간이 쓰임 <br> -->

