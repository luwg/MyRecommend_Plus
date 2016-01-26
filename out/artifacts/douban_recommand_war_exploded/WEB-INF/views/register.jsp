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
    <h1>欢迎注册</h1>
    <form method="post" action="/user/registerCommit">
      <p><span style="color:red;">${register_msg}</span></p>
      <p>姓名：<input type="text" name="name" value="" placeholder="UserName"></p>
      <p>密码：<input type="password" name="password" value="" placeholder="Password"></p>
      <p>请再输入一遍密码：<input type="password" name="password_validate" value="" placeholder="Password"></p>
      <br />
      请选择您喜欢的电影类型<br /><br />
      <label><input name="favorite" type="checkbox" value="歌舞" />歌舞 </label>
      <label><input name="favorite" type="checkbox" value="恐怖" />恐怖 </label>
      <label><input name="favorite" type="checkbox" value="武侠" />武侠 </label>
      <label><input name="favorite" type="checkbox" value="喜剧" />喜剧 </label>
      <label><input name="favorite" type="checkbox" value="奇幻" />奇幻 </label>
      <label><input name="favorite" type="checkbox" value="情色" />情色 </label>
      <label><input name="favorite" type="checkbox" value="儿童" />儿童 </label>
      <label><input name="favorite" type="checkbox" value="剧情" />剧情 </label>
      <label><input name="favorite" type="checkbox" value="战争" />战争 </label>
      <label><input name="favorite" type="checkbox" value="悬疑" />悬疑 </label>
      <label><input name="favorite" type="checkbox" value="犯罪" />犯罪 </label>
      <label><input name="favorite" type="checkbox" value="灾难" />灾难 </label>
      <label><input name="favorite" type="checkbox" value="家庭" />家庭 </label>
      <label><input name="favorite" type="checkbox" value="动作" />动作 </label>
      <label><input name="favorite" type="checkbox" value="冒险" />冒险 </label>
      <label><input name="favorite" type="checkbox" value="科幻" />科幻 </label>
      <label><input name="favorite" type="checkbox" value="音乐" />音乐 </label>
      <label><input name="favorite" type="checkbox" value="运动" />运动 </label>
      <label><input name="favorite" type="checkbox" value="动画" />动画 </label>
      <label><input name="favorite" type="checkbox" value="历史" />历史 </label>
      <label><input name="favorite" type="checkbox" value="传记" />传记 </label>
      <label><input name="favorite" type="checkbox" value="古装" />古装 </label>
      <label><input name="favorite" type="checkbox" value="爱情" />爱情 </label>
      <label><input name="favorite" type="checkbox" value="同性" />同性 </label>
      <label><input name="favorite" type="checkbox" value="惊悚" />惊悚 </label>
      <p class="submit">
        <input type="submit" name="commit" value="提交"> </p>
    </form>
    </form>
  </div>
</section>

</body>
</html>
