package com.ezb.jdb.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * 用户
 * author : liufeng
 * create time: 2015/8/1 15:39.
 */
@Data
@Entity
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Table(name = "T_USER")
@DynamicUpdate
public class User extends Fmodel {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 32)
    private String username;//默认手机号

    @Column(length = 32)
    private String password;

    @Column
    private Integer type;//用户类型

    @OneToOne(mappedBy = "user",cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private Alumnus alumnus;

    @Column
    private Integer state;//状态 0停用 1正常
}
