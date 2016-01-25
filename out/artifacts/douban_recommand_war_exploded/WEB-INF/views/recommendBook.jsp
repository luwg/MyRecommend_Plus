<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>
<body>
<div class="container-fluid">
  <hr/>
  <div class="row-fluid">
    <c:forEach var="book" items="${books}" varStatus="status">
    <c:if test="${status.index != 0 && status.index % 4 == 0}">
  </div>
  <br/>
  <div class="row-fluid">
    </c:if>
    <div class="span3">
      <a href="#"><img src="/resources/images/book_cover/${book.cover}" width="180px;"/></a>
      <div style="text-align: center; font-size: 15px; width: 180px;">
        <a href="#"><span style="color: #006dcc; ">${book.title}</span></a>&nbsp;&nbsp;
        <span style="color: red;">${book.rate}</span>
      </div>
    </div>
    </c:forEach>
  </div>
</div>

</body>
</html>
