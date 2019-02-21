<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/font.css">
<link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>

</head>

<body class="layui-anim layui-anim-up">
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="<%=basePath%>admin/welcome.action">首页</a> 
		<a href="<%=basePath%>admin/searchuser.action">会员列表</a>
			</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so"
				action="<%=basePath%>admin/searchuser.action" method="post">
				<input type="text" name="user_name" id="uname" placeholder="请输入用户名"
					autocomplete="off" class="layui-input"> <input type="text"
					name="user_email" id="uemail" placeholder="请输入邮箱"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<span class="x-right" style="line-height: 40px">共有数据:${num}条</span> </xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th>
						<div id="box" class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>
					</th>
					<th>编号</th>
					<th>用户名</th>
					<th>性别</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>地址</th>
					<th>加入时间</th>
					<th>状态</th>
					<th>简历</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${page.list}" var="user" varStatus="status">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='2'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td>${page.pageSize*(pageNo-1)+status.index+1}</td>
						<td>${user.user_name}</td>
						<td><c:if test="${user.user_sex==1}">男</c:if> <c:if
								test="${user.user_sex==2}">女</c:if> <c:if
								test="${user.user_sex==0}">未设置</c:if></td>
						<td>${user.user_phone}</td>
						<td>${user.user_email}</td>
						<td>${user.user_address}</td>
						<td>${user.user_date}</td>
						<td class="td-status"><a style="color: blue"
							id="${user.user_id}" value="${user.user_state}"
							onclick="change(this)"> <c:if test="${user.user_state==1}">正常状态(点击冻结)</c:if>
								<c:if test="${user.user_state==0}">冻结状态(点击解除)</c:if>
						</a></td>
						<td><a href="<%=basePath%>admin/user_job_resume.action?id=${user.user_id}" >简历列表</a></td>
						<td class="td-manage"><a title="删除"
							onclick="member_del(this,'${user.user_id}')" href="javascript:;">
								<i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page">
			<div>			
				<a href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=1" class="prev">&lt;&lt;</a>
				
				<c:if test="${page.pages<5}">
					<c:forEach begin="1" end="${page.pages}" var="p">
						<c:if test="${p==pageNo}">
					 		<span class="current">${p}</span>
						</c:if>
						<c:if test="${p!=pageNo}">
							<a class="num" href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=${p}">${p}</a>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${page.pages>=5}">
					<c:if test="${pageNo<3}">
							<c:forEach begin="1" end="5" var="p">
								<c:if test="${p==pageNo}">
					 				<span class="current">${p}</span>
								</c:if>
								<c:if test="${p!=pageNo}">
									<a class="num" href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=${p}">${p}</a>
								</c:if>
							</c:forEach>
					</c:if>
					
					<c:if test="${page.pages-pageNo<3}">
						<c:forEach begin="${page.pages-4}" end="${page.pages}" var="p">
							<c:if test="${p==pageNo}">
					 			<span class="current">${p}</span>
							</c:if>
							<c:if test="${p!=pageNo}">
								<a class="num" href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=${p}">${p}</a>
							</c:if>
						</c:forEach>
					</c:if>
					
					<c:if test="${page.pages-pageNo>=3 && pageNo>=3}">
						<c:forEach begin="${pageNo-2}" end="${pageNo+2}" var="p">
							<c:if test="${p==pageNo}">
					 			<span class="current">${p}</span>
							</c:if>
							<c:if test="${p!=pageNo}">
								<a class="num" href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=${p}">${p}</a>
							</c:if>
						</c:forEach>
					</c:if>
				</c:if>
				<a href="<%=basePath%>admin/searchuser.action?user_name=${serchuser.user_name}&user_email=${serchuser.user_name}&pageNo=${page.pages}" class="next">&gt;&gt;</a>
			</div>
		</div>

	</div>
	<script>
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*用户-停用*/
      function change(obj){
			var id=obj.id;
			var state = $("#"+id).attr("value");
			
			if($("#"+id).html().trim()=="正常状态(点击冻结)"){
				$("#"+id).html("冻结状态(点击解除)");
			}else{
				$("#"+id).html("正常状态(点击冻结)");
			}
			$.ajax({
				type:"POST", // 提交方式
				url:'<%=basePath%>admin/changestate.action',
				data:{
					"user_id":id,
					"user_state":state,
				}, // 数据 使用json格式进行传输
				success : function(data) { // 返回数据
					if("00"==data){
						alert("修改成功");
					}else{
						alert("修改失败");
					}
				
				}
			})
		}
      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              
              $.ajax({
    				type:"POST", // 提交方式
    				url:'<%=basePath%>admin/deleteuser.action',
    				data:{
    					"user_id":id,
    				}, // 数据 使用json格式进行传输
    				success : function(data) { // 返回数据
    					if(00==data){
    						layer.msg('已删除!',{icon:1,time:1000});
    					}else{
    						layer.msg('删除失败!',{icon:1,time:1000});
    					}
    				
    				}
    			})
             
          });
         
          
      }



      function delAll(argument) {
        var data = tableCheck.getData();
        var arr = document.getElementsByClassName("boxxx");

        
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
        $.ajax({
			type:"POST", // 提交方式
			url:'<%=basePath%>admin/deleteAll.action',
				data : {
					"arr" : arr,
				}, // 数据 使用json格式进行传输
				success : function(data) { // 返回数据
					if (00 == data) {
						alert("删除成功");
					} else {
						alert("删除失败");
					}
				}
			})

		}
	</script>
	
</body>

</html>