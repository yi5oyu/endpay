<h1>CashFlow</h1> 

### ・ 프로젝트 개요

<h4><i>[목표 및 개발]</i></h4>
지출 내역을 등록하고 등록된 지출 내역을 주,월,년 별로 출력 <br>
JPA 사용 / AWS EC2를 이용한 배포

<h4><i>[기간]</i></h4>
2024.01.16 ~<br>

<h4><i>[소개]</i></h4>

CashFlow는 지출정보를 입력하고 지출 내역 통계를 확인하는 웹 서비스를 제공
<br>

<br>
회원가입한 회원은 마이페이지로 회원정보 관리, 작성한 레시피, 찜한 레시피 목록을 확인할 수 있습니다.<br>
검색창에 검색어 입력 / 각 페이지 별 존재하는 해시태그를 클릭하면 검색 페이지에 해당 검색어 해당되는 게시물이 최신순 / 조회순으로 보여집니다.<br>
작성된 레시피와 후기들을 최신순으로 게시판 페이지에 보여지고 각 게시글을 클릭하면 해당 레시피 / 후기 페이지로 이동합니다. <br>
<br>
<h4><i>[목표 및 개발]</i></h4>
<!-- 
3차에 걸친 프로젝트를 통해 팀원 모두가 개발의 전과정을 경험 하는 것을 목표로 했습니다.<br>
<br>
・ 1차 프로젝트<br>
&nbsp; 스토리보드와 일정을 수립하고 VSCode를 이용하여 HTML과 CSS로 UI를 작성했습니다.<br>
&nbsp; @Media css를 이용하며 반응형 웹페이지를 작성했습니다.<br>
・ 2차 프로젝트<br>
&nbsp; 페이지 별 요구사항을 취합해 스토리보드를 수정하고 반응형 웹 페이지와 Javascript를 이용해 동적 페이지 구현했습니다. <br>
&nbsp; 게시판 페이지의 클릭 이벤트로 AJAX로 JSP를 호출했습니다. <br>
&nbsp; 반복적인 화면영역을 Tiles를 이용해 Header, Footer, content로 레이아웃 템플릿을 구분하고 사용했습니다.<br> 
・ 3차 프로젝트<br>
&nbsp; 페이지 별 주요 기능을 구현하고 데이터베이스를 설계하고 Mybatis를 사용해 DB에 접근해 CURD 기능을 구현했습니다.<br>
&nbsp; 세션 쿠키를 이용한 팝업창과 네비게이션 바에 최근 본 레시피를 등록하는 기능을 구현했습니다. <br>
&nbsp; 마이 페이지 / 게시판 페이지의 페이징 기능 구현했습니다 <br>
&nbsp; 후기 페이지와 레시피 페이지에 공통적으로 사용되는 댓글 / 대댓글을 효율적으로 사용하기 위해 기능을 REST API를 구현했습니다.
<br>
<br>

<!--
<h4><i>[고도화 계획]</i></h4>

Java ORM 기술(JPA) 도입, (네이버, 카카오 등..)API로 로그인 회원가입 기능 추가와 JWT 구현 / 공공기관 API 활용, Interceptor, filter와 같은 AOP 적용, 게시판 페이지 정렬 / 검색 기능 추가, AWS EC2 / RDS 배포 <br>
<br>
<br>

<h3> ・ 개발환경 </h3>
・ Frontend : HTML, CSS, JS(ES6)<br>
・ Backend : Java, Spring Boot, Mybatis<br>
・ Server : Apache Tomcat 9.0<br>
・ DB : OracleDB<br>
・ Library : JQuery, JSTL, EL<br>
・ IDE & Collaboration : VSCode, Eclipse, SQL Developer, Git, Notion<br>
<br>
<br>
<h3>・ 스토리보드 </h3>
<details>
<summary>접기/펼치기</summary>
<h4>・ 로그인 / 회원가입 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/f767b0fa-c6a3-45f7-ae89-044aeb9ec965">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/860278c8-1a13-4b4d-9bdc-f9585aab3860"><br>
<h4>・ 메인 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/46986824-2139-48e5-8735-c15499b3b29a">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/fc1ae5c4-9bba-4610-ac20-9d3c6e03cb87"><br>
<h4>・ 레시피 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/c79b25b7-46e9-441a-92f9-20658dd642d1">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/71dabc51-d730-472d-bcc2-50577d36fadd"><br>  
<h4>・ 게시판 페이지 (레시피 / 후기) </h4><br>
<img width="400px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/a398e959-543b-487f-8154-024bd4db3eb1">
<img width="400px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/fbe39471-1704-4c55-bfbc-edd56d8dacbc"><br>
<img width="300px" height="300px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/045aa2a8-01cf-490f-a13e-002c0cc5abe7">
<img width="300px" height="300px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/617c55a2-f2f2-4e73-84ac-7aada230a95a"><br>
<h4>・ 후기 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1f71eb8b-3e4d-453f-9790-5e7882a1125d">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/17cf8a1e-67cd-421a-aace-9ec13538e502"><br>
<h4>・ 레시피 작성 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/8644a6a4-f933-4893-aa2f-fdd8c6c561cb">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/4c532013-4553-4e6a-9f92-6f63ab2b0a0d"><br>
<h4>・ 후기 작성 페이지 </h4><br> 
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/11d4fa6e-dca8-4f12-a0e5-e3d702661ca8">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/6be0fee7-aa02-43b2-b307-ce5ff80995de"><br>
<h4>・ 검색 페이지 </h4><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/22c3e285-6136-4e94-91a3-026c0e75929d">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1ff45e36-aeaa-4526-b4ba-e28e215b6359"><br>
</details>

