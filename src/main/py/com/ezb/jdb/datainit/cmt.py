#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 17:00
import initconn, time, random


def initCmt(table):
    conn = initconn.getConn()
    cur = conn.cursor()
    circleIds = [0] * 10  # 定义长度为10的数组

    # 先插入10条一级评论
    for i in range(10):
        circleIds[i] = random.randint(0, 99)
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 99),
            random.randint(0, 99),
            random.randint(0, 99)
        ]
        if table == "newscmt":
            value[5] = circleIds[i]
        if table == "circmt" or table == "atvcmt":
            value[4] = circleIds[i]
        cur.execute('insert into ' + table + ' values(%s,%s,%s,%s,%s,%s,null)', value)
    conn.commit()

    # 插入90条 子评论
    for i in range(11, 100, 1):
        parentCmtId = random.randint(0, 9)
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 99),
            random.randint(0, 99),
            random.randint(0, 99),
            parentCmtId
        ]
        if table == "newscmt":
            value[5] = circleIds[parentCmtId]
        if table == "circmt" or table == "atvcmt":
            value[4] = circleIds[parentCmtId]
        cur.execute('insert into ' + table + ' values(%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()


def initNewsCmt():
    """资讯评论表"""
    initCmt("newscmt")


def initAtvCmt():
    """活动评论表"""
    initCmt("atvcmt")


def initCirCmt():
    """圈子评论"""
    initCmt("circmt")
