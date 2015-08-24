<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>用户详情</title>
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
    <i class="fa fa-angle-right"></i>
    <a href="">用户详情</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />
    <aside class="right-side">
        <section class="content">
            <div class="admin-main">
                <div class="admin-hd">
                    <h3>用户详情</h3>
                </div>
                <div class="admin-bd">
                    <div class="home">
                        <div class="notice fl">
                            <div class="group-detdil">
                                <ul class="detdilLeft fl">
                                    <li><span>姓名：</span>曹格</li>
                                    <li><span>英文名：</span>caoge</li>
                                    <li><span>邮箱：</span>caoge@qq.com</li>
                                </ul>
                                <ul class="detdilCenter fl">
                                    <li><span>性别：</span>男</li>
                                    <li><span>电话：</span>12345678</li>
                                    <li><span>微信：</span>345678</li>
                                </ul>
                                <div class="detail-right fr">
                                    <img src="img/banner.png"/>
                                </div>
                            </div>
                            <div class="group-detdil">
                                <ul class="detdilLeft fl">
                                    <li><span>学校：</span>北京交通大学</li>
                                    <li><span>系院：</span>土木工程系</li>
                                </ul>
                                <ul class="detdilCenter fl">
                                    <li><span>年纪：</span>2009</li>
                                </ul>
                            </div>
                            <div class="group-detdil">
                                <ul class="detdilLeft fl">
                                    <li><span>职位：</span>总经理</li>
                                    <li><span>公司：</span>中国对外贸易公司</li>
                                </ul>
                            </div>
                            <div class="group-detdil-btn">
                                <button class="gx-button gx-button-error gx-button-small">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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