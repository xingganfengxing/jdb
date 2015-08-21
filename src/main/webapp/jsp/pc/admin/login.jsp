<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head>
    <title>用户登录</title>
    <script src="<c:url value='/js/loader/sea.js'/>"></script>
    <script src="<c:url value='/js/loader/sea-config.js'/>"></script>
</head>
<body>
<form id="form1" name="form1" method="post" action="pc/admin/dologin">
    用户名：<input type="text" name="username" id="username"/><br/>
    密 码：<input type="text" name="password" id="password"/><br/>
    验证码：<input type="text" name="verifyCode" id="verifyCode"/><img src="<%=basepath%>/login/verifycode"/><br/>

    <input type="button" value="登 录" id="submitBtn"/>
</form>
<script>
    seajs.use('<%=basepath%>/js/web/login');
</script>
</body>
</html>
