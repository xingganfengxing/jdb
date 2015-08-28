package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezb.jdb.tool.JdbDateUtils;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 资讯
 * author : liufeng
 * create time: 2015/8/7 9:34.
 */
@Data
@Entity
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Table(name = "news")
@DynamicUpdate
public class News extends Fmodel {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 64)
    private String title;

    @Column(length = 255)
    private String content;

    @Column(name="picpath",length = 64)
    private String picPath;

    @Column(length = 16)
    private String type;

    @Column
    private Integer pv;//阅读次数

    @Column
    @JSONField(format="yyyy-MM-dd HH:mm")
    private Date createTime;

    @Transient
    private String interTime;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "create_userid")
    private User createUser;//资讯创建人

    @Column
    private Integer state;//状态 0下线 1正常

    public String getTimePast(){
        return JdbDateUtils.interTime(createTime);
    }
}
