var basePath = getBasePath();

function getData(id) {
    var obj = null;
    if ($("#type" + id).val() == "活动") {
        obj = ajax("/pc/admin/activity/viewactivity", {id: $("#focusId" + id).val()})
    }
    if ($("#type" + id).val() == "资讯") {
        obj = ajax("/pc/admin/news/viewnews", {id: $("#focusId" + id).val()})
    }

    if (obj != null && obj.code == "0") {
        $("#focusImg" + id).attr("src", basePath + "/mobile/image/showimage?picpath=" + obj.data.picPath);
        $("#focusImg" + id).attr("title", obj.data.title);
        $("#viewurl" + id).val("" + obj.data.id);
        $("#refId" + id).val("" + obj.data.refId);
        //TODO 继续完善数据绑定
    } else {
        alert("当前id无数据");
    }
}

/**
 * 首页焦点图设置
 * @param shownum
 */
function buildNewsAndAtvs() {
    $("#newsAndAtvs").empty();
    var obj = ajax("/pc/admin/focus/newsactivity", {curPage: 1, pageSize: 6});
    for (var i = 0; i < obj.data.resultList.length; i++) {
        var atvSelected = "";
        if (obj.data.resultList[i].type == "活动") {
            atvSelected = "selected=\"selected\"";
        }
        var newSelected = "";
        if (obj.data.resultList[i].type == "资讯") {
            newSelected = "selected=\"selected\"";
        }

        $("#newsAndAtvs").append(
            "<dl class=\"fl\">" +
            "<dt>" + (i + 1) + "位 焦点图</dt>" +
            "<dt><img id=\"focusImg" + i + "\" title=\"" + obj.data.resultList[i].title + "\" width=\"100%\" height=\"220px\" src=\"" + basePath + "/mobile/image/showimage?picpath=" + obj.data.resultList[i].picpath + "\"/></dt>" +
            "<dd>" +
            "<div class=\"homeSelect\">" +
            "<div class=\"fl\">" +
            "<label>类&nbsp&nbsp&nbsp&nbsp型：</label>" +
            "<select id=\"type" + i + "\" >" +
            "<option " + atvSelected + ">活动</option>" +
            "<option " + newSelected + ">资讯</option>" +
            "</select>" +
            "</div>" +
            "<button class=\"gx-button gx-button-error gx-button-small fr\">清空</button>" +
            "</div>" +
            "<div class=\"homeAction clearfix\">" +
            "<label>绑定ID：</label>" +
            "<input id=\"focusId" + i + "\" type=\"text\" placeholder=\"请填写活动编号\" value=\"" + obj.data.resultList[i].id + "\" />" +
            "</div>" +
            "<div class=\"home-pic clearfix\">" +
            "<div class=\"gx-file-input fl\">" +
            "<a href=\"javascript:getData(" + i + ");\" class=\"gx-button gx-button-success gx-button-small gx-file-input-btn\">获取数据</a>" +
            "</div>" +
            "<div class=\"gx-file-input fr\">" +
            "<input type=\"file\">" +
            "<a href=\"javascript:void(0);\" class=\"gx-button gx-button-success gx-button-small gx-file-input-btn\">自定义图片</a>" +
            "</div>" +
            "</div>" +
            "</dd>" +
            "</dl>"
        );
    }
}

buildNewsAndAtvs();