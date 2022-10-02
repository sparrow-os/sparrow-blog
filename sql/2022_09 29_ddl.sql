drop table if EXISTS posts;
drop table if EXISTS posts_extend;

create table posts(
     thread_id BIGINT(20) not NULL PRIMARY key auto_increment
    , forum_code VARCHAR(16) not null COMMENT "版块编码"
    , title VARCHAR(256) not null comment "发帖标题"
    , summary VARCHAR(256) DEFAULT null comment "摘要"
    , create_user_id BIGINT(20) not null comment "作者id"
    , create_time BIGINT(20) not null comment "创建时间"
    , order_day BIGINT(20) not null comment "发布的日期"
    , `status` TINYINT(2) NOT NULL COMMENT "参照RecordStatusEnum"
    , click_times INT(10) UNSIGNED not null DEFAULT 0 COMMENT "点赞次数"
    , update_time BIGINT(20) DEFAULT null comment "更新时间"
    , ip INT(10) DEFAULT null comment "ip"
    , has_attach TINYINT(1) NOT NULL DEFAULT 0 COMMENT "是否有附件0否1是"
    , recommend INT(10) UNSIGNED not null DEFAULT 0 COMMENT "小编推荐"
    , top INT(10) UNSIGNED not null DEFAULT 0 COMMENT "置顶排序号"
    , up INT(10) UNSIGNED not null DEFAULT 0 COMMENT "顶数"
    , down INT(10) UNSIGNED not null DEFAULT 0 COMMENT "踩数"
    , love INT(10) UNSIGNED not null DEFAULT 0 COMMENT "喜欢数"
    , is_picture TINYINT(1) NOT NULL DEFAULT 0 COMMENT "是否图片贴"
    , is_video TINYINT(1) NOT NULL DEFAULT 0 COMMENT "是否视频帖"
    , is_text TINYINT(1) NOT NULL DEFAULT 0 COMMENT "纯文本帖"
    , audit_status TINYINT(2) NOT NULL COMMENT "0待审核 1通过 2驳回"
    , last_comment_user_id BIGINT(20) not null COMMENT "最后评论人id"
    , last_comment_user_name VARCHAR(36) NOT NULL DEFAULT 0 COMMENT "最后评论人姓名"
    , last_comment_time BIGINT(20) not null comment "最后评论时间"
    , last_comment_content VARCHAR (256) not null comment "最后评论内容"
    , comment_num INT(10) UNSIGNED not null DEFAULT 0 COMMENT "评论数"
    , create_user_name VARCHAR(36) NOT NULL DEFAULT 0 COMMENT"创建人姓名"
    , cover_picture VARCHAR(128) not null comment "封面url"
    , editor VARCHAR(16) not null comment "编辑器类型"
    , origin VARCHAR(128) DEFAULT null comment "来源（转载）"
    , tags VARCHAR(512) DEFAULT NULL COMMENT "标签"
) ENGINE INNODB charset=utf8 COMMENT "发帖信息表";

create table posts_extend(
     thread_id BIGINT(20) not NULL PRIMARY key comment "posts.thread_id"
    , posts_content MEDIUMTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null comment "发帖文章内容"
)ENGINE INNODB charset=utf8 comment "发帖信息扩展表";


