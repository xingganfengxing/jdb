package com.ezb.jdb.common;

import com.alibaba.fastjson.JSONObject;

/**
 * 操作响应状态
 * author : liufeng
 * create time:2015/8/12 15:05
 */
public class ResponseState {

    public static String SUCCESS = getResState("0", "");
    public static String INVALID_PHONE = getResState("100", "手机号码不存在");
    public static String LOGIN_ERR = ResponseState.getResState("101", "用户名或密码错误!");
    public static String LIKE_OPT_ERR = ResponseState.getResState("102", "点赞操作失败!");
    public static String REGED_PHONE = ResponseState.getResState("103", "手机号已注册!");
    public static String FAIL = ResponseState.getResState("104", "操作失败!");
    public static String PAS_RESET_ERR = ResponseState.getResState("105", "密码重置失败!");
    public static String LOCATION_FMT_ERR = ResponseState.getResState("106", "经纬度格式不正确,正确格式为xxx.xx,xxx.xx!");
    public static String EMPTY_STR = ResponseState.getResState("107", "字符串为空");
    public static String PIC_SAVE_ERR = "pic_save_err";
    public static String PIC_SAVE_ERR_JSON = ResponseState.getResState("108", "图片保存失败");
    public static String INVALID_ID = ResponseState.getResState("109", "ID不存在");
    public static String CONFIRE_FRIEND_ERR = ResponseState.getResState("110", "好友关系确认失败");
    public static String FRIEND_ADDED = ResponseState.getResState("111","phone1,phone2已添加好友");
    public static String FRIEND_APPLY_FRIST = ResponseState.getResState("112","phone1,phone2还未申请为好友");
    public static String INFORM_NULL = ResponseState.getResState("113","举报信息填写不完整");
    public static String INVITATE_ERR =  ResponseState.getResState("114","邀请码错误");
    public static String VERIFYCODE_ERR =  ResponseState.getResState("115","验证码错误");
    public static String MAIL_ERR = ResponseState.getResState("116","邮件发送失败");
    public static String SMS_CONN_ERR = ResponseState.getResState("117","SMS 连接失败");
    public static String SMS_IO_ERR = ResponseState.getResState("118","SMS IO异常");
    public static String UNLOGIN = ResponseState.getResState("119", "请先登录!");
    public static String USERNAME_EXISIT = ResponseState.getResState("120", "用户名已存在!");
    public static String FOCUSTYPE_ERR = ResponseState.getResState("121", "焦点类型错误!");


    /**
     * 获取返回状态
     *
     * @param code
     * @param errorInfo
     * @return
     */
    public static String getResState(String code, String errorInfo) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code", code);
        jsonObject.put("error", errorInfo);
        return JSONObject.toJSONString(jsonObject);
    }
}
