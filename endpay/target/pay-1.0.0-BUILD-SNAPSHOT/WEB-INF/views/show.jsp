<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="my_chart">
                <div class="chart_title">주간 지출 내역서</div>
            </div>
            <div id="chart_box">
                <div class="contents_box">

                </div>
                <div class="chart_box">
                    <div class="line_chart">
                        <div class="select_data">
                            <div class="select_dou"></div>
                            <div class="select_line">
                                <div>주간</div>
                                <div>월간</div>
                                <div>연간</div>
                            </div>
                        </div>
                        <canvas id="l_chart"></canvas>
                    </div>
                    <div class="doughnut_chart">
                        <canvas id="d_chart"></canvas>
                    </div>
                </div>
                <div class="data_box">
                    <div class="regular_spending">
                        <div class="re_title">고정 지출</div>
                        <div class="re_contents">
                            <div class="contents_name">-</div>
                            <div class="contents_money">1,100</div>
                            <div class="contents_name">-</div>
                            <div class="contents_money">5,120</div>
                        </div>
                        <div class="sum">
                            <div class="sum_title">합계 :</div>
                            <div class="re_sum_money"></div>
                        </div>
                    </div>
                    <div class="irregular_spending">
                        <div class="ir_title">변동 지출</div>
                        <div class="ir_contents">
                            <div class="contents_name">-</div>
                            <div class="contents_money">1</div>
                        </div>
                        <div class="sum">
                            <div class="sum_title">합계 :</div>
                            <div class="ir_sum_money"></div>
                        </div> 
                    </div>
                    <div class="saving_spending">
                        <div class="sv_title">저축</div>
                        <div class="sv_contents">
                            <div class="sv_name contents_name">-</div>
                            <div class="sv_money contents_money">1</div>
                            <div class="sv_name contents_name">-</div>
                            <div class="sv_money contents_money">1</div>
                            <div class="sv_name contents_name">-</div>
                            <div class="sv_money contents_money">1</div>
                            <div class="sv_name contents_name">-</div>
                            <div class="sv_money contents_money">1</div>
                        </div>
                        <div class="sv_sum sum">
                            <div class="sum_title">합계 :</div>
                            <div class="sv_sum_money"></div>
                        </div> 
                        <div class="sums">
                            <div class="sums_title">총 합계 :</div>
                            <div class="sums_money"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="resources/assets/js/show.js"></script>
</main>
</html>