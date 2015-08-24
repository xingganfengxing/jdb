<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>编辑圈子</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/admin-ui.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/jdb.css"/>

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
    <a href="">圈子管理</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />

    <aside class="right-side">
        <section class="content">
                <div class="admin-main">
                    <div class="admin-hd">
                        <h3>编辑圈子</h3>
                    </div>
                    <div class="admin-bd">
                        <!-- 编辑圈子 -->
                        <div class="circle-create">
                            <form action="">
                                <div class="gx-textitem circle-create-item">
                                    <label class="gx-texttitle">
                                        圈子名字：
                                    </label>
                                    <div class="circle-edit-name">
                                        我们一起撒旦安师大安师
                                    </div>
                                    <!--<input type="text" class="gx-textbox circle-create-name" placeholder="请输入内容...">-->
                                </div>
                                <div class="gx-textitem circle-create-item">
                                    <label class="gx-texttitle">
                                        圈子图表：
                                    </label>
                                    <textarea class="gx-textbox" placeholder="请输入内容..." maxlength="80" required></textarea>
                                </div>
                                <div class="gx-textitem circle-create-item">
                                    <label class="gx-texttitle">
                                        圈子介绍：
                                    </label>
                                    <div class="gx-file-img">
                                        <div class="file-img-big">
                                            <span style="background-image:url(img/400x200.png)"></span>
                                        </div>
                                        <div class="gx-file-input">
                                            <input type="file">
                                            <a href="javascript:;" class="gx-button gx-button-success gx-file-input-btn">上传图片</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="gx-textitem circle-create-item">
                                    <label class="gx-texttitle">
                                        圈子图标：
                                    </label>
                                    <div class="gx-file-img">
                                        <div class="file-img-small">
                                            <span style="background-image:url(img/300x300.png)"></span>
                                        </div>
                                        <div class="gx-file-input">
                                            <input type="file">
                                            <a href="javascript:;" class="gx-button gx-button-success gx-file-input-btn">上传图片</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="gx-submit-btn">
                                    <button class="gx-button gx-button-info">创建</button>
                                    <button class="gx-button gx-button-error">取消</button>
                                </div>
                            </form>
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