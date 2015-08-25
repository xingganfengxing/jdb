<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
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
            <%
                if (request.getSession().getAttribute("isSuper") != null) {
            %>
            <li class="treeview">
                <a href="administrator.jsp">
                    <i class="fa fa-gear"></i>
                    <span>系统管理</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="administrator.jsp"><i class="fa fa-angle-double-right"></i>管理员维护</a></li>
                </ul>
            </li>
            <%
                }
            %>
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
                    <li><a href="new_manage.jsp"><i class="fa fa-angle-double-right"></i>资讯管理</a></li>
                </ul>
            </li>
        </ul>
        <!-- 侧边菜单 end -->
    </section>
</aside>