<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="info_spending">
            <form method="get" action="/api/insert">
                회원 아이디/구분/항목/상세/날짜/금액/메모
                <div class="my_info_spending">
                    <div class="ad"></div>
                    <button class="btn" type="submit">제출</button>
                </div>
                <div id="expenseType">
                    <input class="radio_extype" type="radio" name="extype" value="regular" checked>
                    <span>정기지출</span>
                    <input class="radio_extype" type="radio" name="extype" value="irregular">
                    <span>비정기지출</span>
                    <input class="radio_extype" type="radio" name="extype" value="saving">
                    <span>저축</span>
                </div>
                <div id="expenseContents">
                    <input class="radio_contype regular" type="radio" name="contype" value="공과금">
                    <span>공과금</span>
                    <input class="radio_contype regular" type="radio" name="contype" value="관리비">
                    <span>관리비</span>
                    <input class="radio_contype regular" type="radio" name="contype" value="통신비">
                    <span>통신비</span>
                    <input class="radio_contype irregular" type="radio" name="contype" value="식비">
                    <span>식비</span>
                    <input class="radio_contype irregular" type="radio" name="contype" value="교육">
                    <span>교육</span>
                    <input class="radio_contype irregular" type="radio" name="contype" value="교통">
                    <span>교통</span>
                    <input class="radio_contype irregular" type="radio" name="contype" value="의료">
                    <span>의료</span>
                    <input class="radio_contype saving" type="radio" name="contype" value="예금">
                    <span>예금</span>
                    <input class="radio_contype saving" type="radio" name="contype" value="적금">
                    <span>적금</span>

                    <input class="radio_contype regular irregular saving" type="radio" name="contype" value="기타">
                    <span>기타</span>
                </div>
                <div id="detail_box">
                    <div class="detail_text">
                        상세 <input type="text" class="detail_input" name="detailtext" placeholder="상세 입력 20자 제한" maxlength="20"/>
                    </div>
                    <div class="money">
                        <div class="money_text">금액</div>
                        <input class="money_input" type="text" name="money" placeholder="ex) 50,000"/>
                    </div>
                    <div class="memo_box">
                        <div class="memo_text">메모</div>
                        <textarea class="memo" name="memo"></textarea>
                    </div>
                </div>
                <div id="date">
                    <input type="text" id="input" name="date"/>
                </div>
                <div class="statement">
                    <!-- <div class="s_title">명세서</div> -->
                    <div class="title_col">
                        <div class="t_date">날짜</div>
                        <div class="t_date">구분</div>
                        <div class="t_date">항목</div>
                        <div class="t_date">금액</div>
                        <div class="t_detail">상세 설명</div>
                    </div>
                    <div class="detail_contents">
                        <div class="d_date"></div>
                        <div class="d_type"></div>
                        <div class="d_category"></div>
                        <div class="d_money"></div>
                        <div class="d_detail"></div>
                    </div>
                    <div class="show_memo">

                    </div>
                </div>
                
            </form>
        </div>
    </section>
    <script type="text/javascript" src="resources/assets/js/spending.js"></script>
</main>
</html>