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
    <h1><a href="/resources/dashboard.html">Matrix Admin</a></h1>
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
      <li><a href="/resources/tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
      <li><a href="/resources/grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
      <c:if test="${user.userId == 'admin'}">
      <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>管理员操作</span></a>
        <ul>
          <li><a href="/resources/form-common.html">用户管理</a></li>
          <li><a href="/resources/form-validation.html">电影管理</a></li>
          <li><a href="/resources/form-wizard.html">Form with Wizard</a></li>
        </ul>
      </li>
      </c:if>
      <li><a href="/resources/buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
      <li><a href="/resources/interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
      <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
        <ul>
          <li><a href="/resources/index2.html">Dashboard2</a></li>
          <li><a href="/resources/gallery.html">Gallery</a></li>
          <li><a href="/resources/calendar.html">Calendar</a></li>
          <li><a href="/resources/chat.html">Chat option</a></li>
        </ul>
      </li>
      <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
        <ul>
          <li><a href="/resources/error403.html">Error 403</a></li>
          <li><a href="/resources/error404.html">Error 404</a></li>
          <li><a href="/resources/error405.html">Error 405</a></li>
          <li><a href="/resources/error500.html">Error 500</a></li>
        </ul>
      </li>

    </ul>
  </div>
  <div id="content">

  </div>
  <!--Footer-part-->
  <div class="row-fluid">
    <div id="footer" class="span12"> 2013 &copy; Matrix Admin. More Templates <a href="/resources/http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="/resources/http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
  </div>
  <!--end-Footer-part-->

  </body>
</html>
