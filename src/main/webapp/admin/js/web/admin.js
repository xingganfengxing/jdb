var basePath = getBasePath();
var pageSize = 10;
// 创建管理员
function createAdmin() {
    $(".create-admin").popUpBox({
        fn: function () {
        },
        fnN: function () {
        },
        fnY: function () {
        }
    });
}
$('#cAdmin').on('click', function (e) {
    e.preventDefault();
    createAdmin();
})

// 编辑管理员
function editAdmin() {
    $(".edit-admin").popUpBox({
        fn: function () {
        },
        fnN: function () {
        },
        fnY: function () {
        }
    });
}

$('.edit-admin-btn').on('click', function (e) {
    e.preventDefault();
    editAdmin();
})

$('#query').on('click', function (e) {
    e.preventDefault();
    binddata($("#curPage").val(), pageSize);
    bindPage();
})

$('#reset').on('click', function (e) {
    e.preventDefault();
    $("#qusername").val("");
    $("#qrealName").val("");
    $("#qstartTime").val("");
    $("#qendTime").val()
})

//数据加载
function binddata(curpage, pageSize) {
    var obj = ajax(
        "/pc/admin/admin/query",
        {
            curPage: curpage,
            pageSize: pageSize,
            username: $("#qusername").val(),
            realName: $("#qrealName").val(),
            startTime: $("#qstartTime").val(),
            endTime: $("#qendTime").val()
        }
    );

    $("#pageCount").val(obj.data.pageCount);

    $("#datatable").empty();
    $("#datatable").append(
        "<tr class=\"tab-h\">" +
        "<td class=\"tab-first\">ID</td>" +
        "<td class=\"tab-two\">账号</td>" +
        "<td class=\"tab-three\">姓名</td>" +
        "<td class=\"tab-four\">手机号</td>" +
        "<td class=\"tab-five\">注册时间</td>" +
        "<td class=\"tab-six\">操作</td>" +
        "</tr>"
    );

    for (var i = 0; i < obj.data.resultList.length; i++) {
        $("#datatable").append(
            "<tr>" +
            "<td class=\"tab-first\">" + obj.data.resultList[i].id + "</td>" +
            "<td class=\"tab-two\">" + obj.data.resultList[i].username + "</td>" +
            "<td class=\"tab-three\">" + obj.data.resultList[i].realName + "</td>" +
            "<td class=\"tab-four\">" + obj.data.resultList[i].phone + "</td>" +
            "<td class=\"tab-five\">" + obj.data.resultList[i].createTime + "</td>" +
            "<td class=\"tab-six\">" +
            "<b class=\"gx-button gx-button-info gx-button-actived gx-button-small edit-admin-btn\">编辑</b>" +
            "<span class=\"gx-button gx-button-error gx-button-actived gx-button-small\">删除</span>" +
            "</td>" +
            "</tr>"
        );
    }
}

/**
 * 初始化分页
 * @param innerPageSize 展示页面数
 * @param curPage 当前页面
 * @param pageCount 总页数
 */
function bindPage(innerPageSize, curPage, pageCount) {
    $("#pageDiv").empty();

    //页面大小
    var innerPageCount = parseInt(pageCount / innerPageSize);
    if (pageCount % innerPageSize != 0) {
        innerPageCount += 1;
    }

    //当前页
    var innerCurPage = parseInt(curPage / innerPageSize) + 1;
    if (curPage % innerPageSize == 0) {
        innerCurPage -= 1;
    }

    var startPage = (innerCurPage-1) * innerPageSize + 1;
    if (startPage == 1) {
        $("#pageDiv").append("<a class=\"gx-pager-disabled\" href=\"###\"><i class=\"gx-icon\">«</i></a>");
    } else {
        $("#pageDiv").append("<a class=\"gx-icon\" href=\"javascript:bindCurPage("
            + (innerCurPage - 1) * innerPageSize + ")\"><i class=\"gx-icon\">«</i></a>");
    }

    for (var i = startPage; i < startPage + innerPageSize && i <= pageCount; i++) {
        if (i == curPage) {
            $("#pageDiv").append("<a class=\"gx-pager-actived\" href=\"javascript:bindCurPage(" + i + ")\">" + i + "</a>");
        } else {
            $("#pageDiv").append("<a href=\"javascript:bindCurPage(" + i + ")\">" + i + "</a>");
        }
    }

    if (innerCurPage == innerPageCount) {
        $("#pageDiv").append("<a class=\"gx-pager-disabled\" href=\"###\"><i class=\"gx-icon\">»</i></a>");
    } else {
        $("#pageDiv").append("<a href=\"javascript:bindCurPage("
            + (innerCurPage * innerPageSize + 1) + ")\"><i class=\"gx-icon\">»</i></a>");
    }
}

function bindCurPage(curPage) {
    $("#curPage").val(curPage);
    binddata(curPage, pageSize);
    bindPage(5, $("#curPage").val(), $("#pageCount").val());
}

binddata(1, pageSize);
bindPage(5, $("#curPage").val(), $("#pageCount").val());
