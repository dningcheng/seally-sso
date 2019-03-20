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
body{background: #2F4056;}
.container{
    width: 466px;
    height: 432px;
    margin: 5% auto 0px auto;
    background-color: white;
     border-radius:4px;
}
.container table{
	width:465px;
	/* border: 4px solid #555A60; */
    border-radius:4px;
	margin: 10px auto 0px auto;
}
.container table tr.logo{
	height: 90px;
}
.container table td.tip span{
	display: inline-block;
    height: 30px;
    line-height: 27px;
    font-size: 16px;
	/* background: #555A60;
	border-radius: 3px; */
}
.container table td.login-info{
	/* text-align: center; */
	height: 30px;
	font-size: 14px;
	color: #FF5722;
}
span.err{
	display: inline-block;
    width: 100%;
    text-align: center;
}
.container table td{
	height: 75px;
}
.container table td.logo{
	padding-left:180px;
}
.container table td.input{
	text-align: left;
	padding-left: 38px;
}
.container table td input.input{
	width: 340px;
    height: 34px;
    border: 1px solid #dddddd;
    border-radius: 6px;
    /* background-color: #333; */
    color: #c2c2c2;
    padding-left: 38px;
    font-size: 14px;
}
.container table td input.btn{
	border: solid 0px #555A60;
	border-radius: 2px;
	background: #555A60;
	color: #fff;
}
.container table td input.submit{
	margin-left:39px;
	width:306px;
	height: 34px;
	border: solid 0px #555A60;
	border-radius: 6px;
	background: #5FB878;
	color: white;
}
.container table td input.reset{
	width:67px;
	height: 34px;
	border-radius: 6px;
	border:1px solid #5FB878;
	/* background: #5FB878; */
	background: white;
	color: #5FB878;
}

.container table td span.logo{
	display: inline-block;
	width: 100px;
	height: 100px;
	background: url("images/logo.png");
	background-size:100% 100%;
	margin-top: 18px;
	/* border: 1px solid #2F4056;
	border-radius: 20px; */
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
	  		<td class="logo"><span class="logo"></span></td>
	  	</tr>
	  	<tr>
	  		<td class="input"><input class="input" type="text" name="username" value="${data}" placeholder="请输入用户名"></td>
	  	</tr>
	  	<tr>
	  		<td class="input"><input class="input" type="password" name="password" placeholder="请输入密码"></td>
	  	</tr>
	  	<tr>
	  		<td style="margin-top: 50px;height: 70px;">
		  		<input class="btn submit" value="登     录" type="submit" />
		  		<input class="btn reset" value="重  置" type="reset" />
	  		</td>
	  	</tr>
	  	<tr>
	  		<td class="login-info">
		  		<!-- 以下这一句form:errors取出登录失败的异常信息 -->
			    <span class="err"><form:errors/></span>
	  		</td>
	  	</tr>
	  </table>
	  
  </form:form>
</div>
</body>