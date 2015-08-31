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
    url = "http://172.16.16.135:8080/jdb/mobile/inform/createinform"
    params = {"phone": "1111111", "type": "资讯", "assoId": "4", "assoName": "test", "reason": "政治", "otherInfo": "其他信息"}
    post_data = urllib.urlencode(params)
    req = urllib2.urlopen(url, post_data)
    content = req.read()
    print content
