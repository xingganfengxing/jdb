package com.ezb.jdb.controller.mobile;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Message;
import com.ezb.jdb.service.IMessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 消息
 * author : liufeng
 * create time:2015/8/18 10:39
 */
@Controller
public class MessageController {

    @Resource
    private IMessageService messageServiceImpl;

    /**
     * 发送消息
     *
     * @param message 消息内容
     * @return
     */
    @RequestMapping(value = "mobile/message/sendmessage")
    public
    @ResponseBody
    String sendMessage(Message message) {
        return messageServiceImpl.sendMessage(message);
    }

    /**
     * 未查看的消息条数
     *
     * @param phone
     * @return
     */
    @RequestMapping(value = "mobile/message/unreadcount")
    public
    @ResponseBody
    String unReadCount(String phone) {
        return messageServiceImpl.unReadCount(phone);
    }

    /**
     * 未读消息查收
     * @param pageResult
     * @param phone
     * @return
     */
    @RequestMapping(value = "mobile/message/unreadmessage")
    public
    @ResponseBody
    String unReadMessage(PageResult<Message> pageResult, String phone) {
        return messageServiceImpl.unReadMessage(pageResult, phone);
    }

    /**
     * 消息查收
     * @param pageResult
     * @param phone
     * @return
     */
    @RequestMapping(value = "mobile/message/allmessage")
    public
    @ResponseBody
    String allMessage(PageResult<Message> pageResult, String phone) {
        return messageServiceImpl.allMessage(pageResult, phone);
    }

    /**
     * 查询两个用户之间的消息通讯
     *
     * @param senderPhone
     * @param receiverPhone
     * @return
     */
    @RequestMapping(value = "mobile/message/query2usermessage")
    public
    @ResponseBody
    String query2UserMessage(PageResult<Message> pageResult, String senderPhone, String receiverPhone) {
        return messageServiceImpl.query2UserMessage(pageResult, senderPhone, receiverPhone);
    }

    /**
     * 消息删除
     *
     * @param id 消息id
     * @return
     */
    @RequestMapping(value = "mobile/message/delmessage")
    public
    @ResponseBody
    String delMessage(String id) {
        return messageServiceImpl.delMessage(id);
    }

}
