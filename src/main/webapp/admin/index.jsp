<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>首页</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/admin-ui.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/index.css"/>

    <script src="js/jquery.min.js"></script>
    <script src="js/admin_yc.js"></script>

</head>
<body>
<!-- header-->
<jsp:include page="header.jsp" />
<!-- crumbs-->
<div class="gx-crumbs clearfix">

    <i class="fa fa-paperclip"></i>
    <span>当前位置：</span>
    <span>首页</span>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />
    <aside class="right-side">
        <section class="content">
            <!-- 职位信息 -->
                <div class="admin-main">
                    <div class="admin-bd">
                        <div class="home">
                            <div class="notice fl">
                                <h2>公告</h2>
                                <ul class="noticeUl">
                                    <li>系统联系人：<span></span></li>
                                    <li>研发：<span>胡峰</span><span>18567855676</span></li>
                                    <li>产品：<span>蒋鑫</span><span>18567855676</span></li>
                                </ul>
                            </div>
                            <div class="noticeRight fr">
                                <h2>会员统计</h2>
                                <ul class="noticeUl">
                                    <li>系统联系人：<span></span></li>
                                    <li>研发：<span>胡峰</span><span>18567855676</span></li>
                                    <li>产品：<span>蒋鑫</span><span>18567855676</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- end 职位发布 -->
        </section>
    </aside>
</div>


<!--<footer>-->
    <!--<div class="footer">-->
        <!--<p>一休理财管理 ©2015 yixiu.com 京ICP备888888号</p>-->
        <!--<p>登录IP:192.168.1.1 2015-5-30 上次登录IP:192.168.1.1 2015-6-23</p>-->
    <!--</div>-->
<!--</footer>-->
</body>
</html>