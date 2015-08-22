package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Admin;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * 管理员维护
 * author : liufeng
 * create time:2015/8/21 15:43
 */
@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:configs/spring/*.xml"})
public class MAdminConrollerTest {
    @Resource
    private MAdminController adminController;

    @Test
    public void goLogin(){
        Admin admin = new Admin();
        admin.setUsername("username0");
        admin.setPassword("pass0");
        log.info(adminController.doLogin(admin));

        admin.setPassword("xxxxx");
        log.info(adminController.doLogin(admin));
    }

    @Test
    public void saveorupdate(){
        Admin admin = new Admin();
        admin.setUsername("usernamexxxx");
        admin.setPassword("passxxxx");
        admin.setPhone("2122212");
        admin.setRealName("realNamexxx");
        admin.setLevel(1);
        log.info(adminController.saveOrUpdate(admin));
    }

    @Test
    public void delete(){
        String ids = "3,4,100,1000";
        log.info(adminController.delete(ids));
    }

    @Test
    public void query(){
        PageResult<Admin> pageResult = new PageResult<Admin>();
        pageResult.setCurPage(1);
        pageResult.setPageSize(10);
        log.info(adminController.query(pageResult, "", "", "", ""));
        log.info(adminController.query(pageResult,"username2","","",""));
        log.info(adminController.query(pageResult,"","realName2","",""));
        log.info(adminController.query(pageResult,"","realName2","2015-08-21",""));
        log.info(adminController.query(pageResult,"","realName2","2015-08-21","2015-08-21 10:00:00"));

    }

}
