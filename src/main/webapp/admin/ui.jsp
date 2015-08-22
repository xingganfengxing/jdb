<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%String basepath = request.getContextPath();%>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>UI</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Globak-x">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/admin-ui.css"/>

    <script src="js/jquery.min.js"></script>
    <script src="js/admin_yc.js"></script>

</head>
<body>
<div class="clearfix">
    <h2>按钮</h2>
    <aside>
        <p>基本用法</p>
        <a href="###" class="gx-button">a 按钮</a>
        <input type="button" class="gx-button" value="input 按钮">
        <button type="button" class="gx-button">button 按钮</button>
        <span class="gx-button">span 按钮</span>
    </aside>
    <aside>
        <p>多色用法</p>
        <button class="gx-button">默认</button>
        <button class="gx-button gx-button-transparent">透明</button>
        <button class="gx-button gx-button-info">信息</button>
        <button class="gx-button gx-button-success">成功</button>
        <button class="gx-button gx-button-warning">警告</button>
        <button class="gx-button gx-button-error">错误</button>
    </aside>
    <aside>
        <p>禁用状态</p>
        <button class="gx-button">正常</button>
        <button class="gx-button" disabled="disabled">默认</button>
        <button class="gx-button gx-button-transparent" disabled="disabled">透明</button>
        <button class="gx-button gx-button-info" disabled="disabled">信息</button>
        <button class="gx-button gx-button-success" disabled="disabled">成功</button>
        <button class="gx-button gx-button-warning" disabled="disabled">警告</button>
        <button class="gx-button gx-button-error" disabled="disabled">错误</button>
    </aside>
    <aside>
        <p>按下状态</p>
        <button class="gx-button">正常</button>
        <button class="gx-button gx-button-actived">默认</button>
        <button class="gx-button gx-button-transparent gx-button-actived">透明</button>
        <button class="gx-button gx-button-info gx-button-actived">信息</button>
        <button class="gx-button gx-button-success gx-button-actived">成功</button>
        <button class="gx-button gx-button-warning gx-button-actived">警告</button>
        <button class="gx-button gx-button-error gx-button-actived">错误</button>
    </aside>
    <aside>
        <p>更多</p>
        <button class="gx-button gx-button-large gx-justify">一休按钮</button>
        <button class="gx-button gx-button-small gx-button-bordered">一休按钮</button>
        <button class="gx-button gx-radius gx-justify"><i class="gx-icon">★</i>一休按钮</button>
    </aside>
</div>

<div class="clearfix">
    <aside>
        <h2>输入框</h2>
        <div class="gx-textitem">
            <label class="gx-texttitle">
                请输入邮件：
            </label>
            <input type="text" class="gx-textbox" placeholder="请输入内容...">
            <label class="gx-texttitle">
                请输入用户名：
            </label>
            <input type="text" class="gx-textbox" placeholder="请输入内容...">
            <label class="gx-texttitle">
                请输入密码：
            </label>
            <input type="text" class="gx-textbox" placeholder="请输入内容...">
        </div>
        <div class="gx-textitem">
            <label class="gx-texttitle">
                提示输入：
            </label>
            <input type="text" class="gx-textbox gx-textbox-info" placeholder="信息">
            <input type="text" class="gx-textbox gx-textbox-success" placeholder="成功">
            <input type="text" class="gx-textbox gx-textbox-warning" placeholder="警告">
            <input type="text" class="gx-textbox gx-textbox-error" placeholder="错误">
        </div>
        <div class="gx-textitem">
            <label class="gx-texttitle">
                状态：
            </label>
            <input type="text" class="gx-textbox" readonly="readonly" value="只读">
            <input type="text" class="gx-textbox" disabled="disabled" value="禁用">
        </div>
        <div class="gx-textitem">
            <label class="gx-texttitle">
                文本域：
            </label>
            <textarea class="gx-textbox" placeholder="请输入内容..."></textarea>
        </div>
    </aside>
    <aside>
        <form class="gx-searchtextbox" action="###">
            <label class="gx-texttitle">
                搜索框：
            </label>
            <input type="text" class="gx-textbox" onfocus="this.select();">
            <button type="submit" title="搜索" class="gx-searchtextbox-button"><i class="gx-icon">☌</i></button>
        </form>
    </aside>
    <aside>
        <h2>选择框</h2>
        <select class="gx-textbox">
            <option>A: 一休理财</option>
            <option>B: 一休理财</option>
            <option>C: 一休理财</option>
            <option>D: 一休理财</option>
        </select>
    </aside>
