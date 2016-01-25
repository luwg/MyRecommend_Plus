<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link href="/resources/css/pop.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" href="/resources/css/star.css" />
<script src="/resources/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/popup_layer.js"></script>
<script type="text/javascript">

  $(function() {
    //示例1，默认弹出层
    var layer = new PopupLayer({
      trigger:".movieImg",
      popupBlk:"#blk1",
      eventType:'mouseover',
      offsets:{
        x:200,
        y:-275
      }
    });

    $('.movieImg').mouseout(function() {
      layer.popupLayer.hide();
    });



    var TB = function() {
      var T$ = function(id) { return document.getElementById(id) }
      var T$$ = function(r, t) { return (r || document).getElementsByTagName(t) }
      var Stars = function(cid, rid, hid, config) {
        var lis = $('._zzjs_net li'), curA;

        for (var i = 0, len = lis.length; i < len; i++) {
          $(lis[i]).parent()[0].isEvaluate = false;

          lis[i].onclick = function() {
              var ul = $(this).parent()[0];
              if (!ul.isEvaluate) {

                var score = $(this).children().attr('star:value');

                var movieId = $(this).parent().parent().parent().prev('a').children().attr('movieId');
                var _this = this;
                $.post(
                  'evaluateMovie',
                  {'movie.id':movieId, 'rate':score},
                  function(isOk) {
                    if (isOk) {
                      $(_this).parent().next('span').html('<em>' + score + '分</em>' + "感谢评价");
                      curA = $(_this).children()[0];
                      ul.isEvaluate = true;
                    }
                  }, 'json'
                );
              } else {
                alert('您已对这部电影做过评分');
              }


          };

          lis[i].onmouseout = function() {
            curA && (curA.className += config.curcss);
            curA = null;
          }
        }
      };
      return {Stars: Stars}
    }().Stars('www_zzjs_', 'stars2-tips', 'stars2-input', {
      'info' : ['人品极差', '人品不咋地', '人品一般吧', '人品不错', '人品极好啊'],
      'curcss': ' current-rating',
      'step': 10
    });
  });

</script>

<div class="row-fluid">
  <c:forEach var="movie" items="${movies}" varStatus="status">
    <c:if test="${status.index != 0 && status.index % 4 == 0}">
</div>
<br/>

<div class="row-fluid">
  </c:if>
  <div class="span3">
    <a href="#"><img movieId="${movie.id}" class="movieImg" src="/resources/images/movie_cover/${movie.cover}" width="180px;"/></a>

    <div style="text-align: center; font-size: 15px; width: 180px;">
      <a href="#"><span style="color: #006dcc; ">${movie.title}</span></a>&nbsp;&nbsp;
      <span style="color: red;">${movie.rate}</span>
      <div class="www_zzjs_net">
        <ul class="_zzjs_net" id="www_zzjs_">
          <li><a href="javascript:void(0);" class="one-star" star:value="10">10</a></li>
          <li><a href="javascript:void(0);" class="two-stars" star:value="20">20</a></li>
          <li><a href="javascript:void(0);" class="three-stars" star:value="30">30</a></li>
          <li><a href="javascript:void(0);" class="four-stars" star:value="40">40</a></li>
          <li><a href="javascript:void(0);" class="five-stars" star:value="50">50</a></li>
        </ul>
        <span class="result"></span>
      </div>
    </div>
  </div>
  </c:forEach>

</div>

<div id="blk1" class="blk" style="display:none;">
</div>
