package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * 校友
 * author : liufeng
 * create time: 2015/8/5 12:02.
 */
@Data
@Entity
@Table(name = "T_ALUMNUS")
@DynamicUpdate
public class Alumnus {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 16, name = "realname")
    private String realName;

    @Column(length = 16, name = "enrealname")
    private String enRealName;//英文名称

    @Column(name = "headpic_path", length = 64)
    private String headPicPath;//头像

    @Column(length = 1)
    private Integer sex;

    @Column(length = 64)
    private String school;

    @Column(length = 64)
    private String department;//院系

    @Column(length = 16)
    private String grade;//年级

    @Column(length = 32)
    private String company;

    @Column(length = 16)
    private String title;//职位

    @Column(length = 32)
    private String email;

    @Column(length = 11)
    private String phone;

    @Column(length = 32)
    private String weixin;

    @Column
    private Double lng;//经度

    @Column
    private Double lat;//维度

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    @JSONField(serialize = false)
    private User user;

    public boolean equals(Object obj) {
        return (this == obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }
}
