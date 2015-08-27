package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.model.Inform;
import com.ezb.jdb.service.IInformService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 举报管理
 * author : liufeng
 * create time:2015/8/22 9:47
 */
@Controller
public class MInformController {

    @Resource
    private IInformService informServiceImpl;

    /**
     * @param pageResult 分页信息
     * @param realname   检举人
     * @param startTime  开始时间
     * @param endTime    结束时间
     * @param reason     举报原因
     * @param state      处理状态
     * @return
     */
    @RequestMapping(value = "pc/admin/inform/query")
    public
    @ResponseBody
    String query(
            PageResult<Inform> pageResult,
            String realname,
            String startTime,
            String endTime,
            String reason,
            String type,
            String state) {

        pageResult = informServiceImpl.query(
                pageResult,realname,startTime,
                endTime,reason,type,state);

        return ResponseData.getResData(pageResult);
    }

    @RequestMapping(value = "pc/admin/inform/del")
    public
    @ResponseBody
    String del(String ids){
        return informServiceImpl.del(ids);
    }

    /**
     * 下线举报对应的圈子、活动或资讯
     * @param id
     * @return
     */
    @RequestMapping(value = "pc/admin/inform/offline")
    public
    @ResponseBody
    String offline(String id){
        return informServiceImpl.offline(id);
    }
}
