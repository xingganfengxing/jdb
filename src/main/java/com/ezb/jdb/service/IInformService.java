package com.ezb.jdb.service;

import com.ezb.jdb.model.Inform;

/**
 * 举报
 * author : liufeng
 * create time:2015/8/13 14:28
 */
public interface IInformService {

    String addInform(String phone,Inform inform);
}
