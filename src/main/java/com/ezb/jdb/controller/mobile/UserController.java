package com.ezb.jdb.controller.mobile;

import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.Alumnus;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IInvitateCodeService;
import com.ezb.jdb.service.IUserService;
import com.ezb.jdb.service.IVerifyCodeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
@SuppressWarnings("restriction")
public class UserController {

    @Resource
    private IUserService userServiceImpl;

    @Resource
    private IVerifyCodeService verifyCodeServiceImpl;

    @Resource
    private IInvitateCodeService invitateCodeServiceImpl;

    @RequestMapping(value = "mobile/user/login")
    public
    @ResponseBody
    String login(HttpServletRequest request, User user) throws IOException {
        if (userServiceImpl.login(user)) {
            request.getSession().setAttribute("isLogin", true);
            return ResponseState.SUCCESS;
        }
        return ResponseState.LOGIN_ERR;
    }

    /**
     * 发送短信验证码
     *
     * @param username
     * @return 验证码
     */
    @RequestMapping(value = "mobile/user/verifycode")
    public
    @ResponseBody
    String verifycode(String username) {
        String verifyCode = verifyCodeServiceImpl.generateCode(username);
        return ResponseState.getResState("0", verifyCode);
    }

    /**
     * 生成邀请码
     *
     * @param username
     * @return 邀请码
     */
    @RequestMapping(value = "mobile/user/makeinvitatecode")
    public
    @ResponseBody
    String makeInvitateCode(String username) {
        return  invitateCodeServiceImpl.generateCode(username);
    }

    @RequestMapping(value = "mobile/user/register")
    public
    @ResponseBody
    String register(User user, String invitateCode, String verifyCode) {
        return userServiceImpl.register(user, invitateCode, verifyCode);
    }

    /**
     * 上传头像
     *
     * @return
     */
    @RequestMapping(value = "mobile/user/uploadheadpic")
    public
    @ResponseBody
    String uploadHeadPic(HttpServletRequest request,String phone) {
        return userServiceImpl.uploadHeadPic(request,phone);
    }

    /**
     * 信息完善
     *
     * @return
     */
    @RequestMapping(value = "mobile/user/perfinfo")
    public
    @ResponseBody
    String perfinfo(Alumnus alumnus, String phone) {
        return userServiceImpl.perfInfo(alumnus, phone);
    }

    /**
     * 忘记密码
     *
     * @return
     */
    @RequestMapping(value = "mobile/user/resetpwd")
    public
    @ResponseBody
    String resetPwd(String username, String password, String verifyCode) {
        return userServiceImpl.resetPwd(username, password, verifyCode);
    }

    /**
     * 更换手机号
     *
     * @return
     */
    @RequestMapping(value = "mobile/user/resetphone")
    public
    @ResponseBody
    String resetPhone(String phone, String newphone, String verifyCode) {
        return userServiceImpl.resetPhone(phone, newphone, verifyCode);
    }

    /**
     * 查看好友
     *
     * @return
     */
    @RequestMapping(value = "mobile/user/viewuser")
    public
    @ResponseBody
    String viewUser(String phone) {

        User user = userServiceImpl.queryUserByPhone(phone);
        if (null == user) {
            return ResponseState.INVALID_PHONE;
        }
        return ResponseData.getResData(user);
    }

}
