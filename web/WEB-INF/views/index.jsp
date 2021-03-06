<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="/resources/css/uniform.css" />
    <link rel="stylesheet" href="/resources/css/select2.css" />
    <link rel="stylesheet" href="/resources/css/matrix-style.css" />
    <link rel="stylesheet" href="/resources/css/matrix-media.css" />
    <link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/jquery.ui.custom.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.uniform.js"></script>
    <script src="/resources/js/select2.min.js"></script>
    <script src="/resources/js/jquery.dataTables.min.js"></script>
    <script src="/resources/js/matrix.js"></script>
    <script src="/resources/js/matrix.tables.js"></script>

    <script type="text/javascript">
      function loadPage(obj, url) {
        $(obj).parent().addClass("active").siblings().removeClass("active");
        $('#content').load(url);
      }
    </script>
  </head>
  <body>

  <!--Header-part-->
  <div id="header">
    <h1><a href="/resources/dashboard.html">CSU Lwg</a></h1>
  </div>
  <!--close-Header-part-->

  <!--top-Header-menu-->
  <div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
      <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome ${user.name}</span><b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/logout"><i class="icon-key"></i> Log Out</a></li>
        </ul>
      </li>

      <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    </ul>
  </div>

  <!--sidebar-menu-->

  <div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>Tables</a>
    <ul>
      <li><a href="javascript:void(0);" onclick="loadPage(this, '/myCommentedMovies');"><i class="icon icon-pencil"></i> <span>我评价过的电影</span></a> </li>
      <li><a href="javascript:voie(0);" onclick="loadPage(this, '/hotMovie')"><i class="icon icon-inbox"></i> <span>热门电影</span></a> </li>
      <li><a href="javascript:voie(0);" onclick="loadPage(this, '/recommandMovie')"><i class="icon icon-signal"></i> <span>电影推荐</span></a> </li>
      <%--<li><a href="javascript:voie(0);" onclick="loadPage(this, '/getRecommentBook')"><i class="icon icon-signal"></i> <span>图书推荐</span></a> </li>--%>
      <c:if test="${user.name == 'admin'}">
      <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>管理员操作</span></a>
        <ul>
          <li><a href="javascript:void(0);" onclick="loadPage(this, '/user/userManage')">用户管理</a></li>
          <li><a href="javascript:void(0);" onclick="loadPage(this, '/movieManage')">电影管理</a></li>
          <li><a href="javascript:void(0);" onclick="loadPage(this, '/updateRecommand')">更新数据库</a></li>
        </ul>
      </li>
      </c:if>
    </ul>
  </div>
  <div id="content">

  </div>
  <!--Footer-part-->
  <div class="row-fluid">
    <div id="footer" class="span12"> 2016 &copy; 中南大学软件学院 卢卫刚
      <%--<a href="/http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="/http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> --%>
    </div>
  </div>
  <!--end-Footer-part-->

  </body>
</html>
