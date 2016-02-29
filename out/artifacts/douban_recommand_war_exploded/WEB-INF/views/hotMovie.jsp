<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
<%--    <link rel="stylesheet"
          href="http://img3.douban.com/f/movie/8f41875f6bad40f1282ef0e7ab250d9d93b171c1/css/movie/home.css">--%>
    <link rel="stylesheet" href="/resources/css/home.css">
    <script type="text/javascript">

        function loadMovies() {
            $('#hotMovie').load("getMovies?tag=&sort=recommend");
        }
        $('.tag-list>label').hover(function() {
            $(this).addClass("activate");
        });
        $('.tag-list>label').mouseleave(function() {
            var $input = $(this).children('input');
            if ($input.attr("checked") != "checked") {
                $(this).removeClass("activate");
            }
        });
        $('.tag-list>label').click(function() {
            $(this).addClass('activate').siblings().removeClass('activate');
            $(this).children('input').attr('checked', 'checked');
            $('#hotMovie').load('getMovies?' + $('#movieForm').serialize());
        });

        $('.sort input').change(function() {
            $('#hotMovie').load('getMovies?' + $('#movieForm').serialize());
        });
    </script>
</head>
<body>
<div class="container-fluid">

    <div class="grid-16-8 clearfix" style="margin-top: 30px;">
        <div class="article">
            <div id="gaia">
                <div class="fliter-wp">
                    <div class="filter">
                        <form action="/getMovies" id="movieForm" autocomplete="off">

                            <div class="tags">
                                <div class="tag-list">
                                    <label class="activate">
                                        全部
                                        <input type="radio" name="tag" value="" checked="checked">

                                    </label>
                                    <c:forEach var="category" items="${categories}">
                                        <label>
                                                ${category.name}
                                            <input type="radio" name="tag" value="${category.name}">
                                        </label>
                                    </c:forEach>
                                </div>

                            </div>

                            <hr/>
                            <div class="tool">
                                <div class="sort">
                                            <span>
                                                <input type="radio" name="sort" value="recommend" checked="checked">&nbsp;按热度排序
                                            </span>
                                    &nbsp;&nbsp;
                                            <span>
                                                <input type="radio" name="sort" value="release_date">&nbsp;按时间排序
                                            </span>
                                    &nbsp;&nbsp;
                                            <span>
                                                <input type="radio" name="sort" value="movie_rate">&nbsp;按评价排序
                                            </span>
                                </div>
                                <!--
                                <div class="check">
                                    <label>
                                        <input type="checkbox" name="watched" class="">我没看过的
                                    </label>

                                </div>
                                -->
                            </div>
                        </form>

                    </div>
                </div>
            </div>


        </div>


    </div>

    <div id="hotMovie">

    </div>
</div>


<script type="text/javascript">
    $('#hotMovie').load("getMovies?tag=&sort=recommend");

</script>

</body>
</html>
