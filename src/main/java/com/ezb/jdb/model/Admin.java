package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 系统管理员
 * author : liufeng
 * create time:2015/8/21 14:02
 */
@Data
@Entity
@Table(name = "T_ADMIN")
@DynamicUpdate
public class Admin {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column
    private Integer level;//管理员级别 0超级管理员

    @Column(length = 32)
    private String username;

    @Column(length = 32)
    private String password;

    @Column(length = 16)
    private String realName;

    @Column(length = 16)
    private String phone;

    @Column(name="createtime")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
}
