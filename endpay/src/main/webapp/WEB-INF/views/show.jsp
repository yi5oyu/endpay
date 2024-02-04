<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<main>
    <section class="contents">
        <div class="main">
            <div class="my_chart">
                <div class="chart_title">지출 내역서</div>
                <div class="select_line">
                     <input type="text" id="date_input">
                     <button type="submit" class="show_date_btn">제출</button>
                </div>
            </div>
            <div id="chart_box">
                <div class="contents_box">
                	
                </div>
                <div class="chart_box">
                    <div class="line_chart">
                        <div class="select_data">
                            <div class="select_dou"></div>
                            <div class="select_line">
                                <input type="text" class="year_input">
                                <button type="submit" class="show_year_btn">제 출</button>
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
<!--                             <div class="contents_name">-</div> -->
<!--                             <div class="contents_money">1</div> -->
                        </div>
                        <div class="sum">
                            <div class="sum_title">합계 :</div>
                            <div class="re_sum_money"></div>
                        </div>
                    </div>
                    <div class="irregular_spending">
                        <div class="ir_title">변동 지출</div>
                        <div class="ir_contents">
<!--                             <div class="contents_name">-</div> -->
<!--                             <div class="contents_money">1</div> -->
                        </div>
                        <div class="sum">
                            <div class="sum_title">합계 :</div>
                            <div class="ir_sum_money"></div>
                        </div> 
                    </div>
                    <div class="saving_spending">
                        <div class="sv_title">저축</div>
                        <div class="sv_contents">
<!--                             <div class="sv_name contents_name">-</div> -->
<!--                             <div class="sv_money contents_money">1</div> -->
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
    let currentDate = new Date()
    
    let year = currentDate.getFullYear()
    load_months(year)
    $(".year_input").val(year)
    
	let month = String(currentDate.getMonth() + 1).padStart(2, '0')
	let day = String(currentDate.getDate()).padStart(2, '0')
    let dateInputValue = "2024-01-01 ~ "+year+"-"+month+"-"+day
    $("#date_input").val(dateInputValue)
    dou_chat(dateInputValue)
    function load_months(year){
         $.ajax({
             url: `api/spending/${member.mid}/` + year,
             type: 'GET',
             success: function(data) {
                 console.log(data)
                 console.log("11")
                 line_chat(data, year)
				//
             },
             error: function(error) {
                 console.error('Error fetching spending data:', error)
             }
         })
     }
    
    $(document).ready(function() {
        $('.show_date_btn').click(function() {
        	dateInputValue = $('#date_input').val()
            dou_chat(dateInputValue)
        })
        $(".show_year_btn").click(function(){
        	load_months($(".year_input").val())
        })
    })
   	function dou_chat(dateInputValue){
    	let dateRange = dateInputValue.split(' ~ ')
       $.ajax({
           url: `api/spending/${member.mid}/` + dateRange[0] + '/' + dateRange[1],
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
}
    
    function data_box(spend_data){
    	let regular = ["공과금", "관리비","통신비"]
    	let re_html = ""
    	let re_money = 0
    	let irregular = ["식비","교육","교통","의료","의류","전자제품"]
    	let irre_html = ""
    	let irre_money = 0
    	let saveing = ["예금","적금","기타"]
    	let save_html = ""
    	let save_money = 0
    	for(let i = 0 ;i<spend_data.length ;i++){
    		if (regular.indexOf(spend_data[i][0]) !== -1) {
    			re_html +='<div class="contents_name">'+ spend_data[i][0] + '</div>'
    			re_html +='<div class="contents_money">'+ spend_data[i][1].toLocaleString()+ '원</div>'
    			re_money += spend_data[i][1]
    		}
    		if (irregular.indexOf(spend_data[i][0]) !== -1) {
    			irre_html += '<div class="contents_name">'+ spend_data[i][0] +'</div>'
    			irre_html += '<div class="contents_money">'+ spend_data[i][1].toLocaleString() +'원</div>'
    			irre_money += spend_data[i][1]
    		}
    		if (saveing.indexOf(spend_data[i][0]) !== -1) {
    			save_html += '<div class="sv_name contents_name">'+ spend_data[i][0] +'</div>'
    			save_html += '<div class="sv_money contents_money">'+ spend_data[i][1].toLocaleString() +'원</div>'
    			save_money += spend_data[i][1]
    		}
    	}
		$(".re_sum_money").text(re_money.toLocaleString()+"원")
		$(".ir_sum_money").text(irre_money.toLocaleString()+"원")
		$(".sv_sum_money").text(save_money.toLocaleString()+"원")
		$(".sums_money").text((re_money+irre_money+save_money).toLocaleString()+"원")
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
    	let ctxDoughnut = document.getElementById('d_chart').getContext('2d');
        if(window.myDoughnutChart){
            window.myDoughnutChart.destroy()
        }
        let doughnutChartData = {
            labels: labels,
            datasets: [{
                data: datas,
            }]
        }
        
        window.myDoughnutChart = new Chart(ctxDoughnut, {
            type: 'doughnut',
            data: doughnutChartData
        });
    }
    function line_chat(spend_data, year){
    	console.log("22")
    	let labels = []
    	let datas = []
    	for(let i = 0 ; i<spend_data.length ;i++){
    		labels[i] = i+1 +"월"
    		datas[i] = spend_data[i][1]
    	}
        let ctx = document.getElementById('l_chart').getContext('2d');
        
        if(window.myLineChart){
            window.myLineChart.destroy()
        }
        let chartData = {
                labels: labels,
                datasets: [{
                  label: year+'년 월간 지출',
                  data: datas,
                }]
        }
        let chartOptions = {
                scales: {
                  y: {
                    beginAtZero: true
                  }
                }
              }

        window.myLineChart = new Chart(ctx, {
            type: 'line',
            data: chartData,
            options: chartOptions
        })
    }
    </script>
    <script type="text/javascript" src="resources/assets/js/show.js"></script>
</main>
</html>