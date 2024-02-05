<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<main>
 <div class="spend_head">
      	<div class="spend_title">소비 기록</div>
        </div>
        <div class="spend_main">
            <div class="spend_main_title">
                <div class="spend_date spend_row_head" id="spend_head_margin">
                	날 짜
                	<div class="spend_sort"></div>
                </div>
                <div class="spend_money spend_row_head">
                	금 액
                	<div class="spend_sort"></div>
                </div>
                <div class="spend_ex spend_row_head">
	                구 분
	                <div class="spend_sort"></div>
                </div>
                <div class="spend_con spend_row_head">
                	항 목
                	<div class="spend_sort"></div>
                </div>
            </div>
            <div class="spend_rows" id="spendRows">
                <!-- 여기에 데이터가 들어갈 자리 -->
            </div>
            <div class="spend_footer" id="spend_page">
                <div class="pagination">
                	<button id="prevPage">&lt;</button>
                    <!-- 페이지 번호가 들어갈 자리 -->
                    <button id="nextPage">&gt;</button>
                </div>
            </div>
        </div>
        <div class="spend_footer" id="spend_btns">
            <button class="spend_btn" id="spend_delBtn">삭제</button>
        </div>
<script>
title_Btn_Event()
function title_Btn_Event(){
    
}
        $(document).ready(function() {
        	let sort = "none"
        	let title = "none"
            loadData(0)
			
            let titles = document.querySelectorAll(".spend_main_title > div")
            let sorts = document.querySelectorAll(".spend_main_title > div > div")
            for(let i = 0 ; i<titles.length ;i++){
                titles[i].addEventListener("click", function(){
                    
                    if(sorts[i].innerText == "▼"){
                        sorts[i].style.display = "inline-block"
                        sorts[i].innerText = "▲"
                        loadData(0, i, "ASC")
                    } else{
                        sorts[i].style.display = "inline-block"
                        sorts[i].innerText = "▼"
                        loadData(0, i, "DESC")
                    }
                    
                    for(let j = 0 ; j<sorts.length ;j++){
                        if(i!=j){
                            sorts[j].style.display = "none"
                            sorts[j].innerText = "▲"
                        }
                    }
                })
            }
            
            $(document).on('click', '.pagination a', function(e) {
                e.preventDefault()
                let page = $(this).text()
                loadData(page - 1)
            })

            function loadData(page, s, t) {
            	let sorts = ["sdate","money","extype","contype"]
                $.ajax({
                    url: `api/spending/${member.mid}?page=` + page + 
                    		"&sort=" + sorts[s] + "&title="+ t,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        displayData(data.content)

                        displayPagination(page, data.totalPages)
                    },
                    error: function(error) {
                        console.error('Error fetching data:', error)
                    }
                })
            }

            function displayData(data) {
            	let rowsHtml = ''
                $.each(data, function(index, spending) {
                    rowsHtml += '<div class="spend_row">';
                    rowsHtml += '<input type="checkbox" name="spendIds" value="' + spending.sid + '">';
                    rowsHtml += '<div class="spend_date">' + spending.sdate + '</div>';
                    rowsHtml += '<div class="spend_money spend_row_margin">' + spending.money + '</div>';
                    rowsHtml += '<div class="spend_ex spend_row_margin">' + spending.extype + '</div>';
                    rowsHtml += '<div class="spend_con spend_row_margin">' + spending.contype + '</div>';
                    rowsHtml += '</div>';
                })
                $('#spendRows').html(rowsHtml)
            }

            function displayPagination(currentPage, totalPages) {
                let paginationHtml = '';
				let pagebtns = document.querySelectorAll(".page-link")
				
                const maxButtons = 5;
                const startPage = Math.max(1, currentPage - Math.floor(maxButtons / 2));
                const endPage = Math.min(totalPages, startPage + maxButtons - 1);

                if(currentPage < 1){
                    for (let i = startPage; i <= endPage; i++) {
                        paginationHtml += '<a href="#" class="page-link">' + i + '</a>'
                    }
                    paginationHtml += '<button class="pagebtn" id="nextPage">&gt;</button>'
                } else{
    				if (pagebtns[0].innerText > 1) {
                        paginationHtml += '<button class="pagebtn" id="prevPage">&lt;</button>'
                    }
                    for (let i = startPage; i <= endPage; i++) {
                        paginationHtml += '<a href="#" class="page-link">' + i + '</a>'
                    }
                    if (pagebtns[pagebtns.length-1].innerText < totalPages-3) {
                        paginationHtml += '<button class="pagebtn" id="nextPage">&gt;</button>'
                    }
                }
                
                $('.pagination').html(paginationHtml);

                pagebtns = document.querySelectorAll(".page-link")
                
                $('.page-link').click(function (e) {
                    e.preventDefault()
                    loadData($(this).text() - 1)
                })

                $('#prevPage').click(function () {
                    if (pagebtns[0].innerText < 7) {
                        loadData(0)
                    } else{
                    	loadData(parseInt(pagebtns[0].innerText) - 1)
                    }
                })

                $('#nextPage').click(function () {
                    if (pagebtns[pagebtns.length-1].innerText < totalPages) {
                    	loadData(parseInt(pagebtns[pagebtns.length - 1].innerText) + 1)
                    }
                })
            }
            spend_Del_Event()
        })
function spend_Del_Event(){
    $("#spend_delBtn").click(function() {
        let selectedSids = []
        
        $("input:checkbox[name=spendIds]:checked").each(function() {
            selectedSids.push($(this).val())
        })
        
        if (selectedSids.length > 0) {
            $.ajax({
                type: "DELETE",
                url: "api/spending",
                data: JSON.stringify(selectedSids),
                contentType: "application/json",
                success: function() {
                    alert("삭제되었습니다.")
                    location.reload()
                },
                error: function(error) {
                    alert("삭제에 실패했습니다.")
                    console.log(error)
                }
            })
        } else {
            alert("삭제할 항목을 선택해주세요.")
        }
    })	
}
</script>
</main>