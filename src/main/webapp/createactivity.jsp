<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form id="form" name="fo1rm1" method="post" action="activity/createactivity" enctype="multipart/form-data">
        当前用户电话：<input type="text" name="phone" id="phone"/><br/>
        标题：<input type="text" name="title" id="title"/><br/>
        图片：<input type="file" name="pic" id="pic"/><br/>
        举办时间：<input type="text" name="startTime" id="startTime"/><br/>
        结束时间：<input type="text" name="endTime" id="endTime"/><br/>
        报名截止时间：<input type="text" name="closeTime" id="closeTime"/><br/>
        人数上限：<input type="text" name="personLimit" id="personLimit"/><br/>
        举办城市：<input type="text" name="city" id="city"/><br/>
        详细位置：<input type="text" name="address" id="address"/><br/>
        活动简介：<input type="text" name="activityDesc" id="activityDesc"/><br/>
        核心话题：<input type="text" name="topic" id="topic"/><br/>
        参与费用：<input type="text" name="joinFee" id="joinFee"/><br/>
        其他：<input type="text" name="otherInfo" id="otherInfo"/><br/>
        联系人：<input type="text" name="contactMan" id="contactMan"/><br/>
        电话：<input type="text" name="contactPhone" id="contactPhone"/><br/>
        Email：<input type="text" name="contactEmail" id="contactEmail"/><br/>
        <input type="submit" />
    </form>
</body>
</html>
