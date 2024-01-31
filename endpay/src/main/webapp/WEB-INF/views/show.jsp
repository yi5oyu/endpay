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
                                <input type="text" id="date_input">
                                <button type="submit" class="show_date_btn">제출</button>
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
    <script>
    $(document).ready(function() {
        $('.show_date_btn').click(function() {
            let dateInputValue = $('#date_input').val()
            let dateRange = dateInputValue.split(' ~ ')
            $.ajax({
                url: `api/spending/date/${member.mid}/` + dateRange[0] + '/' + dateRange[1],
                type: 'GET',
                success: function(data) {
                    console.log(data)
    				douggnut(data)
    				data_box(data)
                },
                error: function(error) {
                    console.error('Error fetching spending data:', error)
                }
            })
        })
    })
    function data_box(spend_data){
    	let regular = ["공과금", "관리비","통신비"]
    	let re_html = ""
    	let re_money = 0
    	let irregular = ["식비","교육","교통","의료"]
    	let irre_html = ""
    	let irre_money = 0
    	let saveing = ["예금","적금","기타"]
    	let save_html = ""
    	let save_money = 0
    	for(let i = 0 ;i<spend_data.length ;i++){
    		if (regular.indexOf(spend_data[i][0]) !== -1) {
    			re_html +='<div class="contents_name">'+ spend_data[i][0] + '</div>'
    			re_html +='<div class="contents_money">'+ spend_data[i][1]+ '</div>'
    			re_money += spend_data[i][1]
    		}
    		if (irregular.indexOf(spend_data[i][0]) !== -1) {
    			irre_html += '<div class="contents_name">'+ spend_data[i][0] +'</div>'
    			irre_html += '<div class="contents_money">'+ spend_data[i][1] +'</div>'
    			irre_money += spend_data[i][1]
    		}
    		if (saveing.indexOf(spend_data[i][0]) !== -1) {
    			save_html += '<div class="sv_name contents_name">'+ spend_data[i][0] +'</div>'
    			save_html += '<div class="sv_money contents_money">'+ spend_data[i][1] +'</div>'
    			save_money += spend_data[i][1]
    		}
    	}
		$(".re_sum_money").text(re_money)
		$(".ir_sum_money").text(irre_money)
		$(".sv_sum_money").text(save_money)
		$(".sums_money").text((re_money+irre_money+save_money))
		$(".re_contents").html(re_html)
		$(".ir_contents").html(irre_html)
		$(".sv_contents").html(save_html)
    }
    
    function douggnut(spend_data){
    	let labels = []
    	let datas = []
    	for(let i = 0 ; i<spend_data.length ;i++){
    		labels[i] = spend_data[i][0]
    		datas[i] = spend_data[i][1]
    	}
        let doughnutChartData = {
            labels: labels,
            datasets: [{
                data: datas,
            }]
        }
        let ctxDoughnut = document.getElementById('d_chart').getContext('2d');
        let myDoughnutChart = new Chart(ctxDoughnut, {
          type: 'doughnut',
          data: doughnutChartData
        })
    	}
        // 그래프 차트
        let chartData = {
          labels: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
          datasets: [{
            label: '연간',
            // borderColor: 'rgb(75, 192, 192)',
            data: [5365, 58499, 125280, 81, 56, 12513, 436346, 5365, 59, 64380, 111181, 12513],
          }]
        }

        // 차트 옵션
        let chartOptions = {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }

        // 차트 생성
        let ctx = document.getElementById('l_chart').getContext('2d');
        let myChart = new Chart(ctx, {
            type: 'line',
            data: chartData,
            options: chartOptions
        })
    </script>
    <script type="text/javascript" src="resources/assets/js/show.js"></script>
</main>
</html>