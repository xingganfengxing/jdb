package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * 圈子
 * author : liufeng
 * create time:2015/8/14 14:50
 */
@Data
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "T_CIRCLE")
@DynamicUpdate
public class Circle extends Fmodel {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 32)
    private String title;

    @Column(name = "picpath", length = 64)
    private String picPath;//图片路径

    @Column(length = 255)
    private String introduce;

    @Transient
    private Integer cmtCount;//评论条数

    @Column(name="createtime")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date createTime;//圈子创建时间

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "create_userid")
    private User createUser;//圈子创建人

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "T_JOIN_USER_CIRCLE",
            joinColumns = {@JoinColumn(name = "circle_id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id")})
    private Set<User> members;
}
