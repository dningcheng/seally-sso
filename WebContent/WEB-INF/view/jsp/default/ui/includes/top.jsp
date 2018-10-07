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

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <title>CAS &#8211; Central Authentication Service</title>
 
  <link rel="shortcut icon" href="images/logo.png">

 <!-- 处理session失效后登陆页面内嵌到框架中 -->
 <script type="text/javascript">  
    if(top != window){
	    top.location.href = window.location.href;  
    }  
 </script>
</head>
<body id="cas">
  <div id="container">
      <header>
        <a id="logo" href="http://www.jasig.org" title="<spring:message code="logo.title" />">Jasig</a>
        <h1>Central Authentication Service (CAS)</h1>
      </header>
      <div id="content">