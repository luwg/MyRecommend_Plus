<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <script src="/resources/js/jquery.dataTables.min.js"></script>
    <script src="/resources/js/matrix.tables.js"></script>
    <link rel="stylesheet" href="/resources/css/star.css" />
</head>
<body>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title"><span class="icon"><i class="icon-th"></i></span>
                <h5>电影列表</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered data-table">
                    <thead>
                    <tr>
                        <th width="20%">名称</th>
                        <th width="20%">种类</th>
                        <th width="30%">语言</th>
                        <th width="15%">评分</th>
                        <th width="15%">我的评分</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="comment" items="${comments}">
                        <c:set var="movie" value="${comment.movie}"/>
                        <tr class="gradeX">
                            <td><a href="#">${movie.title}</a></td>
                            <td>${movie.category}</td>
                            <td>${movie.language}</td>
                            <td>${movie.rate}</td>
                            <td>
                                <div class="www_zzjs_net">
                                    <ul class="_zzjs_net" id="www_zzjs_">
                                        <li><a href="javascript:void(0);" class="one-star <c:if test="${comment.rate==10}">current-rating</c:if>" star:value="10">10</a></li>
                                        <li><a href="javascript:void(0);" class="two-stars <c:if test="${comment.rate==20}">current-rating</c:if>"  star:value="20">20</a></li>
                                        <li><a href="javascript:void(0);" class="three-stars <c:if test="${comment.rate==30}">current-rating</c:if>" star:value="30">30</a></li>
                                        <li><a href="javascript:void(0);" class="four-stars <c:if test="${comment.rate==40}">current-rating</c:if>" star:value="40">40</a></li>
                                        <li><a href="javascript:void(0);" class="five-stars <c:if test="${comment.rate==50}">current-rating</c:if>" star:value="500">50</a></li>
                                    </ul>
                                    <span id="stars2-tips" class="result"></span>
                                    <input type="hidden" id="stars2-input" name="b" value="" size="2" />
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
