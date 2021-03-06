package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.Constants;
import com.ezb.jdb.common.NavType;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Focus;
import com.ezb.jdb.model.FocusData;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * author : liufeng
 * create time:2015/8/22 11:37
 */
@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:configs/spring/*.xml"})
public class MFocusControllerTest {

    @Resource
    private MFocusController mFocusController;

    @Test
    public void newsActivity() {
        PageResult<Focus> pageResult = new PageResult<Focus>();
        pageResult.setCurPage(1);
        pageResult.setPageSize(6);
        log.info(mFocusController.newsActivity(pageResult));
    }

    @Test
    public void circle() {
        PageResult<Focus> pageResult = new PageResult<Focus>();
        pageResult.setCurPage(1);
        pageResult.setPageSize(2);
        log.info(mFocusController.circle(pageResult));
    }

    @Test
    public void dataBind() {
        log.info(mFocusController.dataBind("2", NavType.ACTIVITY.toString()));
        log.info(mFocusController.dataBind("2", NavType.NEWS.toString()));
        log.info(mFocusController.dataBind("2", NavType.CIRCLE.toString()));
    }

    @Test
    @Rollback(true)
    public void dataSave() {

        String[] types = new String[]{NavType.CIRCLE.toString(),
                NavType.ACTIVITY.toString(), NavType.NEWS.toString()};

        String[] viewurls = new String[]{Constants.VIEWURL_CIRCLE,
                Constants.VIEWURL_ACTIVITY, Constants.VIEWURL_NEWS};

        List<Focus> dataList = new ArrayList<Focus>();
        Random random = new Random();

        for (int i = 0; i < 10; i++) {
            int index = random.nextInt(2);
            Focus focus = new Focus();
            focus.setViewurl(viewurls[index]);
            focus.setPicpath("picpath" + i);
            focus.setRefId(random.nextInt(99) + "");
            focus.setType(types[index]);
            focus.setPosition(100 + i);
            dataList.add(focus);
        }

        FocusData focusData = new FocusData();
        focusData.setFocuses(dataList);
        log.info(mFocusController.dataSave(focusData));
    }
}
