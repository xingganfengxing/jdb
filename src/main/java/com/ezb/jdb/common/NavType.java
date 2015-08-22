package com.ezb.jdb.common;

/**
 * 焦点类型
 * author : liufeng
 * create time:2015/8/21 17:37
 */
public enum NavType {

    CIRCLE("圈子"), NEWS("资讯"), ACTIVITY("活动");

    private String name;

    NavType(String name) {
        this.name = name;
    }

    public String toString() {
        return name;
    }
}
