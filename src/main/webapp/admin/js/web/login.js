var basePath = getBasePath();
$(function () {
    $("#verifycodeImg").click(function () {
        $("#verifycodeImg").attr("src", chgUrl(basePath + "/login/verifycode"));
    });

    //表单校验
    var validate = $("#admin-login").validate({
        debug: true,
        focusInvalid: false,
        onkeyup: false,
        submitHandler: function (form) {
            var responseObj = $.ajax({
                url: basePath + "/pc/login/dologin",
                data: {username: $("#username").val(), password: $("#password").val()},
                async: false
            });
            var obj = $.parseJSON(responseObj.responseText);
            if (obj.code == "0") {
                window.location = basePath + "/admin/index.jsp";
            } else {
                alert(obj.error);
            }
        },

        rules: {
            username: {
                required: true
            },
            password: {
                required: true,
                rangelength: [2, 20]
            },
            verifycode: {
                required: true,
                rangelength: [4, 4],
                remote: {
                    url: basePath + "/login/checkverifycode",
                    type: "get",
                    dataType: "json"
                }
            }
        },
        messages: {
            username: {
                required: "必填"
            },
            password: {
                required: "必填",
                rangelength: $.format("密码长度为2~20位")
            },
            verifycode: {
                required: "不能为空",
                remote: $.format("验证码错误。"),
                rangelength: $.format("验证码长度必须为4。"),
            }
        }
    });
});

function chgUrl(url) {
    var timestamp = (new Date()).valueOf();
    urlurl = url.substring(0, 17);
    if ((url.indexOf("?") >= 0)) {
        urlurl = url + "&t=" + timestamp;
    } else {
        urlurl = url + "?t=" + timestamp;
    }
    return urlurl;
}