</div>

<div class="clearfix">
    <h2>表单</h2>
    <aside>
        <p>原生复选框</p>
        <label><input type="checkbox">默认</label>
        <label><input type="checkbox" disabled="disabled" checked="checked">禁用</label>
    </aside>
    <aside>
        <p>自定义复选框</p>
        <label>
            <input type="checkbox" class="gx-checkbox" name="checkbox1">
            <i class="gx-icon">☒</i>
            <i class="gx-icon">☑</i>
            默认
        </label>
        <label>
            <input type="checkbox" class="gx-checkbox" name="checkbox2">
            <i class="gx-icon">☒</i>
            <i class="gx-icon">☑</i>
            默认
        </label>
        <label>
            <input type="checkbox" class="gx-checkbox" disabled="disabled" name="checkbox1">
            <i class="gx-icon">☒</i>
            <i class="gx-icon">☑</i>
            禁用
        </label>
    </aside>

    <aside>
        <p>原生单选框</p>
        <label><input type="radio" name="radio1">默认</label>
        <label><input type="radio" name="radio1">默认</label>
        <label><input type="radio" name="radio1" disabled="disabled" checked="checked">禁用</label>
    </aside>
    <aside>
        <p>自定义单选框</p>
        <label>
            <input type="radio" class="gx-checkbox" name="radio1">
            <i class="gx-icon">○</i>
            <i class="gx-icon">⊙</i>
            默认
        </label>
        <label>
            <input type="radio" class="gx-checkbox" disabled="disabled" name="radio1">
            <i class="gx-icon">○</i>
            <i class="gx-icon">⊙</i>
            禁用
        </label>
    </aside>

</div>

<div class="clearfix">
    <h2>选项卡</h2>
    <ul class="gx-tab" data-role="tab">
        <li class="gx-tab-actived">
            <a href="###">选项卡1</a>
        </li>
        <li>
            <a href="###">选项卡2</a>
        </li>
        <li>
            <a href="###">选项卡3</a>
        </li>
    </ul>
    <section class="gx-tab-body" style="position: relative;">
        <div style="">
            AAAAA
        </div>
        <div style="display:none;">
            BBBBB
        </div>
        <div style="display:none;">
            CCCCC
        </div>
    </section>
</div>

<div class="cleanfix">
    <h2>表格</h2>
    <table>
        <tbody>
            <tr>
                <th>序号</th>
                <th>项目名称</th>
                <th>项目地址</th>
            </tr>
            <tr>
                <th>1</th>
                <td>理财理财</td>
                <td>理财理财</td>
            </tr>
            <tr>
                <th>2</th>
                <td>一休理财理财</td>
                <td>一休理财理财</td>
            </tr>
        </tbody>
    </table>
    <table class="gx-table gx-table-striped">
        <thead>
            <tr>
                <th>Table</th>
                <th>Th 1</th>
                <th>Th 2</th>
                <th>Th 3</th>
            </tr>
        </thead>
        <tbody>
            <tr class="gx-table-actived">
                <td>1</td>
                <td class="gx-table-warning">Td 1</td>
                <td>Td 2</td>
                <td class="gx-table-error gx-center">Td 3</td>
            </tr>
            <tr class="gx-table-error">
                <td>2</td>
                <td class="gx-table-info">Td 1</td>
                <td>Td 2</td>
                <td class="gx-table-error gx-center">Td 3</td>
            </tr>
            <tr>
                <td>2</td>
                <td class="gx-table-info">Td 1</td>
                <td>Td 2</td>
                <td class="gx-center">Td 3</td>
            </tr>
        </tbody>
    </table>
</div>

<div class="clearfix">
    <h2>分页</h2>
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
</body>
</html>
