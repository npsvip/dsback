/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50541
 Source Host           : 127.0.0.1:3306
 Source Schema         : dsback

 Target Server Type    : MySQL
 Target Server Version : 50541
 File Encoding         : 65001

 Date: 28/10/2022 18:47:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean??????',
  `params` varchar(2000) DEFAULT NULL COMMENT '??????',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron?????????',
  `status` tinyint(4) DEFAULT NULL COMMENT '????????????  0?????????  1?????????',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1585944835846619138 DEFAULT CHARSET=utf8 COMMENT='????????????';

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????id',
  `job_id` bigint(20) NOT NULL COMMENT '??????id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean??????',
  `params` varchar(2000) DEFAULT NULL COMMENT '??????',
  `status` tinyint(4) NOT NULL COMMENT '????????????    0?????????    1?????????',
  `error` varchar(2000) DEFAULT NULL COMMENT '????????????',
  `times` int(11) NOT NULL COMMENT '??????(???????????????)',
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??????????????????';

-- ----------------------------
-- Table structure for tb_dict
-- ----------------------------
DROP TABLE IF EXISTS `tb_dict`;
CREATE TABLE `tb_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '????????????',
  `type` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '????????????',
  `code` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '?????????',
  `value` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '?????????',
  `order_num` int(11) DEFAULT '0' COMMENT '??????',
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '??????',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '????????????  -1????????????  0?????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1585944963949051907 DEFAULT CHARSET=utf8 COMMENT='?????????';

-- ----------------------------
-- Table structure for tb_server
-- ----------------------------
DROP TABLE IF EXISTS `tb_server`;
CREATE TABLE `tb_server` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `operating_system` tinyint(1) NOT NULL DEFAULT '1' COMMENT '????????????(0:?????? 1:centos 2:ubuntu 3:debian)',
  `system_version` varchar(32) DEFAULT NULL COMMENT '????????????',
  `ip` varchar(64) NOT NULL COMMENT '?????????IP',
  `port` varchar(8) NOT NULL DEFAULT '22' COMMENT '?????????SSH??????',
  `user_name` varchar(64) NOT NULL COMMENT '?????????',
  `pass_word` varchar(64) NOT NULL COMMENT '??????',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  `init` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_ip_port` (`ip`,`port`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1585941217844183043 DEFAULT CHARSET=utf8 COMMENT='???????????????';

-- ----------------------------
-- Table structure for tb_server_db
-- ----------------------------
DROP TABLE IF EXISTS `tb_server_db`;
CREATE TABLE `tb_server_db` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '???????????????(1:mysql 2:oracle 3:sqlserver)',
  `server_id` bigint(20) NOT NULL COMMENT '?????????ID',
  `job_id` bigint(20) DEFAULT NULL COMMENT '??????id',
  `docker` bit(1) DEFAULT b'0' COMMENT '?????????docker??????',
  `docker_id` varchar(32) DEFAULT '\0' COMMENT 'docker????????????',
  `name` varchar(255) NOT NULL COMMENT '?????????',
  `user_name` varchar(64) NOT NULL COMMENT '?????????',
  `pass_word` varchar(64) NOT NULL COMMENT '??????',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  `back_server_id` bigint(20) NOT NULL COMMENT '???????????????ID',
  `back_path` varchar(255) NOT NULL COMMENT '???????????????',
  `notice_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '???????????? (0:????????? 1:??????????????? 2:??????????????? 3:????????????)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1585944803827302403 DEFAULT CHARSET=utf8 COMMENT='???????????????';

-- ----------------------------
-- Table structure for tb_server_defense
-- ----------------------------
DROP TABLE IF EXISTS `tb_server_defense`;
CREATE TABLE `tb_server_defense` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '????????????(1:DOS-Deflate 2:syn?????? 3:?????????????????? 4:??????udp?????? 5:???ping 6:???????????? 7:iptables????????? 8:???????????????',
  `server_id` bigint(20) NOT NULL COMMENT '?????????ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unq` (`type`,`server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1585944904318631939 DEFAULT CHARSET=utf8 COMMENT='????????????';

-- ----------------------------
-- Table structure for tb_server_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_server_file`;
CREATE TABLE `tb_server_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `server_id` bigint(20) NOT NULL COMMENT '?????????ID',
  `path` varchar(255) NOT NULL COMMENT '??????????????????',
  `job_id` bigint(20) DEFAULT NULL COMMENT '??????id',
  `back_server_id` bigint(20) NOT NULL COMMENT '???????????????ID',
  `back_path` varchar(255) NOT NULL COMMENT '???????????????',
  `increment` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????????????????(0:??? 1:???)',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  `notice_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '???????????? (0:????????? 1:??????????????? 2:??????????????? 3:????????????)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1585944835838230530 DEFAULT CHARSET=utf8 COMMENT='????????????';

-- ----------------------------
-- Table structure for tb_server_middleware
-- ----------------------------
DROP TABLE IF EXISTS `tb_server_middleware`;
CREATE TABLE `tb_server_middleware` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '???????????????(1:mysql 2:oracle 3:sqlserver 4:redis 5:mongodb 6:postgresql 7:docker 8:nginx)',
  `version` varchar(32) NOT NULL DEFAULT '0' COMMENT '???????????????',
  `port` varchar(8) NOT NULL DEFAULT '22' COMMENT '?????????SSH??????',
  `user_name` varchar(64) NOT NULL COMMENT '?????????',
  `pass_word` varchar(64) DEFAULT NULL COMMENT '??????',
  `server_id` bigint(20) NOT NULL COMMENT '?????????ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unq` (`type`,`server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1585944865366130691 DEFAULT CHARSET=utf8 COMMENT='???????????????';

-- ----------------------------
-- Table structure for tb_server_monitor
-- ----------------------------
DROP TABLE IF EXISTS `tb_server_monitor`;
CREATE TABLE `tb_server_monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '????????????',
  `update_time` datetime DEFAULT NULL COMMENT '????????????',
  `server_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '?????????ID',
  `job_id` bigint(20) DEFAULT NULL COMMENT '??????id',
  `middleware` varchar(512) DEFAULT NULL COMMENT '??????????????????',
  `cpu_threshold` tinyint(4) DEFAULT NULL COMMENT 'CPU????????????',
  `memory_threshold` tinyint(4) DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unq_server_id` (`server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1572461511417294851 DEFAULT CHARSET=utf8 COMMENT='???????????????';

SET FOREIGN_KEY_CHECKS = 1;
