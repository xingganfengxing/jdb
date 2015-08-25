#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/17 17:06
import random, initconn


def resetPicPath(table):
    """重置图片路径"""
    picpath = [
        "uploadfiles/20150811/20150811111719207/pic1.jpg",
        "uploadfiles/20150811/20150811111719207/pic2.jpg",
        "uploadfiles/20150811/20150811111719207/pic3.jpg"
    ]
    conn = initconn.getConn()
    cur = conn.cursor()

    totalCount = 100
    if table == "t_focus":
        totalCount = 11

    for i in range(totalCount):
        value = [
            picpath[random.randint(0, 2)],
            i
        ]
        cur.execute('update ' + table + ' set picpath=%s where id=%s', value)
    conn.commit()
    cur.close()
    conn.close()


if __name__ == '__main__':
    resetPicPath("t_news")
    resetPicPath("t_activity")
    resetPicPath("t_focus")
