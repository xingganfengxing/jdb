package com.ezb.jdb.service;

import com.ezb.jdb.model.NewsCmt;

import java.util.List;

/**
 * 资讯评论
 * author : liufeng
 * create time: 2015/8/7 14:47.
 */
public interface INewsCmtService {

    String addNewsCmt(String phone,NewsCmt newsCmt);

    String likeNewsCmt(String phone, String id);

    List<NewsCmt> qNewsCmtByNewsId(String newsId);
}
