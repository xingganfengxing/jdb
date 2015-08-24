<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>用户管理</title>
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
    <a href="">用户管理</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />
    <aside class="right-side">
        <section class="content">
            <!-- 职位信息 -->
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
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                    <label class="gx-texttitle">
                                        邮箱：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
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
                                <div class="group-item">
                                    <label class="gx-texttitle">
                                        毕业年份：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                    <label class="gx-texttitle">
                                        系院：
                                    </label>
                                    <input type="text" class="gx-textbox" placeholder="请输入您的账号">
                                </div>
                                <button class="gx-button gx-button-info gx-button-small admin-btn fr">查询</button>
                            </div>
                            <div class="admin-table">
                                <table class="tab">
                                    <tr class="tab-h">
                                        <td>账号</td>
                                        <td>
                                            <select class="gx-textbox">
                                                <option>状态</option>
                                                <option>色情</option>
                                                <option>重伤</option>
                                            </select>
                                        </td>
                                        <td>姓名</td>
                                        <td>
                                            <select class="gx-textbox">
                                                <option>性别</option>
                                                <option>男</option>
                                                <option>女</option>
                                            </select>
                                        </td>
                                        <td>邮箱 </td>
                                        <td>
                                            <select class="gx-textbox">
                                                <option>院校</option>
                                                <option></option>
                                                <option></option>
                                            </select>
                                        </td>
                                        <td>毕业年份</td>
                                        <td>系院</td>
                                        <td>注册时间</td>
                                        <td>操作</td>
                                    </tr>
                                    <tr>
                                        <td>18716786543</td>
                                        <td>正常</td>
                                        <td>王磊</td>
                                        <td>男</td>
                                        <td>jiaodabang@126.com</td>
                                        <td></td>
                                        <td>2009</td>
                                        <td>计算机科学与技术</td>
                                        <td>2015-08-21</td>
                                        <td class="tab-Nine">
                                            <a hef="#" class="gx-button gx-button-info gx-button-actived gx-button-small">详情</a>
                                            <button class="gx-button gx-button-error gx-button-actived gx-button-small">停用</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>18716786543</td>
                                        <td>正常</td>
                                        <td>王磊</td>
                                        <td>男</td>
                                        <td>jiaodabang@126.com</td>
                                        <td></td>
                                        <td>2009</td>
                                        <td>计算机科学与技术</td>
                                        <td>2015-08-21</td>
                                        <td class="tab-Nine">
                                            <a hef="#" class="gx-button gx-button-info gx-button-actived gx-button-small">详情</a>
                                            <button class="gx-button gx-button-error gx-button-actived gx-button-small">启用</button>
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
            <!-- end 职位发布 -->
        </section>
    </aside>
</div>
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
<jsp:include page="footer.jsp" />