
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
    
	$("#date_input").datepicker({
	    position: 'right center',
	    range: true,
	    multipleDatesSeparator: ' ~ ',
	    language: {
            daysMin: ['일', '월', '화', '수', '목', '금', '토'],
            months: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthsShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dateFormat: 'yyyy-mm-dd',
            firstDay: 0,
	    },
	    navTitles: {
            days: '<h1>yyyy</h1>,' + '<h1> &nbsp;MM<h1>'
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
