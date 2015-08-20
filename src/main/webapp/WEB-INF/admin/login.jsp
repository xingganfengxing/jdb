<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <script src="js/loader/sea.js"/>
    <script src="js/loader/sea-config.js"/>
    <%String basepath=request.getContextPath(); %>
</head>
<body>
    <form id="form1" name="form1" method="post" action="user/login">
        手机号：<input type="text" name="username" id="username"/><br/>
        标题：<input type="text" name="password" id="password"/><br/>
        <input type="submit" text="登 录" />
    </form>
    <script>
        var globalBaseUrl = '<%=basepath%>';
        seajs.use('/jdb/resources/js/wap/yc_jobs');
    </script>
</body></html>
