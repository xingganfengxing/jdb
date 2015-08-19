#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/7 17:43
import user, news, cmt
import alumnus, activity, friend
import circle, pic, message


def initdata():
    """初始化数据"""
    user.inituser()
    news.initNews()
    pic.resetPicPath("t_news")
    cmt.initNewsCmt()
    alumnus.initAlumnus()
    activity.initActivity()
    pic.resetPicPath("t_activity")
    cmt.initAtvCmt()
    friend.initFriends()
    circle.initCircle()
    cmt.initCirCmt()
    message.initmessage()


if __name__ == '__main__':
    initdata()