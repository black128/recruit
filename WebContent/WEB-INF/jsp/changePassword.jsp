<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		var error = false;
		
		$("#username").blur(function(){
			var username = $("#username").val();
			if(username == '') {
				showError('username', '账户不能为空');
				error = true;
				return;
			}
			
			
		});

		$("#oldpass").blur(function(){
			var username = $("#username").val();
			if(username=='') {
				showError('username', '账户不能为空');
				error = true;
				return;
			}

			var oldpass = $("#oldpass").val();
			if(oldpass =='') {
				showError('oldpass', '密码不能为空');
				error = true;
				return;
			}

			
		});

		$("#newpass").blur(function(){
			var newpass = $("#newpass").val();
			if(newpass == '') {
				showError('newpass', '新密码不能为空');
				error = true;
			}
			else {
				$("#newpass").css({"border-color":"green"});
				$("#newpassTip").css({"display":"none"});
			}
		});

		$("#newpassAgain").blur(function(){
			var newpass = $("#newpass").val();
			if(newpass == '') {
				showError('newpass', '新密码不能为空');
				error = true;

			}

			var newpassAgain = $("#newpassAgain").val();
			if(newpassAgain != newpass) {
				showError('newpassAgain', '与输入的新密码不一致');
				error = true;
			}
			else {
				$("#newpassAgain").css({"border-color":"green"});
				$("#newpassAgainTip").css({"display":"none"});
			}
		});
		
		$("#submit").click(function(event){
			$("#username").blur();
			$("#oldpass").blur();
			$("#newpass").blur();
			$("#newpassAgain").blur();
			if(!error) {
				$.ajax({
					type: "POST",
					url: '<%=basePath%>user/changePwd.action',
			    	data: {/* KEYDATA:code,tm:new Date().getTime() */
			    		"user_name":$("#username").val(),
			    		"oldpwd":$("#oldpass").val(),
			    		"user_password":$("#newpass").val(),
			    		"chkpwd":$("#newpassAgain").val()
			    	},
					/* dataType:'json',
					cache: false, */
					success: function(data){
						if("00" == data){
							window.location.href="<%=basePath%>login.action";
						}else if("01" == data){
							showError('oldpass', '密码不能为空');
						}else if("02" == data){
							showError('newpass', '新密码不能为空');
						}else{
							alert(data);
							showError('newpassAgain', '密码不同');
						}
					}
				});
			}

			event.preventDefault();
			return false;
		});
	});

	function showError(formSpan, errorText) {
		$("#" + formSpan).css({"border-color":"red"});
		$("#" + formSpan + "Tip").empty();
		$("#" + formSpan + "Tip").append(errorText);;
		$("#" + formSpan + "Tip").css({"display":"inline"});
	}
	
</script>
</head>
<body>

<div class=".container" style="margin-top:100px;width:250%;">
	<form class="form-horizontal" role="form" >
	  <input type="hidden" id="username" name="user_name" value="${user.user_name}">
	  <div class="form-group">
	    <label for="username" class="col-sm-2 control-label">您的账户:</label>
	    <div class="col-sm-10">
	     	${user.user_name}
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="oldpass" class="col-sm-2 control-label">旧密码</label>
	    <div class="col-sm-10">
	      <input type="password" name="oldPwd" class="form-control" style="width:250px;" id="oldpass" placeholder="Old Password"><span id="oldpassTip" style="display:none;color:red;"></span>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="newpass" class="col-sm-2 control-label">新密码</label>
	    <div class="col-sm-10">
	      <input type="password" name="user_password" class="form-control" style="width:250px;" id="newpass" placeholder="New Password"><span id="newpassTip" style="display:none;color:red;"></span>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="newpassAgain" class="col-sm-2 control-label">再次确认新密码</label>
	    <div class="col-sm-10">
	      <input type="password" name="chkpwd" class="form-control" style="width:250px;" id="newpassAgain" placeholder="Again New Password"><span id="newpassAgainTip" style="display:none;color:red;"></span>
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="col-sm-2 control-label">  </label>
	 	 <button type="submit" class="btn btn-primary" id="submit" style="text-align:center;">确认修改</button>
	  </div>
	</form>
</div>
<div id="modifySuccess" class="alert alert-success alert-dismissable" style="width:50%;margin-left:40%;display:none;">
  <strong>Success!</strong> 你已成功修改密码！
</div>
</body>
</html>