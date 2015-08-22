package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 举报
 * author : liufeng
 * create time:2015/8/13 14:09
 */
@Data
@Entity
@Table(name = "T_INFORM")
@DynamicUpdate
public class Inform {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 8)
    private String type;

    @Column(name="asso_id",length = 32)
    private String assoId;//关联id

    @Column(name="asso_name",length = 64)
    private String assoName;//关联的某人 or 某活动名称

    @Column(length = 16)
    private String reason;//被举报的原因

    @Column(name="otherinfo",length = 255)
    private String otherInfo;//其他说明

    @Column(length = 64)
    private String viewurl;//查看页面

    @Column
    private Integer state;//状态 (已处理，待处理)

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "create_userid")
    private User createUser;//举报人

    @Column(name="createtime")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date createTime;//举报时间

}
