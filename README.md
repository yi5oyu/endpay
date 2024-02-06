<h1>CashFlow</h1> 

### ・ 목차
 - [웹 사이트](#웹-사이트)
 - [개요](#개요)
 - [기술 및 도구](#기술-및-도구)
 - [ERD](#ERD)
 - [Sequence Diagram](#Sequence-Diagram)
 - [기능 구현](#기능-구현)
 - [업데이트](#업데이트)
 - [개선점/후기](#개선점/후기)
## **웹 사이트**
http://cashflow.kro.kr/pay/cashflow

## **개요**
<h4><i>[소개]</i></h4>
지출관리 웹 사이트<br>
지출 내역을 등록 / 지출 내역 차트 <br>

<h4><i>[기간]</i></h4>
2024.01.16 ~<br>
배포: 2024.02.04.

<h4><i>[인원]</i></h4>
1명 (개인 프로젝트)

<h4><i>[목표 및 개발]</i></h4>

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
- 홈
<img src="https://github.com/yi5oyu/endpay/assets/111046436/cc64b718-c80a-4cce-8f04-b3dd98541df7"><br>
- 지출 입력
<img src="https://github.com/yi5oyu/endpay/assets/111046436/df91cb0a-36a8-4d1a-abc5-0e370205715c"><br>
- 지출 확인
<img src="https://github.com/yi5oyu/endpay/assets/111046436/4678b272-cf49-4e0a-a013-6b2ea7bcd107"><br>
- 마이페이지
<img src="https://github.com/yi5oyu/endpay/assets/111046436/2cdfb0ba-7f81-476d-a586-4e347bf893f0">

### 기능
<h4>・ REST API</h4>
- 회원
<img src="https://github.com/yi5oyu/endpay/assets/111046436/18c25ba7-bbbe-4574-813e-6aaaffd32693"><br>
- 지출
<img src="https://github.com/yi5oyu/endpay/assets/111046436/b914e9e2-67b5-48cc-9974-f68bb32c6b46"><br>
</details>


## **업데이트**
### ・ Release (2024.02.04)
<h4>Features</h4>
 - 소비기록 페이징 / 지출 작성 버튼 이벤트 수정 (2024-02-05)
 
<br>
<h4>Bug Fixes</h4>
 - 마이페이지 로그아웃 기능 수정 (2024-02-04)
<br>


## **개선점/후기**
<p>
프로젝트를 진행하며 여러 회의를 통해 계획과 일정을 수정하는 과정을 경험하며 초기 요구사항 분석과 스토리 보드작성의 중요성을 알게 되었습니다. 매주 수업이 끝난 6시 이후 팀원들과 공부하며 프로젝트 진행방향과 작성한 코드를 리뷰하며 서로의 코드를 빠르게 이해하기 위해 코드의 가독성을 위해 들여쓰기 / 코드 스타일, 변수명 작성, 주석의 중요성을 알게 되었습니다. 수 많은 에러 메세지를 보며 에러 발생원인을 찾기 위해 추리하고 검색하며 잘못된 경로로 인한 400번대 에러와 Null값과 SQL문에 의한 500번대 에러등을 조금은 구별하게 되었고 다음 프로젝트에선 좀 더 적극적으로 예외처리를 하기 위해 노력해야 겠다는 생각이 들었습니다.
</p>
