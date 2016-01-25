
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>用户列表</title>
  <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/default/easyui.css">
  <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/icon.css">
  <script type="text/javascript" src="/resources/easyui/jquery.min.js"></script>
  <script type="text/javascript" src="/resources/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript">

    $(function() {
      initTable();
    });

    function initTable() {
      var p = $('#movieList').datagrid('getPager');
      $(p).pagination({
        pageSize: 10,//每页显示的记录条数，默认为10
        pageList: [5,10,15,20, 50],//可以设置每页记录条数的列表
        beforePageText: '第',//页数文本框前显示的汉字
        afterPageText: '页    共 {pages} 页',
        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录'
      });
    }

    function getRowIndex(target){
      var tr = $(target).closest('tr.datagrid-row');
      return parseInt(tr.attr('datagrid-row-index'));
    }

    function editrow(target) {
      $('#movieList').datagrid('beginEdit', getRowIndex(target));
    }
    //保存修改的用户
    function saverow(target){
      var editIndex = getRowIndex(target);
      $('#movieList').datagrid('endEdit', editIndex);
      var editRow = $('#movieList').datagrid('getRows')[editIndex];
      $.post(
              '/updateMovie',
              {'id':editRow['id'],
                'title':editRow['title'],
                'category':editRow['category'],
                'language':editRow['language'],
                'releaseDate':editRow['releaseDate'],
                'lengthOfFilm':editRow['lengthOfFilm'],
                'rate':editRow['rate']
              },

              function(isOk) {
                if (isOk) {
                  $('#movieList').datagrid('acceptChanges');
                  $('#movieList').datagrid('reload');
                  $.messager.alert('提示', '修改成功');
                }
              },
              'json'
      );
      $('#movieList').datagrid('endEdit', getRowIndex(target));
    }
    function cancelrow(target){
      var editIndex = getRowIndex(target);
      if (editIndex == ($('#movieList').datagrid('getRows').length - 1)) {
        $('#movieList').datagrid('deleteRow', editIndex);
      } else {
        $('#movieList').datagrid('cancelEdit', getRowIndex(target));
      }

    }
    function deleterow(target){
      $.messager.confirm('Confirm','确定删除?',function(r){
        if (r){
          var editIndex = getRowIndex(target);
          var editRow = $('#movieList').datagrid('getRows')[editIndex];
          $.get(
                  '/deleteMovie?id=' + editRow['id'],
                  function(isOk) {
                    $('#movieList').datagrid('reload');
                    $.messager.alert('提示', '删除成功');
                  }
          );
        }
      });
    }
    function updateActions(index){
      $('#movieList').datagrid('updateRow',{
        index: index,
        row:{}
      });
    }

    function append(){
      $('#movieList').datagrid('appendRow',{status:'P'});
      editIndex = $('#movieList').datagrid('getRows').length-1;
      $('#movieList').datagrid('selectRow', editIndex)
              .datagrid('beginEdit', editIndex);
    }
  </script>
</head>
<body>

<br/><br/><br/>
<div style="margin-left: 100px;">

  <table id="movieList" class="easyui-datagrid" title="电影列表" style="width:920px;height:auto; "
         data-options="
				iconCls: 'icon-edit',
				singleSelect: true,
				toolbar: '#tb',
				url: '/getMovieList',
				method: 'get',
				rownumbers:true,
				pagination:true,
				onBeforeEdit:function(index,row){
					row.editing = true;
					updateActions(index);
				},
				onAfterEdit:function(index,row){
					row.editing = false;
					updateActions(index);
				},
				onCancelEdit:function(index,row){
					row.editing = false;
					updateActions(index);
				}
			">
    <thead>
    <tr>
      <th data-options="field:'id', align:'center', width:100">id</th>
      <th data-options="field:'title',width:150,align:'center',editor:'textbox'">标题</th>
      <th data-options="field:'category',width:150,align:'center',editor:'textbox'">种类</th>
      <th data-options="field:'language',width:100,align:'center',editor:'textbox'">语言</th>
      <th data-options="field:'releaseDate',width:100,align:'center',editor:'datebox',
          formatter:function(value,row,index) {
               var date = new Date(value);
               return date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
          }
      ">发布日期</th>
      <th data-options="field:'lengthOfFilm',width:100,align:'center',editor:'textbox',
          formatter:function(value,row,index) {
            return value + '分钟';
          }
      ">电影长度</th>
      <th data-options="field:'rate',width:50,align:'center',
      editor: {
        type: 'numberbox',
        options:{precision:1}
      }

      ">评分</th>
      <th data-options="width:120, field:'action', align:'center',
            formatter:function(value,row, index){
                if (row.editing) {
                    var s = '<a href=\'#\' onclick=\'saverow(this)\'>保存</a> ';
                    var c = '<a href=\'#\' onclick=\'cancelrow(this)\'>撤销</a>';
                    return s + c;
                } else {
                    var e = '<a href=\'#\' onclick=\'editrow(this)\'>编辑</a> ';
                    var d = '<a href=\'#\' onclick=\'deleterow(this)\'>删除</a> ';
                    return e + d;
                }

            }
            ">操作</th>

    </tr>

    </thead>
  </table>

</div>


<div id="tb">
  <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">添加</a>
</div>


</body>
</html>