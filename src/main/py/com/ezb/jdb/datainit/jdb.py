#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/7 17:43
import user, news, cmt, admin
import alumnus, activity, friend
import circle, pic, message, focus
import inform


def initdata():
    """初始化数据"""
    user.inituser()
    admin.initAdmin()
    news.initNews()
    pic.resetPicPath("t_news")
    cmt.initNewsCmt()
    alumnus.initAlumnus()
    activity.initActivity()
    pic.resetPicPath("t_activity")
    cmt.initAtvCmt()
    friend.initFriends()
    circle.initCircle()
    pic.resetPicPath("t_circle")
    cmt.initCirCmt()
    message.initmessage()
    focus.initfocus()
    pic.resetPicPath("t_focus")
    inform.initinform()

if __name__ == '__main__':
    initdata()
