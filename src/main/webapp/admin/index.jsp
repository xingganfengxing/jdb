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
<header>
    <div class="header clearfix">
        <h1 class="yx-logo">
            <a href="index.jsp">交大邦应用管理后台<i>1.0 系统</i></a>
        </h1>
        <a href="javascript:;" class="sidebar-toggle">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="login-user">
            <div class="top-infor">
                <span>
                    <i class="fa fa-question-circle"></i>
                    <a href="">帮助</a>
                </span>
                <span>
                    <i class="fa fa-sign-in"></i>
                    <a href="javascript:window.location='<%=basepath%>/pc/login/loginout';">退出</a>
                </span>
            </div>
            <div class="top-infor">
                <span>
                    <i class="fa fa-user"></i>
                    管理员：<a href="###">Admin</a>
                </span>
                <span>
                    <i class="fa fa-wrench"></i>
                    <a href="javascript:;">修改密码</a>
                </span>
            </div>
        </div>
    </div>
</header>
<!-- crumbs-->
<div class="gx-crumbs clearfix">

    <i class="fa fa-paperclip"></i>
    <span>当前位置：</span>
    <span>首页</span>
</div>

<div class="yx-wrapper clearfix">
    <aside class="left-side">
        <section class="sidebar">
            <!-- 侧边菜单 begin -->
            <ul class="sidebar-menu">
                <li class="active">
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span>首页</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="administrator.jsp">
                        <i class="fa fa-gear"></i>
                        <span>系统管理</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="administrator.jsp"><i class="fa fa-angle-double-right"></i>创建管理员</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>角色管理</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>权限管理</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>管理员日志</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="home_setting.jsp">
                        <i class="fa fa-list-ol"></i>
                        <span>业务管理</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="home_setting.jsp"><i class="fa fa-angle-double-right"></i>首页设置</a></li>
                        <li><a href="report_manage.jsp"><i class="fa fa-angle-double-right"></i>举报管理</a></li>
                        <li><a href="circle_list.jsp"><i class="fa fa-angle-double-right"></i>圈子管理</a></li>
                        <li><a href="user_manage.jsp"><i class="fa fa-angle-double-right"></i>用户管理</a></li>
                        <li><a href="activity_manage.jsp"><i class="fa fa-angle-double-right"></i>活动管理</a></li>
                        <li><a href="new_manage.jsp"><i class="fa fa-angle-double-right"></i>咨询管理</a></li>
                    </ul>
                </li>
                <!--<li>-->
                <!--<a href="">-->
                <!--<i class="fa fa-envelope"></i> <span>邮箱</span>-->
                <!--<small class="badge pull-right bg-yellow">12</small>-->
                <!--</a>-->
                <!--</li>-->
            </ul>
            <!-- 侧边菜单 end -->
        </section>
    </aside>
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