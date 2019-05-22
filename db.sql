CREATE TABLE `users`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`user_name` varchar(25) NOT NULL COMMENT '用户名',
	`password`	varchar(100) NOT NULL COMMENT '密码',
	PRIMARY KEY (`id`),
	key(`user_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `customers`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`first_name` varchar(60) NOT NULL COMMENT '客户姓',
	`second_name` varchar(100) NOT NULL COMMENT '客户名',
	`zone_number` int NOT NULL COMMENT '区号',
	`phone`	int(15) NOT NULL COMMENT '座机',
	`mphone` int(12) NOT NULL COMMENT '手机',
	`operator` varchar(100) NOT NULL COMMENT '运营商',
	`city` varchar(100) NOT NULL COMMENT '城市',
	`province` varchar(100) NOT NULL COMMENT '省分',
	`tag_count` int(10) NOT NULL COMMENT '用户标识计数',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create TABLE `desensitization`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`key_name` varchar(20) NOT NULL COMMENT '脱敏部key名称',
	`desensitization_type` varchar(20) NOT NULL COMMENT '脱敏方法,全脱,半脱（指定字段位）',
	`user_id` bigint(12) NOT NULL COMMENT '用户ID',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tag_info`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`tag_name` varchar(100) NOT NULL COMMENT '标识名',
	`tag_info` int(10) NOT NULL COMMENT '标识详细数据',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `customers_tag`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`customer_id` bigint(12) NOT NULL COMMENT '客户ID',
	`tag_id` bigint(12) NOT NULL COMMENT '标识ID',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `op_log`(
	`id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`user_id` bigint(12) NOT NULL COMMENT '用户ID',
	`log_time` datetime NOT NULL COMMENT '日志时间',
	`log_txt` text NOT NULL COMMENT '日志',
	PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ak="LTAImkIgtSQId69y"
