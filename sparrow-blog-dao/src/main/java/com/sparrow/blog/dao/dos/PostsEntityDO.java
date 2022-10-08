package com.sparrow.blog.dao.dos;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.util.Date;

@TableName("posts")
public class PostsEntityDO {
    /**
     * 主键 帖子ID
     */
    @TableId(type = IdType.AUTO)
    private Long threadId;
    /**
     * 版块编码
     */
    private String forumCode;
    /**
     * 标题
     */
    private String title;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 封面图
     */
    private String coverPicture;
    /**
     * 编辑器
     */
    private String editor;
    /**
     * 创建人ID
     */
    private Long createUserId;
    /**
     * 创建时间
     */
    private Long createTime;
    /**
     * 发布的日期
     */
    private Date orderDay;
    /**
     * 状态
     */
    private Integer status;
    /**
     * 点击次数
     */
    private Integer clickTimes;
    /**
     * 更新时间
     */
    private Long updateTime;
    /**
     * ip
     */
    private Long ip;
    /**
     * 是否有附件
     */
    private Boolean hasAttach;
    /**
     * 关键字 标签
     */
    private String tags;

    /**
     * 小编推荐
     */
    private Integer recommend;
    /**
     * 置顶排序号
     */
    private Integer top;
    /**
     * 顶数
     */
    private Integer up;
    /**
     * 踩数
     */
    private Integer down;
    /**
     * 喜欢数
     */
    private Integer love;

    /**
     * 是否图片帖
     */
    @TableField("is_picture")
    private Boolean isPicture;
    /**
     * 是否视频帖
     */
    @TableField("is_video")
    private Boolean isVideo;
    /**
     * 纯文本帖
     */
    @TableField("is_text")
    private Boolean isText;
    /**
     * 来源（转载）
     */
    private String origin;
    /**
     * 审核状态
     */
    private Integer auditStatus;
    /**
     * 最后评论者id
     */
    private Long lastCommentUserId;
    /**
     * 最后评论人名称
     */
    private String lastCommentUserName;
    /**
     * 最后评论时间
     */
    private Long lastCommentTime;
    /**
     * 最后评论内容
     */
    private String lastCommentContent;
    /**
     * 评论数
     */
    private Integer commentNum;
    /**
     * 创建人姓名
     */
    private String createUserName;
}