DROP TABLE IF EXISTS `event`;
DROP TABLE IF EXISTS `event_0`;
DROP TABLE IF EXISTS `event_1`;
DROP TABLE IF EXISTS `event_2`;
DROP TABLE IF EXISTS `event_3`;
DROP TABLE IF EXISTS `event_4`;
DROP TABLE IF EXISTS `event_5`;
DROP TABLE IF EXISTS `event_6`;
DROP TABLE IF EXISTS `event_7`;
DROP TABLE IF EXISTS `event_8`;
DROP TABLE IF EXISTS `event_9`;
DROP TABLE IF EXISTS `event_10`;
DROP TABLE IF EXISTS `event_11`;
DROP TABLE IF EXISTS `event_12`;
DROP TABLE IF EXISTS `event_13`;
DROP TABLE IF EXISTS `event_14`;
DROP TABLE IF EXISTS `event_15`;
DROP TABLE IF EXISTS `event_16`;
DROP TABLE IF EXISTS `event_17`;
DROP TABLE IF EXISTS `event_18`;
DROP TABLE IF EXISTS `event_19`;
DROP TABLE IF EXISTS `event_20`;
DROP TABLE IF EXISTS `event_21`;
DROP TABLE IF EXISTS `event_22`;
DROP TABLE IF EXISTS `event_23`;
DROP TABLE IF EXISTS `event_24`;
DROP TABLE IF EXISTS `event_25`;
DROP TABLE IF EXISTS `event_26`;
DROP TABLE IF EXISTS `event_27`;
DROP TABLE IF EXISTS `event_28`;
DROP TABLE IF EXISTS `event_29`;
DROP TABLE IF EXISTS `event_30`;
DROP TABLE IF EXISTS `event_31`;
DROP TABLE IF EXISTS `event_32`;
DROP TABLE IF EXISTS `event_33`;
DROP TABLE IF EXISTS `event_34`;
DROP TABLE IF EXISTS `event_35`;
DROP TABLE IF EXISTS `event_36`;
DROP TABLE IF EXISTS `event_37`;
DROP TABLE IF EXISTS `event_38`;
DROP TABLE IF EXISTS `event_39`;
DROP TABLE IF EXISTS `event_40`;
DROP TABLE IF EXISTS `event_41`;
DROP TABLE IF EXISTS `event_42`;
DROP TABLE IF EXISTS `event_43`;
DROP TABLE IF EXISTS `event_44`;
DROP TABLE IF EXISTS `event_45`;
DROP TABLE IF EXISTS `event_46`;
DROP TABLE IF EXISTS `event_47`;
DROP TABLE IF EXISTS `event_48`;
DROP TABLE IF EXISTS `event_49`;
DROP TABLE IF EXISTS `event_50`;
DROP TABLE IF EXISTS `event_51`;
DROP TABLE IF EXISTS `event_52`;
DROP TABLE IF EXISTS `event_53`;
DROP TABLE IF EXISTS `event_54`;
DROP TABLE IF EXISTS `event_55`;
DROP TABLE IF EXISTS `event_56`;
DROP TABLE IF EXISTS `event_57`;
DROP TABLE IF EXISTS `event_58`;
DROP TABLE IF EXISTS `event_59`;
DROP TABLE IF EXISTS `event_60`;
DROP TABLE IF EXISTS `event_61`;
DROP TABLE IF EXISTS `event_62`;
DROP TABLE IF EXISTS `event_63`;
DROP TABLE IF EXISTS `event_64`;
DROP TABLE IF EXISTS `event_65`;
DROP TABLE IF EXISTS `event_66`;
DROP TABLE IF EXISTS `event_67`;
DROP TABLE IF EXISTS `event_68`;
DROP TABLE IF EXISTS `event_69`;
DROP TABLE IF EXISTS `event_70`;
DROP TABLE IF EXISTS `event_71`;
DROP TABLE IF EXISTS `event_72`;
DROP TABLE IF EXISTS `event_73`;
DROP TABLE IF EXISTS `event_74`;
DROP TABLE IF EXISTS `event_75`;
DROP TABLE IF EXISTS `event_76`;
DROP TABLE IF EXISTS `event_77`;
DROP TABLE IF EXISTS `event_78`;
DROP TABLE IF EXISTS `event_79`;
DROP TABLE IF EXISTS `event_80`;
DROP TABLE IF EXISTS `event_81`;
DROP TABLE IF EXISTS `event_82`;
DROP TABLE IF EXISTS `event_83`;
DROP TABLE IF EXISTS `event_84`;
DROP TABLE IF EXISTS `event_85`;
DROP TABLE IF EXISTS `event_86`;
DROP TABLE IF EXISTS `event_87`;
DROP TABLE IF EXISTS `event_88`;
DROP TABLE IF EXISTS `event_89`;
DROP TABLE IF EXISTS `event_90`;
DROP TABLE IF EXISTS `event_91`;
DROP TABLE IF EXISTS `event_92`;
DROP TABLE IF EXISTS `event_93`;
DROP TABLE IF EXISTS `event_94`;
DROP TABLE IF EXISTS `event_95`;
DROP TABLE IF EXISTS `event_96`;
DROP TABLE IF EXISTS `event_97`;
DROP TABLE IF EXISTS `event_98`;
DROP TABLE IF EXISTS `event_99`;
DROP TABLE IF EXISTS `event_100`;
DROP TABLE IF EXISTS `event_101`;
DROP TABLE IF EXISTS `event_102`;
DROP TABLE IF EXISTS `event_103`;
DROP TABLE IF EXISTS `event_104`;
DROP TABLE IF EXISTS `event_105`;
DROP TABLE IF EXISTS `event_106`;
DROP TABLE IF EXISTS `event_107`;
DROP TABLE IF EXISTS `event_108`;
DROP TABLE IF EXISTS `event_109`;
DROP TABLE IF EXISTS `event_110`;
DROP TABLE IF EXISTS `event_111`;
DROP TABLE IF EXISTS `event_112`;
DROP TABLE IF EXISTS `event_113`;
DROP TABLE IF EXISTS `event_114`;
DROP TABLE IF EXISTS `event_115`;
DROP TABLE IF EXISTS `event_116`;
DROP TABLE IF EXISTS `event_117`;
DROP TABLE IF EXISTS `event_118`;
DROP TABLE IF EXISTS `event_119`;
DROP TABLE IF EXISTS `event_120`;
DROP TABLE IF EXISTS `event_121`;
DROP TABLE IF EXISTS `event_122`;
DROP TABLE IF EXISTS `event_123`;
DROP TABLE IF EXISTS `event_124`;
DROP TABLE IF EXISTS `event_125`;
DROP TABLE IF EXISTS `event_126`;
DROP TABLE IF EXISTS `event_127`;
CREATE TABLE `event`(
    event_id BIGINT(20) not null PRIMARY KEY auto_increment
    , user_id BIGINT(20) not null COMMENT "用户Id"
    , business_id BIGINT(20) not null COMMENT "业务id"
    , business_type VARCHAR(16) not null COMMENT "业务类型"
    , `event` VARCHAR(16) NOT NULL COMMENT "事件(操作类型)"
    , `status` VARCHAR(8) NOT NULL COMMENT "操作状态"
    , create_time BIGINT(20) NOT NULL COMMENT "创建时间"
    , update_time BIGINT(20) DEFAULT NULL COMMENT "更新时间"
    , times INT(10) NOT null COMMENT "操作次数"
    , remark VARCHAR(256) NOT NULL COMMENT "备注"
    , `content` VARCHAR(256) NOT NULL COMMENT "日志内容"
    , website VARCHAR(16) DEFAULT NULL COMMENT "子站域名"
    , ip VARCHAR(16) DEFAULT NULL COMMENT "注册ip"
    , device VARCHAR(8) DEFAULT NULL COMMENT "注册设备 iphone/三星/华为"
    , device_id VARCHAR(64) DEFAULT NULL COMMENT "设备唯一码"
    , device_model VARCHAR(16) DEFAULT NULL COMMENT "设备型号 iphone 5s/小米5"
    , app_id VARCHAR(32) DEFAULT NULL COMMENT "app id"
    , app_version VARCHAR(16) DEFAULT NULL COMMENT "app version e.g 7.02"
    , platform VARCHAR(16) DEFAULT NULL COMMENT "os platform"
    , os VARCHAR(16) DEFAULT NULL COMMENT "操作系统"
    , user_agent VARCHAR(32) DEFAULT NULL COMMENT "用户代理"
    , client_version VARCHAR(16) DEFAULT NULL COMMENT "os version not app version"
    , channel VARCHAR(16) DEFAULT NULL COMMENT "渠道"
    , longitude DOUBLE DEFAULT NULL COMMENT "经度"
    , latitude DOUBLE DEFAULT NULL COMMENT "纬度"
    , network VARCHAR(16) DEFAULT NULL COMMENT "中国移动 中国联通 wifi"
    , simulate TINYINT(1) DEFAULT NULL COMMENT "是否模拟机 0否1是"
    , imei VARCHAR(32) DEFAULT NULL COMMENT "国际移动设备标识"
    , bssid VARCHAR(32) DEFAULT NULL COMMENT ""
    , ssid VARCHAR(32) DEFAULT NULL COMMENT ""
    , idfa VARCHAR(32) DEFAULT NULL COMMENT "for apple unique id"
    , start_time BIGINT(20) DEFAULT NULL COMMENT "启动时间"
    , resume_time BIGINT(20) DEFAULT NULL COMMENT "重启时间"
)ENGINE INNODB charset=utf8 COMMENT "事件表";

