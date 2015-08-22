package com.ezb.jdb.model;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * 首页焦点图
 * author : liufeng
 * create time:2015/8/20 9:40
 */
@Data
@Entity
@Table(name = "T_FOCUS")
@DynamicUpdate
public class Focus {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 64)
    private String title;

    @Column(length = 64)
    private String picpath;//图片路径

    @Column(length = 16)
    private String type;//活动还是资讯

    @Column(length = 32)
    private String refId;//绑定id

    @Column(name = "viewurl", length = 32)
    private String viewurl;

    @Column
    private Integer position;//位置 第几位焦点图

}
