
    let re_moneys = document.querySelectorAll(".re_contents > .contents_money")
    let re_sum = 0
    for(let i = 0 ;i<re_moneys.length ;i++)
        re_sum += parseFloat(re_moneys[i].innerText.replace(/,/g, ''))
    document.querySelector(".re_sum_money").innerText = re_sum.toLocaleString('ko-KR')+" 원"
    let ir_moneys = document.querySelectorAll(".ir_contents > .contents_money")
    let ir_sum = 0
    for(let i = 0 ;i<ir_moneys.length ;i++)
        ir_sum += parseFloat(ir_moneys[i].innerText.replace(/,/g, ''))
    document.querySelector(".ir_sum_money").innerText = ir_sum.toLocaleString('ko-KR')+" 원"
    let sv_moneys = document.querySelectorAll(".sv_contents > .contents_money")
    let sv_sum = 0
    for(let i = 0 ;i<sv_moneys.length ;i++)
        sv_sum += parseFloat(sv_moneys[i].innerText.replace(/,/g, ''))
    document.querySelector(".sv_sum_money").innerText = sv_sum.toLocaleString('ko-KR')+" 원"
    document.querySelector(".sums_money").innerText = (re_sum+ir_sum+sv_sum).toLocaleString('ko-KR')+" 원"

    let doughnutChartData = {
        // 항목
        labels: ['식비', '교육', '교통', '통신비'],
        datasets: [{
            data: [135500, 50500, 14300, 12020],
        }]
    }
    let ctxDoughnut = document.getElementById('d_chart').getContext('2d');
    let myDoughnutChart = new Chart(ctxDoughnut, {
      type: 'doughnut',
      data: doughnutChartData
    })

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
    
	$("#date_input").datepicker({
	    position: 'right center',
	    range: true,
	    multipleDatesSeparator: ' ~ ',
	    language: {
	        daysMin: ['일', '월', '화', '수', '목', '금', '토'],
	        months: [
	            '1월', '2월', '3월', '4월', '5월', '6월',
	            '7월', '8월', '9월', '10월', '11월', '12월'
	        ],
	        today: '오늘',
	        clear: '지우기',
	        dateFormat: 'yyyy-mm-dd',
	        firstDay: 0
	    },
	    MaxDate: new Date(),
	    dateFormat: 'yyyy-mm-dd', 
	    onSelect: function (formattedDate, date, picker) {
	        if (date) {
	            // $('#selected-date').text('선택한 날짜: ' + formattedDate);		
	            // var dayOfWeek = date.getDay();
	            var days = ['일', '월', '화', '수', '목', '금', '토'];
	            // $('#day-of-week').text('요일: ' + days[dayOfWeek]);
	        } else {
	            // $('#selected-date').text('');
	            // $('#day-of-week').text('');
	        }
	    }
	});
