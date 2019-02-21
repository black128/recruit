<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/font.css">
<link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
</head>
<body onload="showLeftTime()">
	<div class="x-body layui-anim layui-anim-up">
		<blockquote class="layui-elem-quote">
			欢迎管理员： <span class="x-red">${admin.ad_name}</span>！当前时间:<label id="show"></label>
		</blockquote>
		<fieldset class="layui-elem-field">
			<legend>数据统计</legend>
			<div class="layui-field-box">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-body">
							<div class="layui-carousel x-admin-carousel x-admin-backlog"
								lay-anim="" lay-indicator="inside" lay-arrow="none"
								style="width: 100%; height: 90px;">
								<div carousel-item="">
									<ul class="layui-row layui-col-space10 layui-this">
										<li class="layui-col-xs2"><a href="<%=basePath%>admincate/allcate.action"
											class="x-admin-backlog-body">
												<h3>工作种数</h3>
												<p>
													<cite>${catenum }</cite>
												</p>
										</a></li>
										<li class="layui-col-xs2"><a href="<%=basePath%>admin/admin-list.action"
											class="x-admin-backlog-body">
												<h3>管理员数</h3>
												<p>
													<cite>${adminnum}</cite>
												</p>
										</a></li>
										<li class="layui-col-xs2"><a href="<%=basePath%>admin/searchuser.action"
											class="x-admin-backlog-body">
												<h3>会员数</h3>
												<p>
													<cite>${usernum}</cite>
												</p>
										</a></li>
										<li class="layui-col-xs2"><a href="<%=basePath%>admin/adforward2.action"
											class="x-admin-backlog-body">
												<h3>工作数</h3>
												<p>
													<cite>${jobnum}</cite>
												</p>
										</a></li>
										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</fieldset>
		<fieldset class="layui-elem-field">
			<legend>系统通知</legend>
			<div class="layui-field-box">
				<table class="layui-table" lay-skin="line">
					<tbody>
						<tr>
							<td><a class="x-a" href="/" target="_blank">新版x-admin
									2.0上线了</a></td>
						</tr>
						<tr>
							<td><a class="x-a" href="/" target="_blank">交流qq群:(519492808)</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
		<fieldset class="layui-elem-field">
			<legend>系统信息</legend>
			<div class="layui-field-box">
				<table class="layui-table">
					<tbody>
						<tr>
							<th>xxx版本</th>
							<td>1.0.180420</td>
						</tr>
						<tr>
							<th>服务器地址</th>
							<td>x.xuebingsi.com</td>
						</tr>
						<tr>
							<th>操作系统</th>
							<td>WINNT</td>
						</tr>
						<tr>
							<th>运行环境</th>
							<td>Apache/2.4.23 (Win32) OpenSSL/1.0.2j mod_fcgid/2.3.9</td>
						</tr>
						<tr>
							<th>PHP版本</th>
							<td>5.6.27</td>
						</tr>
						<tr>
							<th>PHP运行方式</th>
							<td>cgi-fcgi</td>
						</tr>
						<tr>
							<th>MYSQL版本</th>
							<td>5.5.53</td>
						</tr>
						<tr>
							<th>ThinkPHP</th>
							<td>5.0.18</td>
						</tr>
						<tr>
							<th>上传附件限制</th>
							<td>2M</td>
						</tr>
						<tr>
							<th>执行时间限制</th>
							<td>30s</td>
						</tr>
						<tr>
							<th>剩余空间</th>
							<td>86015.2M</td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
		<fieldset class="layui-elem-field">
			<legend>开发团队</legend>
			<div class="layui-field-box">
				<table class="layui-table">
					<tbody>
						<tr>
							<th>版权所有</th>
							<td>xxxxx(xxxx) <a href="http://www.xxx.com/" class='x-a'
								target="_blank">访问官网</a></td>
						</tr>
						<tr>
							<th>项目完善</th>
							<td>翟中华，张日炜，蔚杰</td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
		<blockquote class="layui-elem-quote layui-quote-nm">感谢layui,百度Echarts,jquery,本系统由x-admin提供技术支持。</blockquote>
	</div>

</body>
<script language="javascript" type="text/javascript">
	
	//获得当前时间,刻度为一千分一秒，网页中显示时间
	var initializationTime = (new Date()).getTime();
	function showLeftTime() {
		var now = new Date();
		var year = now.getYear();
		year=year-100;
		var month = now.getMonth()+1;
		var day = now.getDate();
		var hours = now.getHours();
		var minutes = now.getMinutes();
		var seconds = now.getSeconds();
		document.all.show.innerHTML = "20" + year + "年" + month + "月" + day + "日 " + hours + ":" + minutes + ":" + seconds + "";
		//一秒刷新一次显示时间，会导致刷新频繁
		var timeID = setTimeout(showLeftTime, 1000);
	}
	//
</script>

</html>