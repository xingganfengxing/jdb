var basePath = getBasePath();
var pageSize = 5;

function viewBigPic(id) {
    var obj = ajax("/pc/admin/circle/view", {id: id});
    $(".circlepic").popUpBox({
        fn: function () {
            $("#circleImg").attr("src", basePath + "/mobile/image/showimage?picpath=" + obj.data.picPath);
        },
        fnN: function () {
        },
        fnY: function () {
        }
    });
}

//数据加载
function binddata(curpage, pageSize) {

    var params = {
        curPage: curpage,
        pageSize: pageSize,
        title: $("#qtitle").val(),
        realName: $("#qrealname").val(),
        startTime: $("#qstartTime").val(),
        endTime: $("#qendTime").val()
    };

    if ($("#stateslt").val() != "状态") {
        params.state = $("#stateslt").val();
    }

    var obj = ajax("/pc/admin/circle/query", params);
    $("#pageCount").val(obj.data.pageCount);
    $("#datatable tbody tr").eq(0).nextAll().remove();
    for (var i = 0; i < obj.data.resultList.length; i++) {
        var stateStr = "正常";
        var handleBtn = "<b class=\"gx-button gx-button-info gx-button-small\">已下线</b>";
        if (0 == obj.data.resultList[i].state) {
            stateStr = "下线";
            handleBtn = "<b onclick=\"offline('" + obj.data.resultList[i].id + "')\" class=\"gx-button gx-button-error gx-button-small\">下&nbsp;&nbsp;线</b>";
        }
        $("#datatable").append(
            "<tr class=\"gx-table-actived\">" +
            "<td>" + obj.data.resultList[i].id + "</td>" +
            "<td><img class=\"circle-logo\" width=\"300px\" height=\"300px\" src=\"" + basePath + "/mobile/image/showimage?picpath=" + obj.data.resultList[i].picPath + "\" alt=\"\"/></td>" +
            "<td><a class=\"links\" href=\"javascript:void(0)\" onclick=\"viewBigPic(" + obj.data.resultList[i].id + ")\">点击查看</a></td>" +
            "<td>" + obj.data.resultList[i].title + "</td>" +
            "<td>" + obj.data.resultList[i].introduce + "</td>" +
            "<td class=\"gx-table-info\">" + stateStr + "</td>" +
            "<td>" + obj.data.resultList[i].createTime + "</td>" +
            "<td>" + obj.data.resultList[i].createUser.realName + "</td>" +
            "<td>" + obj.data.resultList[i].members.length + "</td>" +
            "<td>" +
            "<a class=\"gx-button gx-button-info gx-button-small\" href=\"###\">查看信息</a>" +
            "<a class=\"gx-button gx-button-warning gx-button-small\" href=\"circle_edit.jsp\">编辑</a>" +
            "<a class=\"gx-button gx-button-error gx-button-small\" href=\"###\">下线</a>" +
            "</td>" +
            "</tr>"
        );
    }
}

function loadPage(curPage) {
    binddata(curPage, pageSize);
    bindPage(5, curPage, $("#pageCount").val(), pageSize);
}

loadPage(1);

$('#query').on('click', function (e) {
    e.preventDefault();
    loadPage(1);
});

$('#stateslt').on('change', function (e) {
    e.preventDefault();
    loadPage();
});

