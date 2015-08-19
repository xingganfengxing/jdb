package com.ezb.jdb.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * 消息
 * author : liufeng
 * create time: 2015/8/5 13:53.
 */
@Data
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "T_MESSAGE")
@DynamicUpdate
public class Message extends Fmodel {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;

    @Column(length = 32)
    private String title;

    @Column(length = 255)
    private String content;

    @Column(name = "attachpath", length = 64)
    private String attachPath;//附件路径

    @Column
    private Integer state;//0未查看 1已查看

    @Column(name = "createtime")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;//消息发送时间

    @ManyToOne
    @Cascade(value = org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinColumn(name = "sender_userid")
    private User sender;//发送者

    @ManyToOne
    @Cascade(value = org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinColumn(name = "receive_userid")
    private User receiver;//接收者

}
