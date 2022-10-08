package com.sparrow.blog.dao.dos;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("event")
public class EventEntityDO {
    /**
     * 自增id
     */
    @TableId(type = IdType.AUTO)
    private Long eventId;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * 业务id
     */
    private Long businessId;
    /**
     * 业务类型
     */
    private String businessType;
    /**
     * 事件(操作类型)
     */
    private String event;
    /**
     * 操作状态
     */
    private String status;
    /**
     * 操作时间
     */
    private Long createTime;
    /**
     * 第n次操作时间(幂等操作,日志只有一条)
     */
    private Long updateTime;
    /**
     * 操作次数
     */
    private Integer times;
    /**
     * 备注
     */
    private String remark;
    /**
     * 日志内容
     */
    private String content;
    /**
     * 子站域名
     */
    private String website;
    /**
     * 注册ip
     */
    private String ip;
    /**
     * 注册设备 iphone/三星/华为
     */
    private String device;
    /**
     * unique id
     */
    private String deviceId;

    /**
     * 设备型号 iphone 5s/小米5
     */
    private String deviceModel;

    /**
     * app id
     */
    private int appId;

    /**
     * app version e.g 7.02
     */
    private float appVersion;

    /**
     * os platform
     */
    private String platform;

    /**
     * 操作系统
     */
    private String os;
    /**
     *
     */
    private String userAgent;

    /**
     * os version not app version
     */
    private String clientVersion;

    /**
     * 渠道
     */
    private String channel;

    /**
     * 经度
     */
    private double longitude;

    /**
     * 纬度
     */
    private double latitude;

    /**
     * 中国移动
     * 中国联通
     * wifi
     */
    private String network;

    /**
     * 是否模拟机
     */
    private Boolean simulate;

    /**
     * International Mobile Equipment Identity
     */
    private String imei;
    /**
     *
     */
    private String bssid;
    /**
     *
     */
    private String ssid;

    /**
     * for apple unique id
     */
    private String idfa;

    /**
     * 启动时间
     */
    private long startTime;

    /**
     * 重启时间
     */
    private long resumeTime;
}
