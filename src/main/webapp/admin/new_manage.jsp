<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>咨询管理</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css"/>
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
    <a href="">咨询管理</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />
    <aside class="right-side">
        <section class="content">
                <div class="admin-main">
                    <div class="admin-bd">
                        <div class="user-box home1">
                            <div class="administrator clearfix administrator-margin">
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        咨询编号：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                    <label class="gx-texttitle">
                                        咨询名称：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                </div>
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        创建时间：
                                    </label>
                                    <input type="text" class="gx-textbox form_datetime" placeholder="请选择开始时间" size="16" readonly>
                                    <span>
                                       到
                                    </span>
                                    <input type="text" class="gx-textbox form_datetime" placeholder="请选择结束时间" size="16" readonly>
                                </div>
                                <button class="gx-button gx-button-info gx-button-small admin-btn fr">查询</button>
                            </div>
                            <div class="administrator clearfix administrator-margin">
                                <div class="group-item">
                                    <label class="gx-texttitle1">
                                        咨询创建账号：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                    <label class="gx-texttitle1">
                                        咨询创建着：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                </div>
                            </div>
                            <div class="admin-table">
                                <table class="tab">
                                    <tr class="tab-h">
                                        <td>序号</td>
                                        <td>咨询编号</td>
                                        <td>活动名称</td>
                                        <td>
                                            <select class="gx-textbox">
                                                <option>咨询类型</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="gx-textbox">
                                                <option>咨询状态</option>
                                                <option>正常</option>
                                                <option>下线</option>
                                                <option>删除</option>
                                            </select>
                                        </td>
                                        <td>咨询创建账号</td>
                                        <td>咨询创建者</td>
                                        <td>咨询创建时间</td>
                                        <td>操作</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>123456</td>
                                        <td></td>
                                        <td></td>
                                        <td>正常</td>
                                        <td>12345678</td>
                                        <td>孙凯</td>
                                        <td>2015-08-21</td>
                                        <td class="tab-Nine">
                                            <a hef="#" class="gx-button gx-button-info gx-button-actived gx-button-small">查看</a>
                                            <button class="gx-button gx-button-error gx-button-actived gx-button-small">下线</button>
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
<!--<footer>-->
    <!--<div class="footer">-->
        <!--<p>一休理财管理 ©2015 yixiu.com 京ICP备888888号</p>-->
        <!--<p>登录IP:192.168.1.1 2015-5-30 上次登录IP:192.168.1.1 2015-6-23</p>-->
    <!--</div>-->
<!--</footer>-->
<script src="js/jquery.min.js"></script>
<script src="js/admin_yc.js"></script>
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