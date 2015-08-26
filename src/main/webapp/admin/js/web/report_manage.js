var basePath = getBasePath();

//数据加载
function binddata(curpage, pageSize) {
    var obj = ajax(
        "/pc/admin/inform/query",
        {
            curPage: curpage,
            pageSize: pageSize,
            realname: $("#qrealname").val(),
            startTime: $("#qstartTime").val(),
            endTime: $("#qendTime").val()
        }
    );

    $("#pageCount").val(obj.data.pageCount);

    $("#datatable").empty();
    $("#datatable").append(
        "<tr class=\"tab-h\">" +
        "<td>序号</td>" +
        "<td>" +
        "<select class=\"gx-textbox\">" +
        "<option>举报类型</option>" +
        "<option>色情</option>" +
        "<option>重伤</option>" +
        "</select>" +
        "</td>" +
        "<td>" +
        "<select class=\"gx-textbox\">" +
        "<option>分类</option>" +
        "<option>活动</option>" +
        "<option>圈子</option>" +
        "<option>资讯</option>" +
        "</select>" +
        "</td>" +
        "<td>检举人</td>" +
        "<td>检举时间</td>" +
        "<td>" +
        "<select class=\"gx-textbox\">" +
        "<option>状态</option>" +
        "<option>待处理</option>" +
        "<option>已处理</option>" +
        "</select>" +
        "</td>" +
        "<td>检举描述</td>" +
        "<td>操作</td>" +
        "</tr>"
    );

    for (var i = 0; i < obj.data.resultList.length; i++) {
        var stateStr = "已处理";
        var handleBtn = "<b class=\"gx-button gx-button-info gx-button-actived gx-button-small edit-admin-btn\">已处理</b>";
        if (0 == obj.data.resultList[i].state) {
            stateStr = "待处理";
            handleBtn = "<b class=\"gx-button gx-button-error gx-button-actived gx-button-small edit-admin-btn\">去处理</b>";
        }
        $("#datatable").append(
            "<tr>" +
            "<td>" + obj.data.resultList[i].id + "</td>" +
            "<td class=\"tab-first\">" + obj.data.resultList[i].reason + "</td>" +
            "<td class=\"tab-two\">" + obj.data.resultList[i].type + "</td>" +
            "<td class=\"tab-three\">" + obj.data.resultList[i].createUser.alumnus.realName + "</td>" +
            "<td class=\"tab-four\">" + obj.data.resultList[i].createTime + "</td>" +
            "<td class=\"tab-five\">" + stateStr + "</td>" +
            "<td class=\"tab-six\">" + obj.data.resultList[i].otherInfo + "</td>" +
            "<td class=\"tab-sever\">" +
            "<b class=\"gx-button gx-button-info gx-button-actived gx-button-small edit-admin-btn\">查看</b>" +
            handleBtn +
            "</td>" +
            "</tr>"
        );
    }
}

binddata(1, 10);
bindPage(5, $("#curPage").val(), $("#pageCount").val());

$('#query').on('click', function (e) {
    e.preventDefault();
    binddata(1, pageSize);
    bindPage(5, $("#curPage").val(), $("#pageCount").val());
})
