   $('#input').datepicker({
        inline: true,
        // range: true,
        multipleDatesSeparator: ' - ',
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
        // minDate: new Date(),
        buttons: ['today'],
        dateFormat: 'yyyy-mm-dd',
        onSelect: function (formattedDate, date, picker) {
			if (date) {
                $('.d_date').text(formattedDate);
			} else {
				$('.d_date').text('');
			}
		}
    });
    $('.date_write').on("click",function(){
        $(".selected_date").css("display","inline-block");
    })
    $('.date_del').on("click",function(){
        $(".selected_date").css("display","none");
    })

    radio_event()
    function radio_event(){
        let expenses = document.querySelectorAll(".radio_extype + span")
        let expense = document.querySelectorAll(".radio_extype")
        let type = document.querySelector(".d_type")
        type.innerText = "정기지출"
        expense[0].checked = true
        expenses[0].style.backgroundColor = "#5cc4ef"
        selected_contents(0)
        for(let i = 0 ; i<expenses.length ;i++){
            expenses[i].addEventListener("click",function(){
                type.innerText = expenses[i].innerText
                expense[i].checked = true
                if(expense[i].checked)
                    expenses[i].style.backgroundColor = "#5cc4ef"
                for(let j = 0 ;j<expenses.length ;j++)
                    if(i!=j)
                        expenses[j].style.backgroundColor = "white"
                selected_contents(i)
            })
        }
    }
    function selected_contents(a){
            let contents = document.querySelectorAll(".radio_contype")
            let contspan = document.querySelectorAll(".radio_contype + span")
            if(a==0){
                for(let j = 0 ;j<contents.length;j++)
                    if(!contents[j].classList.contains("regular"))
                        contspan[j].style.display = "none"
                    else
                        contspan[j].style.display = "inline-block"
            } else if(a==1){
                for(let j = 0 ;j<contents.length;j++)
                    if(!contents[j].classList.contains("irregular"))
                        contspan[j].style.display = "none"
                    else
                        contspan[j].style.display = "inline-block"
            } else{
                for(let j = 0 ;j<contents.length;j++)
                    if(!contents[j].classList.contains("saving"))
                        contspan[j].style.display = "none"
                    else
                        contspan[j].style.display = "inline-block"
            }
    }
    contents_event()
    function contents_event(){
        let contents = document.querySelectorAll(".radio_contype + span")
        let content = document.querySelectorAll(".radio_contype")
        let detail = document.querySelector(".d_category")
        for(let i = 0 ;i<contents.length ;i++){
            contents[i].addEventListener("click", function(){
                detail.innerText = contents[i].innerText
                content[i].checked = true
                if(content[i].checked)
                    contents[i].style.backgroundColor = "#5cc4ef"
                for(let j = 0 ;j<contents.length ;j++)
                    if(i!=j)
                        contents[j].style.backgroundColor = "white"
            })
        }
    }
    document.querySelector(".detail_input").addEventListener("input",function(e){
        document.querySelector(".d_detail").innerText = e.target.value
    })
    document.querySelector(".memo").addEventListener("input",function(e){
        document.querySelector(".show_memo").innerText = e.target.value
    })
    let input = document.querySelector('.money_input')
        input.addEventListener('keyup', function(e) {
        let value = e.target.value
        value = Number(value.replaceAll(',', ''))
        if(isNaN(value)) {
            input.value = 0
        }else {
            let formatValue = value.toLocaleString('ko-KR')
            input.value = formatValue;
            document.querySelector(".d_money").innerText = e.target.value
        }
    })
