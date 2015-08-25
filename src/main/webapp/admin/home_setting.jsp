<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>首页设置</title>
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
    <a href="">首页设置</a>
</div>

<div class="yx-wrapper clearfix">
    <jsp:include page="left.jsp" />
    <aside class="right-side">
        <section class="content">
            <!-- 首页焦点图 -->
                <div class="admin-main">
                    <div class="admin-bd">
                        <div class="home">
                            <div class="homeSetting">
                                <h2>首页焦点图</h2>
                                <div id="newsAndAtvs" class="clearfix">
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="fl">
                                        <dt>1位 焦点图</dt>
                                        <dt><img src="img/banner.png"/></dt>
                                        <dd>
                                            <div class="homeSelect">
                                                <div class="fl">
                                                    <label>类&nbsp&nbsp&nbsp&nbsp型：</label>
                                                    <select>
                                                        <option>活动</option>
                                                        <option>资讯</option>
                                                    </select>
                                                </div>
                                                <button class="gx-button gx-button-error gx-button-small fr">清空</button>
                                            </div>
                                            <div class="homeAction clearfix">
                                                <label>绑定活动：</label>
                                                <input type="text" placeholder="请填写活动编号"/>
                                            </div>
                                            <div class="home-pic clearfix">
                                                <div class="gx-file-input fl">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">获取图片</a>
                                                </div>
                                                <div class="gx-file-input fr">
                                                    <input type="file">
                                                    <a href="javascript:;" class="gx-button gx-button-success gx-button-small gx-file-input-btn">自定义图片</a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="homeWord">
                                    <div class="homeDetails fl">
                                       <p>注意：1、点击发布后才会正式上线；</p>
                                       <p class="homewordT">2、发布内容为最新保存的信息；</p>
                                    </div>
                                    <div class="gx-submit-btn">
                                        <button class="gx-button gx-button-success">保存</button>
                                        <button class="gx-button gx-button-info">发布</button>
                                    </div>
                                </div>
                            </div>
                            <div class="homeSettingM">
                                <h2>朋友圈设置</h2>
                                <div class="homesT">
                                    <div class="homesLeft fl">
                                        <div class="homeSettingH">1号圈子推荐位</div>
                                        <dl>
                                            <dt><img src="img/banner.png" /></dt>
                                            <dd>
                                                <p>公司团队管理经验交流</p>
                                                <a>这里是经济家，四星家的乐园。这里是</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="homesRight fl">
                                        <div class="homeRightBtn fl">
                                            <label>绑定活动：</label>
                                            <input type="text" placeholder="请填写圈子编号"/>
                                        </div>
                                        <button class="gx-button gx-button-small gx-button-bordered">绑定</button>
                                    </div>
                                </div>
                                <div class="homesT">
                                    <div class="homesLeft fl">
                                        <div class="homeSettingH">2号圈子推荐位</div>
                                        <dl>
                                            <dt><img src="img/banner.png" /></dt>
                                            <dd>
                                                <p>公司团队管理经验交流</p>
                                                <a>这里是经济家，四星家的乐园。这里是</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="homesRight fl">
                                        <div class="homeRightBtn fl">
                                            <label>绑定活动：</label>
                                            <input type="text" placeholder="请填写圈子编号"/>
                                        </div>
                                        <button class="gx-button gx-button-small gx-button-bordered">绑定</button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="homeWord">
                                    <div class="homeDetails fl">
                                        <p>注意：1、点击发布后才会正式上线；</p>
                                        <p class="homewordT">2、发布内容为最新保存的信息；</p>
                                    </div>
                                    <div class="gx-submit-btn">
                                        <button class="gx-button gx-button-success">保存</button>
                                        <button class="gx-button gx-button-info">发布</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- end 职位发布 -->
        </section>
    </aside>
</div>
<script src="js/web/home_setting.js"></script>
<jsp:include page="footer.jsp" />