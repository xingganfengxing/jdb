<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>资讯管理</title>
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
    <a href="">资讯管理</a>
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
                                        资讯编号：
                                    </label>
                                    <input id="qid" type="text" class="gx-textbox" placeholder="请输入资讯编号">
                                    <label class="gx-texttitle">
                                        资讯名称：
                                    </label>
                                    <input id="qtitle" type="text" class="gx-textbox" placeholder="请输入资讯名称">
                                </div>
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        创建时间：
                                    </label>
                                    <input id="qstartTime" type="text" class="gx-textbox form_datetime" placeholder="请选择开始时间" size="16" readonly>
                                    <span>
                                       到
                                    </span>
                                    <input id="qendTime" type="text" class="gx-textbox form_datetime" placeholder="请选择结束时间" size="16" readonly>
                                </div>
                                <button id="query" class="gx-button gx-button-info gx-button-small admin-btn fr">查询</button>
                                <div class="group-item">
                                    <label class="gx-texttitle1">
                                        资讯创建账号：
                                    </label>
                                    <input id="qusername" type="text" class="gx-textbox" placeholder="请输入创建者账号">
                                    <label class="gx-texttitle1">
                                        资讯创建着：
                                    </label>
                                    <input id="qrealName" type="text" class="gx-textbox" placeholder="请输入创建者姓名">
                                </div>
                            </div>
                            <div class="admin-table">
                                <table id="datatable" class="tab">
                                    <tr class="tab-h">
                                        <td>序号</td>
                                        <td>资讯编号</td>
                                        <td>活动名称</td>
                                        <td>
                                            <select id="typeslt" class="gx-textbox">
                                                <option>资讯类型</option>
                                                <option>投融资</option>
                                                <option>思源创业</option>
                                                <option>合作商机</option>
                                                <option>互帮互助</option>
                                                <option>校友企业</option>
                                                <option>求职招聘</option>
                                                <option>新闻动态</option>
                                                <option>在水一方</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select id="stateslt" class="gx-textbox">
                                                <option>状态</option>
                                                <option>正常</option>
                                                <option>下线</option>
                                            </select>
                                        </td>
                                        <td>资讯创建账号</td>
                                        <td>资讯创建者</td>
                                        <td>资讯创建时间</td>
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
                                <jsp:include page="pager.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </aside>
</div>
<script src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script src="js/page.js"></script>
<script src="js/web/new_manage.js"></script>
<script type="text/javascript">
    $(".form_datetime").datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language:  'zh-CN'
    });

</script>
<jsp:include page="footer.jsp" />