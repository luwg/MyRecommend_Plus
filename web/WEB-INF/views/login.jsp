<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <!--引入开始-->
  <link rel="stylesheet" href="/resources/css/style.css">
  <!--[if lt IE 9]>
  <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <!--引入结束-->
  <style>
    body{margin:0; padding:0;}
    ul#wimoban_nav{padding-left:50px; margin-bottom:10px; border-bottom:2px solid #ccc; overflow:hidden; _zoom:1;}
    ul#wimoban_nav li{float:left; display:inline; margin:10px;}
    ul#wimoban_nav li a{display:block; font-size:16px;}
    ul#wimoban_nav li a,#wimoban_p,#wimoban_p a{color:#fff; font-family:"微软雅黑";}
    ul#wimoban_nav li a:hover,#wimoban_p a:hover{color:red;}
    #wimoban_p{text-align:center; font-size:14px; clear:both;}
  </style>
  </head>
<body oncontextmenu='return false' ondragstart='return false'>
<!-- 代码开始 -->
<section class="container">
  <div class="login">
    <h1>登录电影推荐系统</h1>
    <form method="post" action="/loginAction">
      <p><input type="text" name="userId" value="" placeholder="Username"></p>
      <p><input type="password" name="password" value="" placeholder="Password"></p>

      <p class="submit"><input type="submit" name="commit" value="Login"></p>
    </form>
  </div>
</section>

</body>
</html>
