<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">

	function deletecomment(target) {
        $.messager.confirm('Confirm', '确定删除?', function (r) {
            if (r) {
                var editIndex = getRowIndex(target);
                var selectRow = $('#commentList').datagrid('getRows')[editIndex];
                var commentId = selectRow['commentId'];
                $.get(
                        '/user/deleteComment?id=' + commentId,
                        function (isOk) {
                            $('#commentList').datagrid('reload');
                            $.messager.alert('提示', '删除成功');
                        }
                );
            }
        });
    }
</script>

<div id="dlg" class="easyui-dialog" title="电影评价信息"  data-options="iconCls:'icon-save', closed:true" style="width:750px;height:400px;padding:10px">
  <table id="commentList" class="easyui-datagrid" title="电影评价列表" style="width:700px;height:auto; "
         data-options="
				iconCls: 'icon-edit',
				singleSelect: true,
				url: '',
				method: 'get',
				rownumbers:true,
				pagination:true

			">
    <thead>
    <tr>
      <th data-options="field:'commentId'">评论ID</th>
      <th data-options="field:'title', align:'center', width:100">名称</th>
      <th data-options="field:'category',width:100,align:'center'">种类</th>
      <th data-options="field:'language',width:100,align:'center'">语言</th>
      <th data-options="field:'rate',width:100,align:'center'">评分</th>
      <th data-options="field:'userRate',width:100,align:'center'">用户评分</th>
		<th data-options="width:100, field:'action', align:'center',
            formatter:function(value,row, index){
                var d = '<a href=\'#\' onclick=\'deletecomment(this)\'>删除</a> ';
                return d;

            }
            ">操作</th>
    </thead>
  </table>
</div>

