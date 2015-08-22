<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>系统管理员</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css"/>
    <link rel="stylesheet" href="css/admin-ui.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/index.css"/>

</head>
<body>
<!-- header-->
<header>
    <div class="header clearfix">
        <h1 class="yx-logo">
            <a href="/">交大邦应用管理后台<i>1.0 系统</i></a>
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
                    <a href="javascript:;">退出</a>
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
    <a id="cAdmin" class="gx-button gx-button-small gx-crumbs-btn" href="###" >新建管理员</a>

    <i class="fa fa-paperclip"></i>
    <span>当前位置：</span>
    <span>首页</span>
    <i class="fa fa-angle-right"></i>
    <a href="">系统管理员</a>
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
            <div class="admin-main">
                    <div class="admin-bd">
                        <div class="user-box home1">
                            <div class="administrator clearfix administrator-margin">
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        账号：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                    <label class="gx-texttitle">
                                        姓名：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的姓名">
                                </div>
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        注册日期：
                                    </label>
                                    <input type="text" class="gx-textbox form_datetime" placeholder="请选择开始时间" size="16" readonly>
                                    <span>
                                       到
                                    </span>
                                    <input type="text" class="gx-textbox form_datetime" placeholder="请选择结束时间" size="16" readonly>
                                </div>
                                <button class="gx-button gx-button-info gx-button-small admin-btn fr">查询</button>
                            </div>
                            <div class="admin-table">
                                <table class="tab">
                                    <tr class="tab-h">
                                        <td class="tab-first"></td>
                                        <td class="tab-two">账号</td>
                                        <td class="tab-three">姓名</td>
                                        <td class="tab-four">
                                            <select class="gx-textbox">
                                                <option>会员状态</option>
                                                <option>删除</option>
                                                <option>正常</option>
                                            </select>
                                        </td>
                                        <td class="tab-five">注册日期</td>
                                        <td class="tab-six">操作</td>
                                    </tr>
                                    <tr>
                                        <td class="tab-first">
                                            <input type="checkbox"/>
                                        </td>
                                        <td class="tab-two">56476547@qq.com</td>
                                        <td class="tab-three">孙凯</td>
                                        <td class="tab-four">正常</td>
                                        <td class="tab-five">2014-11-13</td>
                                        <td class="tab-six">
                                            <b class="gx-button gx-button-info gx-button-actived gx-button-small edit-admin-btn">编辑</b>
                                            <span class="gx-button gx-button-error gx-button-actived gx-button-small">删除</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tab-first">
                                            <input type="checkbox"/>
                                        </td>
                                        <td class="tab-two">56476547@qq.com</td>
                                        <td class="tab-three">孙凯</td>
                                        <td class="tab-four">删除</td>
                                        <td class="tab-five">2014-11-13</td>
                                        <td class="tab-six">
                                            <b class="gx-button gx-button-info gx-button-actived gx-button-small edit-admin-btn">编辑</b>
                                            <span class="gx-button gx-button-error gx-button-actived gx-button-small">删除</span>
                                        </td>
                                    </tr>
                                </table>
                                <div class="clearfix">
                                    <nav class="gx-pager">
                                        <a class="gx-pager-disabled" href="###"><i class="gx-icon">«</i></a>
                                        <a class="gx-pager-actived" href="###">1</a>
                                        <a href="###">2</a>
                                        ...
                                        <a href="###">99</a>
                                        <a href="###">100</a>
                                        <a href="###"><i class="gx-icon">»</i></a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </aside>
</div>

<!-- 状态弹出 -->
<!--<div class="popUpBox status-admin">-->
    <!--<h1 class="popUpBoxTit">-->
        <!--温馨提示-->
        <!--<a class="popUpBoxNo"  href="javascript:void(0)"></a>-->
    <!--</h1>-->
    <!--<div class="popUpBoxCon status-conts">-->
        <!--<p>状态提示！</p>-->
    <!--</div>-->
<!--</div>-->

<!-- 新建系统管理员弹窗 -->
<div class="popUpBox create-admin">
    <h1 class="popUpBoxTit">
        新建系统管理员
        <a class="popUpBoxNo"  href="javascript:void(0)"></a>
    </h1>
    <div class="popUpBoxCon">
        <div class="newPop-menu">
            <ul>
                <li>
                    <label><span>*</span>账&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp户：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label><span>*</span>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label><span>*</span>再次输入：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label><span>*</span>真实姓名：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label>&nbsp电&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp话：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
            </ul>
            <div class="addCancle">
                <button class="gx-button gx-button-info">添加</button>
                <button class="gx-button gx-button-error">取消</button>
            </div>
        </div>
    </div>
</div>

<!--<div class="newPop gx-hide"></div>-->

<!-- 信息编辑 -->
<div class="popUpBox edit-admin">
    <h1 class="popUpBoxTit">
        信息编辑
        <a class="popUpBoxNo"  href="javascript:void(0)"></a>
    </h1>
    <div class="popUpBoxCon">
        <div class="newPop-menu">
            <ul>
                <li>
                    <label><span>*</span>账&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp户：</label>
                    <b>jiaodabang</b>
                </li>
                <li>
                    <label><span>*</span>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label><span>*</span>再次输入：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label><span>*</span>真实姓名：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
                <li>
                    <label>&nbsp电&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp话：</label>
                    <input type="text" class="newpop-tet"/>
                </li>
            </ul>
            <div class="addCancle">
                <button class="gx-button gx-button-info">添加</button>
                <button class="gx-button gx-button-error">取消</button>
            </div>
        </div>
    </div>
</div>
<!--<div class="newPop gx-hide"></div>-->


<!--<footer>-->
    <!--<div class="footer">-->
        <!--<p>一休理财管理 ©2015 yixiu.com 京ICP备888888号</p>-->
        <!--<p>登录IP:192.168.1.1 2015-5-30 上次登录IP:192.168.1.1 2015-6-23</p>-->
    <!--</div>-->
<!--</footer>-->


<script src="js/jquery.min.js"></script>
<script src="js/admin_yc.js"></script>
<script src="js/dialog.js"></script>
<script src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<script type="text/javascript">
    $(".form_datetime").datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language:  'zh-CN'
    });

</script>

</body>
</html>