<br>
<h3>・ 구현 페이지 </h3>
<h4>・ 로그인 / 회원가입 페이지 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/07ab56d6-9039-4c67-8aa8-35ba2dfe0477">
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/5ee45d30-c5da-4c96-beac-e39f5cc39bc5"><br>
<h4>・ 마이 페이지 / 페이징 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/a7a1ae61-122c-4959-8cef-bf5e21e8d54a">
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/ecbf03a3-25a0-4c70-992a-8ba3449549aa"><br>
<h4>・ 메인 페이지 / 반응형 웹 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/0d07dbef-a108-4e09-a643-49ea992d7245">
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/747c6031-b2fc-4433-8134-bbc5610a6e97"><br>
<h4>・ 검색 페이지 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/6aab33df-50f6-4a20-b5a4-17f54b75ea3a"><br>
<h4>・ 레시피 작성 페이지 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/91ec8c77-b749-4ac2-8cc2-37cc9abfa00e"><br>
<h4>・ 레시피 페이지 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/2faf597e-4268-4bec-9a98-7dca085674e5"><br>  
<h4>・ 게시판 페이지 (레시피 / 후기) </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/c2050334-6e22-44ed-8652-f9a3df9bcb66"><br>
<h4>・ 후기 작성 페이지 </h4><br> 
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/7675a2d3-265b-4581-9ea1-10ff937d8926"><br>
<h4>・ 후기 페이지 </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/d8a6c7e7-8a0f-445e-86f0-494b635b6439"><br>
<h4>・ 댓글 대댓글 / REST API </h4><br>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1a20067e-e94e-41a4-8eee-5648adb30943">
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/a2784fb7-2c46-4527-b1eb-b13cf9b31643"><br>
<h4> REST API </h4>
GET 댓글 전체 조회 : reciid(필수)<br>
&nbsp; 조회된 JSON 데이터 AJAX로 페이지에 호출<br>
POST 댓글 등록 : comment_id(필수), comment_text(필수), reciid(필수), uname(필수)<br>
&nbsp; comment_id -> 생성된 parentcomment_id가 됨
PUT 댓글 수정 : comment_id(필수), comment_text(필수), reciid(필수)<br>
DELETE 댓글 삭제 : comment_id(필수), reciid(필수)<br>
<br>
<h3>・ 일정 </h3>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/c0948674-3068-4f2d-90b1-bb371a2629cf"><br>
<br>
<h3>・ ERD </h3>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/e5e6f08d-c66b-461a-bddb-edab7d689820"><br>
<br>
<h3>・ FlowChart </h3>
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1faf2634-322b-49b4-aac1-2bbf92b2ba64"><br>
<br>
<br>
<h3>・ 후기 </h3>
<h4>이기영</h4>
프로젝트를 진행하며 여러 회의를 통해 계획과 일정을 수정하는 과정을 경험하며 초기 요구사항 분석과 스토리 보드작성의 중요성을 알게 되었습니다. 매주 수업이 끝난 6시 이후 팀원들과 공부하며 프로젝트 진행방향과 작성한 코드를 리뷰하며 서로의 코드를 빠르게 이해하기 위해 코드의 가독성을 위해 들여쓰기 / 코드 스타일, 변수명 작성, 주석의 중요성을 알게 되었습니다. 수 많은 에러 메세지를 보며 에러 발생원인을 찾기 위해 추리하고 검색하며 잘못된 경로로 인한 400번대 에러와 Null값과 SQL문에 의한 500번대 에러등을 조금은 구별하게 되었고 다음 프로젝트에선 좀 더 적극적으로 예외처리를 하기 위해 노력해야 겠다는 생각이 들었습니다.
