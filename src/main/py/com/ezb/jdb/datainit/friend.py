#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 17:01
import initconn, time, random


def initFriends():
    """好友信息表"""
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(100):
        value = [
            str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 1000),
            random.randint(0, 1),
            random.randint(0, 99),
            random.randint(0, 99)
        ]
        cur.execute('insert into friend values(%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()


def test():
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(20):
        value = [
            str(i+200),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 1000),
            random.randint(0, 1),
            96,
            str(i)
        ]
        cur.execute('insert into friend values(%s,%s,%s,%s,%s,%s,%s)', value)

    for i in range(20):
        value = [
            str(i+300),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            random.randint(0, 1000),
            random.randint(0, 1),
            str(20 + i),
            96
        ]
        cur.execute('insert into friend values(%s,%s,%s,%s,%s,%s,%s)', value)

    conn.commit()
    cur.close()
    conn.close()


if __name__ == '__main__':
    test()
