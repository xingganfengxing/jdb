var basePath = getBasePath();
var newsAtvShowSize = 6;//焦点图显示条数
var circleSize = 2;//朋友圈显示条数

/**
 * 绑定活动和资讯
 * @param i
 */
function getNewsAtvData(i) {
    var obj = null;
    if ($("#type" + i).val() == "活动") {
        obj = ajax("/pc/admin/activity/viewactivity", {id: $("#refId" + i).val()})
    }
    if ($("#type" + i).val() == "资讯") {
        obj = ajax("/pc/admin/news/viewnews", {id: $("#refId" + i).val()})
    }

    if (obj != null && obj.code == "0") {
        $("#focusImg" + i).attr("src", basePath + "/mobile/image/showimage?picpath=" + obj.data.picPath);
        $("#focusImg" + i).attr("title", obj.data.title);
        $("#focusPicpath" + i).val(obj.data.picPath);
        $("#focusTitle" + i).val(obj.data.title);
    } else {
        alert("当前id无数据");
    }
}

/**
 * 绑定朋友圈
 * @param i
 */
function getCircleData(i) {
    var obj = ajax("/pc/admin/circle/view", {id: $("#circleRefId" + i).val()})
    if (obj != null && obj.code == "0") {
        $("#circleImg" + i).attr("src", basePath + "/mobile/image/showimage?picpath=" + obj.data.picPath);
        $("#circleImg" + i).attr("title", obj.data.title);
        $("#circleTitle" + i).html(obj.data.title);
        $("#circleInfo" + i).html(obj.data.introduce);
        $("#circleTitleIpt" + i).val(obj.data.title);
        $("#circlePicpath" + i).val(obj.data.picPath);
        $("#circleInfoIpt" + i).val(obj.data.introduce);
        $("#circleRefId" + i).val(obj.data.id);
    } else {
        alert("当前id无数据");
    }
}

/**
 * 清空
 * @param i
 */
function clearData(i) {
    $("#focusImg" + i).attr("src", "");
    $("#focusImg" + i).attr("title", "");
    $("#refId" + i).val("")
    $("#focusPicpath" + i).val("");
    $("#focusTitle" + i).val("");
}

/**
 * 自定义图片
 */
function chgImg(i) {

    //每次只提交当前选择的自定义图片
    for (var a = 0; a < newsAtvShowSize; a++) {
        if (a != i) {
            $("#pic" + a).val("");
        }
    }
    $("#newsAndAtvsForm").ajaxSubmit({
        url: basePath + "/pc/admin/focus/saveone?id=" + $("#focusId" + i).val(),
        type: "post",
        success: function (data) {
            buildNewsAndAtvs();
        }
    });
}

/**
 * 首页焦点图设置
 * @param shownum
 */
function buildNewsAndAtvs() {
    $("#newsAndAtvs").empty();
    var obj = ajax("/pc/admin/focus/newsactivity", {curPage: 1, pageSize: newsAtvShowSize});
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
            "<input type=\"hidden\" id=\"focusId" + i + "\" name=\"focuses[" + i + "].id\" value=\"" + obj.data.resultList[i].id + "\"/>" +
            "<input type=\"hidden\" id=\"focusPicpath" + i + "\" name=\"focuses[" + i + "].picpath\" value=\"" + obj.data.resultList[i].picpath + "\"/>" +
            "<input type=\"hidden\" id=\"focusTitle" + i + "\" name=\"focuses[" + i + "].title\" value=\"" + obj.data.resultList[i].title + "\"/>" +
            "<select id=\"type" + i + "\" name=\"focuses[" + i + "].type\" >" +
            "<option " + atvSelected + ">活动</option>" +
            "<option " + newSelected + ">资讯</option>" +
            "</select>" +
            "</div>" +
            "<button type=\"button\" onclick=\"clearData('" + i + "')\" class=\"gx-button gx-button-error gx-button-small fr\">清空</button>" +
            "</div>" +
            "<div class=\"homeAction clearfix\">" +
            "<label>绑定ID：</label>" +
            "<input id=\"refId" + i + "\" name=\"focuses[" + i + "].refId\" type=\"text\" placeholder=\"请填写编号\" value=\"" + obj.data.resultList[i].refId + "\" />" +
            "</div>" +
            "<div class=\"home-pic clearfix\">" +
            "<div class=\"gx-file-input fl\">" +
            "<a href=\"javascript:getNewsAtvData(" + i + ");\" class=\"gx-button gx-button-success gx-button-small gx-file-input-btn\">获取数据</a>" +
            "</div>" +
            "<div class=\"gx-file-input fr\">" +
            "<input id=\"pic" + i + "\" name=\"pic" + i + "\" onchange=\"chgImg(" + i + ")\" type=\"file\">" +
            "<a href=\"javascript:void(0);\" class=\"gx-button gx-button-success gx-button-small gx-file-input-btn\">自定义图片</a>" +
            "</div>" +
            "</div>" +
            "</dd>" +
            "</dl>"
        );
    }
}

