package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.FocusDao;
import com.ezb.jdb.model.Focus;
import com.ezb.jdb.service.IFocusService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 焦点图
 * author : liufeng
 * create time:2015/8/20 10:17
 */
@Service
public class FocusServiceImpl implements IFocusService {

    @Resource
    private FocusDao focusDao;

    public PageResult<Focus> getTopFocus(PageResult<Focus> pageResult) {
        return focusDao.getTopFocus(pageResult);
    }

    public PageResult<Focus> getCircleFocus(PageResult<Focus> pageResult) {
        return focusDao.getCircleFocus(pageResult);
    }
}
