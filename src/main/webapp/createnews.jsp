<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form id="form2" name="form2" method="post" action="news/createnews" enctype="multipart/form-data">
        手机号：<input type="text" name="phone" id="phone"/><br/>
        标题：<input type="text" name="title" id="title"/><br/>
        分类：<input type="text" name="type" id="type"/><br/>
        图片：<input type="file" name="pic" id="pic"/><br/>
        内容：<input type="text" name="content" id="content"/><br/>
        <input type="submit" />
    </form>
</body>
</html>
