package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 邀请码
 * author : liufeng
 * create time: 2015/8/6 11:02.
 */
@Data
@Entity
@Table(name = "T_INVITATECODE")
public class InvitateCode {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 8)
    private String code;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "create_userid")
    private User createUser;

    @Column(name="createtime")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
}
