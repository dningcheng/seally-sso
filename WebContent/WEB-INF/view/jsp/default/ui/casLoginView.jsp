<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<!DOCTYPE html>

<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
<head>
<meta charset="UTF-8" />
<title>seally-sso</title>
<link rel="shortcut icon" href="images/logo.png">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<style type="text/css">
body{background: #333;}
.container{
   width: 420px;
   height: 300px;
   margin: 10% auto 0px auto;
}
.container table{
	width:400px;
	border: 4px solid #555A60;
    border-radius:4px;
	margin: 10px auto 0px auto;
}
.container table tr.logo{
	text-align: center;
	height: 60px;
}
.container table td.tip span{
	display: inline-block;
	height: 30px;
	line-height: 26px;
	/* background: #555A60;
	border-radius: 3px; */
}
.container table td.login-info{
	text-align: center;
	height: 30px;
	font-size: 14px;
	color: #a94442;
}

.container table td{
	text-align:center;
	height: 50px;
}
.container table td.tip{
	text-align: right;
	width:80px;
	color: #fff;
}
.container table td.input{
	text-align: left;
	padding-left: 10px;
}
.container table td input.input{
	width: 250px;
	height: 30px;
	border: 1px solid #555A60;
	border-radius: 2px;
	background-color: #333;
	color:#fff;
	padding-left: 5px;
}
.container table td input.btn{
	border: solid 0px #555A60;
	border-radius: 2px;
	background: #555A60;
	color: #fff;
}
.container table td input.submit{
	margin-left:7px;
	width:240px;
	height: 30px;
	border: solid 0px #555A60;
	border-radius: 2px;
	background: #555A60;
	color: #fff;
}
.container table td input.reset{
	width:60px;
	height: 30px;
	border-radius: 2px;
	background: #555A60;
	color: #333;
}

.container table td input:HOVER{
	border: solid 1px #fff;
	border-radius: 2px;
	
}
.container table td span.logo{
	display: inline-block;
	width: 40px;
	height: 40px;
	background: url("images/lock.png");
	background-size:100% 100%;
	margin-top: 10px;
}


</style>
<!-- 处理session失效后登陆页面内嵌到框架中 -->
<script type="text/javascript">
	if (top != window) {
		top.location.href = window.location.href;
	}
	
	$(function(){
		bindEvent();
	})
	
	function bindEvent(){
		$("input.reset").bind("click",function(){
			$("span.err").html("");
		});
	}
</script>
</head>
<body>
<div class="container"> 
  <form:form method="post" commandName="${commandName}" htmlEscape="true" class="form-horizontal col-sm-offset-3 col-md-offset-3">
	  <!-- 登录页面只要提交5个属性：lt、execution、_eventId、username、password -->
	  <input type="hidden" name="lt" value="${loginTicket}" />
      <input type="hidden" name="execution" value="${flowExecutionKey}" />
      <input type="hidden" name="_eventId" value="submit" />
	  
	  <table>
	  	<tr class="logo">
	  		<td colspan="2"><span class="logo"></span></td>
	  	</tr>
	  	<tr>
	  		<td class="tip"><span>账号:</span></td>
	  		<td class="input"><input class="input" type="text" name="username" value="${data}" placeholder="请输入用户名"></td>
	  	</tr>
	  	<tr>
	  		<td class="tip"><span>密码:</span></td>
	  		<td class="input"><input class="input" type="password" name="password" placeholder="请输入密码"></td>
	  	</tr>
	  	<tr>
	  		<td colspan="2">
		  		<input class="btn submit" value="登     录" type="submit" />
		  		<input class="btn reset" value="重  置" type="reset" />
	  		</td>
	  	</tr>
	  	<tr>
	  		<td class="login-info" colspan="2">
		  		<!-- 以下这一句form:errors取出登录失败的异常信息 -->
			    <span class="err"><form:errors/></span>
	  		</td>
	  	</tr>
	  </table>
	  
  </form:form>
</div>
</body>