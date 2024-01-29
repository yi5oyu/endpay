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
                <div class="spend_date spend_row_head" id="spend_head_margin">날 짜</div>
                <div class="spend_money spend_row_head">금 액</div>
                <div class="spend_ex spend_row_head">구 분</div>
                <div class="spend_con spend_row_head">항 목</div>
            </div>
            <div class="spend_rows" id="spendRows">
                <!-- 여기에 데이터가 들어갈 자리 -->
            </div>
            <div class="spend_footer" id="spend_page">
                <div class="pagination">
                    <!-- 페이지 번호가 들어갈 자리 -->
                </div>
            </div>
        </div>
        <div class="spend_footer" id="spend_btns">
            <button class="spend_btn" id="spend_delBtn">삭제</button>
        </div>
<script>
        $(document).ready(function() {
            loadData(0)

            $(document).on('click', '.pagination a', function(e) {
                e.preventDefault()
                let page = $(this).text()
                loadData(page - 1)
            })

            function loadData(page) {
                $.ajax({
                    url: `api/spending/list/${member.mid}?page=` + page,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        displayData(data.content)

                        displayPagination(data.totalPages)
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

            function displayPagination(totalPages) {
            	let paginationHtml = ''
                for (let i = 1; i <= totalPages; i++) 
                    paginationHtml += '<a href="#">' + i + '</a>'
                
                $('.pagination').html(paginationHtml)
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
                url: "api/spending/delete",
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