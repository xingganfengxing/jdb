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
import java.util.Set;

/**
 * 资讯评论
 * author : liufeng
 * create time: 2015/8/7 9:36.
 */
@Data
@Entity
@Table(name = "newscmt")
@DynamicUpdate
public class NewsCmt {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "news_id")
    @JSONField(serialize = false)
    private News news;//所属资讯

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "comment_userid")
    private User commentUser;//评论人

    @Column(length = 255)
    private String content;//评论内容

    @Column(name = "likecount")
    private Integer likeCount;//点赞次数

    @Column(name = "c_time")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;//评论时间

    @Transient
    private String timePast;//

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "parent_id")
    private NewsCmt parentNewsCmt;//父评论

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
