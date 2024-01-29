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
            <button class="spend_btn">수정</button>
        </div>
<script>
        $(document).ready(function() {
            // 페이지 로딩 시 데이터 가져오기
            loadData(0);

            // 페이지 번호 클릭 시 데이터 가져오기
            $(document).on('click', '.pagination a', function(e) {
                e.preventDefault();
                var page = $(this).text();
                loadData(page - 1);
            });

            function loadData(page) {
                $.ajax({
                    url: `api/spending/list/${member.mid}?page=` + page,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        // 데이터 출력
                        displayData(data.content);

                        // 페이지 번호 출력
                        displayPagination(data.totalPages);
                    },
                    error: function(error) {
                        console.error('Error fetching data:', error);
                    }
                });
            }

            function displayData(data) {
                var rowsHtml = '';
                $.each(data, function(index, spending) {
                    rowsHtml += '<div class="spend_row">';
                    rowsHtml += '<input type="checkbox" name="spendIds" value="' + spending.sid + '">';
                    rowsHtml += '<div class="spend_date">' + spending.sdate + '</div>';
                    rowsHtml += '<div class="spend_money spend_row_margin">' + spending.money + '</div>';
                    rowsHtml += '<div class="spend_ex spend_row_margin">' + spending.extype + '</div>';
                    rowsHtml += '<div class="spend_con spend_row_margin">' + spending.contype + '</div>';
                    rowsHtml += '</div>';
                });
                $('#spendRows').html(rowsHtml);
            }

            function displayPagination(totalPages) {
                var paginationHtml = '';
                for (var i = 1; i <= totalPages; i++) {
                    paginationHtml += '<a href="#">' + i + '</a>';
                }
                $('.pagination').html(paginationHtml);
            }
        });
    </script>
</main>