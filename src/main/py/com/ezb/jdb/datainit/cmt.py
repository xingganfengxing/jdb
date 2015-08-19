#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 17:00
import initconn,time,random

def initCmt(table):
    conn = initconn.getConn()
    cur = conn.cursor()

    # 先插入10条一级评论
    for i in range(10):
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 99),
            random.randint(0, 99),
            random.randint(0, 99)
        ]
        cur.execute('insert into ' + table + ' values(%s,%s,%s,%s,%s,%s,null)', value)
    conn.commit()

    # 插入90条 子评论
    for i in range(11, 100, 1):
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 99),
            random.randint(0, 99),
            random.randint(0, 99),
            random.randint(0, 9)
        ]
        cur.execute('insert into ' + table + ' values(%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()

def initNewsCmt():
    """资讯评论表"""
    initCmt("t_newscmt")


def initAtvCmt():
    """活动评论表"""
    initCmt("t_atvcmt")

def initCirCmt():
    """圈子评论"""
    initCmt("t_circmt")