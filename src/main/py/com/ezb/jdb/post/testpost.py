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


    # 信息完善
    url = "http://172.16.16.135:8080/jdb/mobile/user/verifycode"
    params = {"phone": "username"}
    post_data = urllib.urlencode(params)
    req = urllib2.urlopen(url, post_data)
    content = req.read()
    print content

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
    # register_openers()
    # params = { "id": "1"}
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8000/jdb/mobile/news/viewnews", datagen, headers)
    # print urllib2.urlopen(request).read()

    # 焦点图保存
    # register_openers()
    # params = {
    #     "focuses[0].id": "2c9090074f52fe05014f5301c5230000",
    #     "focuses[1].id": "2c9090074f52fe05014f5301c5380001",
    #     "focuses[2].id": "2c9090074f52fe05014f5301c5390002",
    #     "focuses[3].id": "2c9090074f52fe05014f5301c53a0003",
    #     "focuses[4].id": "2c9090074f52fe05014f5301c53b0004",
    #     "focuses[5].id": "2c9090074f52fe05014f5301c53d0005",
    #     "focuses[6].id": "2c9090074f52fe05014f5301c5400006",
    #     "focuses[7].id": "2c9090074f52fe05014f5301c5420007",
    #
    #     "focuses[0].picpath": "picpath1",
    #     "focuses[1].picpath": "picpath2",
    #     "focuses[2].picpath": "picpath3",
    #     "focuses[3].picpath": "picpath4",
    #     "focuses[4].picpath": "picpath5",
    #     "focuses[5].picpath": "picpath6",
    #     "focuses[6].picpath": "picpath7",
    #     "focuses[7].picpath": "picpath8",
    #
    #     "focuses[0].position": "1",
    #     "focuses[1].position": "2",
    #     "focuses[2].position": "3",
    #     "focuses[3].position": "4",
    #     "focuses[4].position": "5",
    #     "focuses[5].position": "6",
    #     "focuses[6].position": "7",
    #     "focuses[7].position": "8",
    #
    #     "focuses[0].title": "title1",
    #     "focuses[1].title": "title2",
    #     "focuses[2].title": "title3",
    #     "focuses[3].title": "title4",
    #     "focuses[4].title": "title5",
    #     "focuses[5].title": "title6",
    #     "focuses[6].title": "title7",
    #     "focuses[7].title": "title8",
    #
    #     "focuses[0].type": "资讯",
    #     "focuses[1].type": "资讯",
    #     "focuses[2].type": "资讯",
    #     "focuses[3].type": "活动",
    #     "focuses[4].type": "活动",
    #     "focuses[5].type": "资讯",
    #     "focuses[6].type": "圈子",
    #     "focuses[7].type": "圈子",
    # }
    # datagen, headers = multipart_encode(params)
    # request = urllib2.Request("http://172.16.16.135:8000/jdb/pc/admin/focus/datasave", datagen, headers)
    # print urllib2.urlopen(request).read()
