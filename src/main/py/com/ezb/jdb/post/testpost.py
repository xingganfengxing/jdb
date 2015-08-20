#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/12 16:51
import urllib
import urllib2

from poster.encode import multipart_encode
from poster.streaminghttp import register_openers

if __name__ == '__main__':
    # 图片上传
    # register_openers()
    # params = {"phone": "11111112", "pic": open("aa.png", "rb")}
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8080/jdb/news/createnews", datagen, headers)
    # print urllib2.urlopen(request).read()

    # # 信息完善
    # url = "http://172.16.16.135:8080/jdb/user/uploadheadpic"
    # params = {"realname": "sdsd", "sex": 1, "phone": "1111111"}
    # post_data = urllib.urlencode(params)
    # req = urllib2.urlopen(url, post_data)
    # content = req.read()
    # print content

    # 头像上传
    # register_openers()
    # params = {"phone": "11111112", "headpic": open("aa.png", "rb")}
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8080/jdb/user/uploadheadpic", datagen, headers)
    # print urllib2.urlopen(request).read()

    # 发布资讯
    # register_openers()
    # params = {"phone": "11111112", "title": "资讯20000", "pic": open("aa.png", "rb")}
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8080/jdb/news/viewnews", datagen, headers)
    # print urllib2.urlopen(request).read()

    # 创建活动
    # register_openers()
    # params = {"phone": "11111112", "title": "资讯20000"}
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8080/jdb/activity/createactivity", datagen, headers)
    # print urllib2.urlopen(request).read()

    # 查看新闻
    register_openers()
    params = { "id": "1"}
    datagen, headers = multipart_encode(params)
    request = urllib2.Request("http://172.16.16.135:8080/jdb/news/viewnews", datagen, headers)
    print urllib2.urlopen(request).read()
