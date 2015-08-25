<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>圈子管理</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/admin-ui.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css"/>
    <link rel="stylesheet" href="css/jdb.css"/>
    <link rel="stylesheet" href="css/index.css"/>

</head>
<body>
<!-- header-->
<jsp:include page="header.jsp" />
<!-- crumbs-->
<div class="gx-crumbs clearfix">

    <a class="gx-button gx-button-small gx-crumbs-btn" href="circle_create.jsp" >创建圈子</a>

    <i class="fa fa-paperclip"></i>
    <span>当前位置：</span>
    <span>首页</span>
    <i class="fa fa-angle-right"></i>
    <a href="">圈子管理</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />

    <aside class="right-side">
        <section class="content">
                <div class="admin-main">
                    <div class="admin-hd">
                        <h3>圈子管理</h3>
                    </div>
                    <div class="admin-bd">
                        <div class="user-box">
                            <div class="administrator">
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
                            <div class="user-list circle-list">
                                <table class="gx-table gx-table-striped circle-table">
                                    <thead>
                                        <tr>
                                            <th>圈子号</th>
                                            <th>圈子图标</th>
                                            <th>圈子大图</th>
                                            <th>圈子名称</th>
                                            <th>圈子介绍</th>
                                            <th>
                                                <select class="gx-textbox">
                                                    <option>正常</option>
                                                    <option>下线</option>
                                                </select>
                                            </th>
                                            <th>创建时间</th>
                                            <th>关注人数</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="gx-table-actived">
                                            <td>888888</td>
                                            <td><img class="circle-logo" src="img/300x300.png" alt=""/></td>
                                            <td><a class="links" href="">点击查看</a></td>
                                            <td>天空不作美，股市不争气</td>
                                            <td>叽里咕噜大家有啥说啥，有啥扯啥，文明用语。</td>
                                            <td class="gx-table-info">正常</td>
                                            <td>2013-04-23</td>
                                            <td>33333</td>
                                            <td>
                                                <a class="gx-button gx-button-info gx-button-small" href="###">查看信息</a>
                                                <a class="gx-button gx-button-warning gx-button-small" href="circle_edit.jsp">编辑</a>
                                                <a class="gx-button gx-button-error gx-button-small" href="###">下线</a>
                                            </td>
                                        </tr>
                                        <tr class="gx-table-actived">
                                            <td>888888</td>
                                            <td><img class="circle-logo" src="img/300x300.png" alt=""/></td>
                                            <td><a class="links" href="">点击查看</a></td>
                                            <td>天空不作美，股市不争气</td>
                                            <td>叽里咕噜大家有啥说啥，有啥扯啥，文明用语。</td>
                                            <td class="gx-table-error">下线</td>
                                            <td>2013-04-23</td>
                                            <td>33333</td>
                                            <td>
                                                <a class="gx-button gx-button-info gx-button-small" href="###">查看信息</a>
                                                <a class="gx-button gx-button-warning gx-button-small" href="circle_edit.jsp">编辑</a>
                                                <a class="gx-button gx-button-error gx-button-small" href="###">下线</a>
                                            </td>
                                        </tr>
                                        <tr class="gx-table-actived">
                                            <td>888888</td>
                                            <td><img class="circle-logo" src="img/300x300.png" alt=""/></td>
                                            <td><a class="links" href="">点击查看</a></td>
                                            <td>天空不作美，股市不争气</td>
                                            <td>叽里咕噜大家有啥说啥，有啥扯啥，文明用语。</td>
                                            <td class="gx-table-info">正常</td>
                                            <td>2013-04-23</td>
                                            <td>33333</td>
                                            <td>
                                                <a class="gx-button gx-button-info gx-button-small" href="###">查看信息</a>
                                                <a class="gx-button gx-button-warning gx-button-small" href="circle_edit.jsp">编辑</a>
                                                <a class="gx-button gx-button-error gx-button-small" href="###">下线</a>
                                            </td>
                                        </tr>
                                        <tr class="gx-table-actived">
                                            <td>888888</td>
                                            <td><img class="circle-logo" src="img/300x300.png" alt=""/></td>
                                            <td><a class="links" href="">点击查看</a></td>
                                            <td>天空不作美，股市不争气</td>
                                            <td>叽里咕噜大家有啥说啥，有啥扯啥，文明用语。</td>
                                            <td class="gx-table-info">正常</td>
                                            <td>2013-04-23</td>
                                            <td>33333</td>
                                            <td>
                                                <a class="gx-button gx-button-info gx-button-small" href="###">查看信息</a>
                                                <a class="gx-button gx-button-warning gx-button-small" href="circle_edit.jsp">编辑</a>
                                                <a class="gx-button gx-button-error gx-button-small" href="###">下线</a>
                                            </td>
                                        </tr>
                                        <tr class="gx-table-actived">
                                            <td>888888</td>
                                            <td><img class="circle-logo" src="img/300x300.png" alt=""/></td>
                                            <td><a class="links" href="">点击查看</a></td>
                                            <td>天空不作美，股市不争气</td>
                                            <td>叽里咕噜大家有啥说啥，有啥扯啥，文明用语。</td>
                                            <td class="gx-table-info">正常</td>
                                            <td>2013-04-23</td>
                                            <td>33333</td>
                                            <td>
                                                <a class="gx-button gx-button-info gx-button-small" href="###">查看信息</a>
                                                <a class="gx-button gx-button-warning gx-button-small" href="circle_edit.jsp">编辑</a>
                                                <a class="gx-button gx-button-error gx-button-small" href="###">下线</a>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
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
<jsp:include page="footer.jsp" />