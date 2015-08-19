package com.ezb.jdb.model;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 验证码
 * author : liufeng
 * create time: 2015/8/6 9:51.
 */
@Data
@Entity
@Table(name = "T_VERIFYCODE")
@DynamicUpdate
public class VerifyCode {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(name="verifycode",length = 8)
    private String verifyCode;

    @Column(length = 16)
    private String phone;

    @Column(name="createtime")
    private Date createTime;
}