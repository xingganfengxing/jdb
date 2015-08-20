<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath(); %>
<html>
<head>
    <title>用户登录</title>
    <script src="<c:url value='/js/loader/sea.js'/>"></script>
    <script src="<c:url value='/js/loader/sea-config.js'/>"></script>
</head>
<body>
<form id="form1" name="form1" method="post" action="user/login">
    手机号：<input type="text" name="username" id="username"/><br/>
    标题：<input type="text" name="password" id="password"/><br/>
    <input type="submit" text="登 录"/>
</form>
<script>
    seajs.use('web/login');
</script>
</body>
</html>