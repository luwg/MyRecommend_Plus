
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
            var p = $('#dg').datagrid('getPager');
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
            $('#dg').datagrid('beginEdit', getRowIndex(target));
        }
        //保存修改的用户
        function saverow(target){
            var editIndex = getRowIndex(target);
            $('#dg').datagrid('endEdit', editIndex);
            var editRow = $('#dg').datagrid('getRows')[editIndex];
            $.post(
                    '/user/save',
                    {'userId':editRow['userId'],
                    'name':editRow['name'],
                    'password':editRow['password'],
                    'favorite':editRow['favorite']},
                    function(isOk) {
                        if (isOk) {
                            $('#dg').datagrid('acceptChanges');
                            $('#dg').datagrid('reload');
                            $.messager.alert('提示', '修改成功');
                        }
                    },
                    'json'
            );
            $('#dg').datagrid('endEdit', getRowIndex(target));
        }
        function cancelrow(target){
            var editIndex = getRowIndex(target);
            if (editIndex == ($('#dg').datagrid('getRows').length - 1)) {
                $('#dg').datagrid('deleteRow', editIndex);
            } else {
                $('#dg').datagrid('cancelEdit', getRowIndex(target));
            }

        }
        function deleterow(target){
            $.messager.confirm('Confirm','确定删除?',function(r){
                if (r){
                    var editIndex = getRowIndex(target);
                    var editRow = $('#dg').datagrid('getRows')[editIndex];
                    $.get(
                      '/user/delete?userId=' + editRow['userId'],
                       function(isOk) {
                           $('#dg').datagrid('reload');
                           $.messager.alert('提示', '删除成功');
                       },
                       'json'
                    );
                }
            });
        }
        function updateActions(index){
            $('#dg').datagrid('updateRow',{
                index: index,
                row:{}
            });
        }
        function openDialog(target) {
            var editIndex = getRowIndex(target);
            var selectRow = $('#dg').datagrid('getRows')[editIndex];
            var userId = selectRow['userId'];
            reloadCommentList(userId);
            $('#dlg').dialog('open');
        }

        function reloadCommentList(userId) {
            $('#commentList').datagrid({url:
                    '/user/getComments?userId=' + userId});
        }
        function append(){
            $('#dg').datagrid('appendRow',{status:'P'});
            editIndex = $('#dg').datagrid('getRows').length-1;
            $('#dg').datagrid('selectRow', editIndex)
                    .datagrid('beginEdit', editIndex);

        }
    </script>
</head>
<body>

<br/><br/><br/>
<div style="margin-left: 100px;">

<table id="dg" class="easyui-datagrid" title="用户列表" style="width:750px;height:auto; "
       data-options="
				iconCls: 'icon-edit',
				singleSelect: true,
				toolbar: '#tb',
				url: '/user/getUserInfo',
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
        <th data-options="field:'userId', align:'center', editor:'textbox', width:180">用户ID</th>
        <th data-options="field:'name',width:120,align:'center',editor:'textbox'">用户名</th>
        <th data-options="field:'password',width:120,align:'center',editor:'textbox'">密码</th>
        <th data-options="field:'favorite',width:120,align:'center',editor:'textbox'">兴趣爱好</th>
        <th data-options="width:160, field:'action', align:'center',
            formatter:function(value,row, index){
                if (row.editing) {
                    var s = '<a href=\'#\' onclick=\'saverow(this)\'>保存</a> ';
                    var c = '<a href=\'#\' onclick=\'cancelrow(this)\'>撤销</a>';
                    return s + c;
                } else {
                    var e = '<a href=\'#\' onclick=\'editrow(this)\'>编辑</a> ';
                    var d = '<a href=\'#\' onclick=\'deleterow(this)\'>删除</a> ';
                    var i = '<a href=\'#\' onclick=\'openDialog(this)\'>评价信息</a>';
                    return e + d + i;
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

<jsp:include page="commentInfoDialog.jsp"/>


</body>
</html>