/**
 * 朋友圈设置
 */
function buildCircle() {
    $("#circleDiv").empty();

    var obj = ajax("/pc/admin/focus/circle", {curPage: 1, pageSize: circleSize});
    for (var i = 0; i < obj.data.resultList.length; i++) {
        $("#circleDiv").append(
            "<div class=\"homesT\">" +
            "<div class=\"homesLeft fl\">" +
            "<div class=\"homeSettingH\">" + (i + 1) + "号圈子推荐位</div>" +
            "<dl>" +
            "<dt><img id=\"circleImg" + i + "\" src=\"" + basePath + "/mobile/image/showimage?picpath=" + obj.data.resultList[i].picpath + "\" /></dt>" +
            "<dd>" +
            "<p><span id=\"circleTitle" + i + "\">" + obj.data.resultList[i].title + "</span></p>" +
            "<a><span id=\"circleInfo" + i + "\">" + obj.data.resultList[i].info + "</span></a>" +
            "</dd>" +
            "</dl>" +
            "</div>" +
            "<div class=\"homesRight fl\">" +
            "<div class=\"homeRightBtn fl\">" +
            "<label>绑定ID：</label>" +
            "<input type=\"text\" id=\"circleRefId" + i + "\" name=\"focuses[" + i + "].refId\" value=\"" + obj.data.resultList[i].refId + "\" placeholder=\"请填写圈子编号\"/>" +
            "<input type=\"hidden\" id=\"circleTitleIpt" + i + "\" name=\"focuses[" + i + "].title\" value=\"" + obj.data.resultList[i].title + "\"/>" +
            "<input type=\"hidden\" id=\"circleId" + i + "\" name=\"focuses[" + i + "].id\" value=\"" + obj.data.resultList[i].id + "\"/>" +
            "<input type=\"hidden\" id=\"circlePicpath" + i + "\" name=\"focuses[" + i + "].picpath\" value=\"" + obj.data.resultList[i].picpath + "\"/>" +
            "<input type=\"hidden\" id=\"circleInfoIpt" + i + "\" name=\"focuses[" + i + "].info\" value=\"" + obj.data.resultList[i].info + "\"/>" +
            "</div>" +
            "<button type=\"button\" onclick=\"getCircleData('" + i + "')\" class=\"gx-button gx-button-small gx-button-bordered\">绑定</button>" +
            "</div>" +
            "</div>"
        );
    }

}

buildNewsAndAtvs();
buildCircle();

$('#rebackNewsAtvBtn').on('click', function (e) {
    buildNewsAndAtvs();
});

$('#rebackCircleBtn').on('click', function (e) {
    buildCircle();
});

$('#publishNewsAtvBtn').on('click', function (e) {
    var params = jQuery("#newsAndAtvsForm").serialize();
    params = decodeURIComponent(params, true);
    var obj = ajax("/pc/admin/focus/datasave", params);
    alert(obj.error);
    if (obj.code == "0") {
        buildNewsAndAtvs();
    }
});

$('#publishCircleBtn').on('click', function (e) {
    var params = jQuery("#circleForm").serialize();
    params = decodeURIComponent(params, true);
    var obj = ajax("/pc/admin/focus/datasave", params);
    alert(obj.error);
    if (obj.code == "0") {
        buildCircle();
    }
});