CREATE TABLE `event_0` LIKE `event`;
CREATE TABLE `event_1` LIKE `event`;
CREATE TABLE `event_2` LIKE `event`;
CREATE TABLE `event_3` LIKE `event`;
CREATE TABLE `event_4` LIKE `event`;
CREATE TABLE `event_5` LIKE `event`;
CREATE TABLE `event_6` LIKE `event`;
CREATE TABLE `event_7` LIKE `event`;
CREATE TABLE `event_8` LIKE `event`;
CREATE TABLE `event_9` LIKE `event`;
CREATE TABLE `event_10` LIKE `event`;
CREATE TABLE `event_11` LIKE `event`;
CREATE TABLE `event_12` LIKE `event`;
CREATE TABLE `event_13` LIKE `event`;
CREATE TABLE `event_14` LIKE `event`;
CREATE TABLE `event_15` LIKE `event`;
CREATE TABLE `event_16` LIKE `event`;
CREATE TABLE `event_17` LIKE `event`;
CREATE TABLE `event_18` LIKE `event`;
CREATE TABLE `event_19` LIKE `event`;
CREATE TABLE `event_20` LIKE `event`;
CREATE TABLE `event_21` LIKE `event`;
CREATE TABLE `event_22` LIKE `event`;
CREATE TABLE `event_23` LIKE `event`;
CREATE TABLE `event_24` LIKE `event`;
CREATE TABLE `event_25` LIKE `event`;
CREATE TABLE `event_26` LIKE `event`;
CREATE TABLE `event_27` LIKE `event`;
CREATE TABLE `event_28` LIKE `event`;
CREATE TABLE `event_29` LIKE `event`;
CREATE TABLE `event_30` LIKE `event`;
CREATE TABLE `event_31` LIKE `event`;
CREATE TABLE `event_32` LIKE `event`;
CREATE TABLE `event_33` LIKE `event`;
CREATE TABLE `event_34` LIKE `event`;
CREATE TABLE `event_35` LIKE `event`;
CREATE TABLE `event_36` LIKE `event`;
CREATE TABLE `event_37` LIKE `event`;
CREATE TABLE `event_38` LIKE `event`;
CREATE TABLE `event_39` LIKE `event`;
CREATE TABLE `event_40` LIKE `event`;
CREATE TABLE `event_41` LIKE `event`;
CREATE TABLE `event_42` LIKE `event`;
CREATE TABLE `event_43` LIKE `event`;
CREATE TABLE `event_44` LIKE `event`;
CREATE TABLE `event_45` LIKE `event`;
CREATE TABLE `event_46` LIKE `event`;
CREATE TABLE `event_47` LIKE `event`;
CREATE TABLE `event_48` LIKE `event`;
CREATE TABLE `event_49` LIKE `event`;
CREATE TABLE `event_50` LIKE `event`;
CREATE TABLE `event_51` LIKE `event`;
CREATE TABLE `event_52` LIKE `event`;
CREATE TABLE `event_53` LIKE `event`;
CREATE TABLE `event_54` LIKE `event`;
CREATE TABLE `event_55` LIKE `event`;
CREATE TABLE `event_56` LIKE `event`;
CREATE TABLE `event_57` LIKE `event`;
CREATE TABLE `event_58` LIKE `event`;
CREATE TABLE `event_59` LIKE `event`;
CREATE TABLE `event_60` LIKE `event`;
CREATE TABLE `event_61` LIKE `event`;
CREATE TABLE `event_62` LIKE `event`;
CREATE TABLE `event_63` LIKE `event`;
CREATE TABLE `event_64` LIKE `event`;
CREATE TABLE `event_65` LIKE `event`;
CREATE TABLE `event_66` LIKE `event`;
CREATE TABLE `event_67` LIKE `event`;
CREATE TABLE `event_68` LIKE `event`;
CREATE TABLE `event_69` LIKE `event`;
CREATE TABLE `event_70` LIKE `event`;
CREATE TABLE `event_71` LIKE `event`;
CREATE TABLE `event_72` LIKE `event`;
CREATE TABLE `event_73` LIKE `event`;
CREATE TABLE `event_74` LIKE `event`;
CREATE TABLE `event_75` LIKE `event`;
CREATE TABLE `event_76` LIKE `event`;
CREATE TABLE `event_77` LIKE `event`;
CREATE TABLE `event_78` LIKE `event`;
CREATE TABLE `event_79` LIKE `event`;
CREATE TABLE `event_80` LIKE `event`;
CREATE TABLE `event_81` LIKE `event`;
CREATE TABLE `event_82` LIKE `event`;
CREATE TABLE `event_83` LIKE `event`;
CREATE TABLE `event_84` LIKE `event`;
CREATE TABLE `event_85` LIKE `event`;
CREATE TABLE `event_86` LIKE `event`;
CREATE TABLE `event_87` LIKE `event`;
CREATE TABLE `event_88` LIKE `event`;
CREATE TABLE `event_89` LIKE `event`;
CREATE TABLE `event_90` LIKE `event`;
CREATE TABLE `event_91` LIKE `event`;
CREATE TABLE `event_92` LIKE `event`;
CREATE TABLE `event_93` LIKE `event`;
CREATE TABLE `event_94` LIKE `event`;
CREATE TABLE `event_95` LIKE `event`;
CREATE TABLE `event_96` LIKE `event`;
CREATE TABLE `event_97` LIKE `event`;
CREATE TABLE `event_98` LIKE `event`;
CREATE TABLE `event_99` LIKE `event`;
CREATE TABLE `event_100` LIKE `event`;
CREATE TABLE `event_101` LIKE `event`;
CREATE TABLE `event_102` LIKE `event`;
CREATE TABLE `event_103` LIKE `event`;
CREATE TABLE `event_104` LIKE `event`;
CREATE TABLE `event_105` LIKE `event`;
CREATE TABLE `event_106` LIKE `event`;
CREATE TABLE `event_107` LIKE `event`;
CREATE TABLE `event_108` LIKE `event`;
CREATE TABLE `event_109` LIKE `event`;
CREATE TABLE `event_110` LIKE `event`;
CREATE TABLE `event_111` LIKE `event`;
CREATE TABLE `event_112` LIKE `event`;
CREATE TABLE `event_113` LIKE `event`;
CREATE TABLE `event_114` LIKE `event`;
CREATE TABLE `event_115` LIKE `event`;
CREATE TABLE `event_116` LIKE `event`;
CREATE TABLE `event_117` LIKE `event`;
CREATE TABLE `event_118` LIKE `event`;
CREATE TABLE `event_119` LIKE `event`;
CREATE TABLE `event_120` LIKE `event`;
CREATE TABLE `event_121` LIKE `event`;
CREATE TABLE `event_122` LIKE `event`;
CREATE TABLE `event_123` LIKE `event`;
CREATE TABLE `event_124` LIKE `event`;
CREATE TABLE `event_125` LIKE `event`;
CREATE TABLE `event_126` LIKE `event`;
CREATE TABLE `event_127` LIKE `event`;