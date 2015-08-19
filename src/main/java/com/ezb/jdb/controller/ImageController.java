package com.ezb.jdb.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

/**
 * 图片展示
 * author : liufeng
 * create time:2015/8/18 14:09
 */
@Controller
@Slf4j
public class ImageController {

    @RequestMapping(value = "/image/showimage")
    public void showImage(HttpServletRequest request,
                          HttpServletResponse response, String picpath) {

        FileInputStream fis = null;
        String contextPath = request.getSession().getServletContext().getRealPath("/");

        try {
            OutputStream out = response.getOutputStream();
            File file = new File(contextPath + File.separator + picpath);
            fis = new FileInputStream(file);
            byte[] b = new byte[fis.available()];
            fis.read(b);
            out.write(b);
            out.flush();
        } catch (Exception e) {
            log.error(e.getMessage());
        } finally {
            IOUtils.closeQuietly(fis);
        }
    }
}
