DROP DATABASE IF EXISTS `xiyidian`;
CREATE DATABASE IF NOT EXISTS `xiyidian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `xiyidian`;

-- Table structure for table `chat` --
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`userid` bigint NOT NULL COMMENT '用户id',
`adminid` bigint DEFAULT NULL COMMENT '管理员id',
`ask` longtext DEFAULT NULL COMMENT '提问',
`reply` longtext DEFAULT NULL COMMENT '回复',
`isreply` int DEFAULT NULL COMMENT '是否回复'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '在线客服';
-- Data of table `chat` --
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
(1, '2025-01-12 16:13:57', 1, 1, '提问1', '回复1', 1),
(2, '2025-01-12 16:13:57', 2, 2, '提问2', '回复2', 2),
(3, '2025-01-12 16:13:57', 3, 3, '提问3', '回复3', 3),
(4, '2025-01-12 16:13:57', 4, 4, '提问4', '回复4', 4),
(5, '2025-01-12 16:13:57', 5, 5, '提问5', '回复5', 5),
(6, '2025-01-12 16:13:57', 6, 6, '提问6', '回复6', 6);

-- Table structure for table `config` --
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`name` varchar(100) NOT NULL COMMENT '配置参数名称',
`value` varchar(100) DEFAULT NULL COMMENT '配置参数值'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '配置文件';
-- Data of table `config` --
INSERT INTO `config` (`id`, `name`, `value`) VALUES
(1, 'picture1', 'http://localhost:8080/xiyidian/upload/picture1.jpg'),
(2, 'picture2', 'http://localhost:8080/xiyidian/upload/picture2.jpg'),
(3, 'picture3', 'http://localhost:8080/xiyidian/upload/picture3.jpg'),
(6, 'picture4', 'http://localhost:8080/xiyidian/upload/1618384141577.jpg');

-- Table structure for table `dianjia` --
DROP TABLE IF EXISTS `dianjia`;
CREATE TABLE `dianjia` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`dianjiazhanghao` varchar(200) NOT NULL COMMENT '店家账号',
`mima` varchar(200) NOT NULL COMMENT '密码',
`dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
`xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
`shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
`gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
`sfsh` varchar(200) DEFAULT NULL DEFAULT '否' COMMENT '是否审核',
`shhf` longtext DEFAULT NULL COMMENT '审核回复'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '店家';
-- Data of table `dianjia` --
INSERT INTO `dianjia` (`id`, `addtime`, `dianjiazhanghao`, `mima`, `dianjiaxingming`, `xingbie`, `shoujihaoma`, `gerenzhaopian`, `sfsh`, `shhf`) VALUES
(1, '2025-01-12 16:13:57', '店家1', '123456', '店家姓名1', '男', '13823888881', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian1.jpg', '是', ''),
(2, '2025-01-12 16:13:57', '店家2', '123456', '店家姓名2', '男', '13823888882', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian2.jpg', '是', ''),
(3, '2025-01-12 16:13:57', '店家3', '123456', '店家姓名3', '男', '13823888883', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian3.jpg', '是', ''),
(4, '2025-01-12 16:13:57', '店家4', '123456', '店家姓名4', '男', '13823888884', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian4.jpg', '是', ''),
(5, '2025-01-12 16:13:57', '店家5', '123456', '店家姓名5', '男', '13823888885', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian5.jpg', '是', ''),
(6, '2025-01-12 16:13:57', '店家6', '123456', '店家姓名6', '男', '13823888886', 'http://localhost:8080/xiyidian/upload/dianjia_gerenzhaopian6.jpg', '是', '');

-- Table structure for table `dianpuxinxi` --
DROP TABLE IF EXISTS `dianpuxinxi`;
CREATE TABLE `dianpuxinxi` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
`dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
`kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
`jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
`dianpujieshao` longtext DEFAULT NULL COMMENT '店铺介绍',
`dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
`dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
`sfsh` varchar(200) DEFAULT NULL DEFAULT '否' COMMENT '是否审核',
`shhf` longtext DEFAULT NULL COMMENT '审核回复',
`thumbsupnum` int DEFAULT NULL DEFAULT '0' COMMENT '赞',
`crazilynum` int DEFAULT NULL DEFAULT '0' COMMENT '踩',
`clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
`clicknum` int DEFAULT NULL DEFAULT '0' COMMENT '点击次数'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '店铺信息';
-- Data of table `dianpuxinxi` --
INSERT INTO `dianpuxinxi` (`id`, `addtime`, `dianpumingcheng`, `dianpuzhaopian`, `kaifangshijian`, `jingyingfanwei`, `dianpujieshao`, `dianjiazhanghao`, `dianjiaxingming`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
(1, '2025-01-12 16:13:57', '店铺名称1', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian1.jpg', '开放时间1', '经营范围1', '店铺介绍1', '店家账号1', '店家姓名1', '是', '', 1, 1, '2025-01-12 16:13:57', 1),
(2, '2025-01-12 16:13:57', '店铺名称2', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian2.jpg', '开放时间2', '经营范围2', '店铺介绍2', '店家账号2', '店家姓名2', '是', '', 2, 2, '2025-01-12 16:13:57', 2),
(3, '2025-01-12 16:13:57', '店铺名称3', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian3.jpg', '开放时间3', '经营范围3', '店铺介绍3', '店家账号3', '店家姓名3', '是', '', 3, 3, '2025-01-12 16:13:57', 3),
(4, '2025-01-12 16:13:57', '店铺名称4', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian4.jpg', '开放时间4', '经营范围4', '店铺介绍4', '店家账号4', '店家姓名4', '是', '', 4, 4, '2025-01-12 16:13:57', 4),
(5, '2025-01-12 16:13:57', '店铺名称5', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian5.jpg', '开放时间5', '经营范围5', '店铺介绍5', '店家账号5', '店家姓名5', '是', '', 5, 5, '2025-01-12 16:13:57', 5),
(6, '2025-01-12 16:13:57', '店铺名称6', 'http://localhost:8080/xiyidian/upload/dianpuxinxi_dianpuzhaopian6.jpg', '开放时间6', '经营范围6', '店铺介绍6', '店家账号6', '店家姓名6', '是', '', 6, 6, '2025-01-12 16:13:57', 7);

-- Table structure for table `dingdanjindu` --
DROP TABLE IF EXISTS `dingdanjindu`;
CREATE TABLE `dingdanjindu` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
`yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
`dangqianjindu` varchar(200) DEFAULT NULL COMMENT '当前进度',
`dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
`dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
`shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
`gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
`gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
`gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
`beizhu` longtext DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '订单进度';
-- Data of table `dingdanjindu` --
INSERT INTO `dingdanjindu` (`id`, `addtime`, `yifuleixing`, `yifushuliang`, `dangqianjindu`, `dianjiazhanghao`, `dianjiaxingming`, `shoujihaoma`, `gukezhanghao`, `gukexingming`, `gengxinshijian`, `beizhu`) VALUES
(1, '2025-01-12 16:13:57', '衣服类型1', '衣服数量1', '未完成', '店家账号1', '店家姓名1', '手机号码1', '顾客账号1', '顾客姓名1', '2025-01-12 16:13:57', '备注1'),
(2, '2025-01-12 16:13:57', '衣服类型2', '衣服数量2', '未完成', '店家账号2', '店家姓名2', '手机号码2', '顾客账号2', '顾客姓名2', '2025-01-12 16:13:57', '备注2'),
(3, '2025-01-12 16:13:57', '衣服类型3', '衣服数量3', '未完成', '店家账号3', '店家姓名3', '手机号码3', '顾客账号3', '顾客姓名3', '2025-01-12 16:13:57', '备注3'),
(4, '2025-01-12 16:13:57', '衣服类型4', '衣服数量4', '未完成', '店家账号4', '店家姓名4', '手机号码4', '顾客账号4', '顾客姓名4', '2025-01-12 16:13:57', '备注4'),
(5, '2025-01-12 16:13:58', '衣服类型5', '衣服数量5', '未完成', '店家账号5', '店家姓名5', '手机号码5', '顾客账号5', '顾客姓名5', '2025-01-12 16:13:58', '备注5'),
(6, '2025-01-12 16:13:58', '衣服类型6', '衣服数量6', '未完成', '店家账号6', '店家姓名6', '手机号码6', '顾客账号6', '顾客姓名6', '2025-01-12 16:13:58', '备注6');

-- Table structure for table `dingdanxinxi` --
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
`yifushuliang` varchar(200) DEFAULT NULL COMMENT '衣服数量',
`dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
`dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
`gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
`gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
`jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
`zhifupingzheng` varchar(200) DEFAULT NULL COMMENT '支付凭证',
`beizhu` longtext DEFAULT NULL COMMENT '备注',
`sfsh` varchar(200) DEFAULT NULL DEFAULT '否' COMMENT '是否审核',
`shhf` longtext DEFAULT NULL COMMENT '审核回复'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '订单信息';
-- Data of table `dingdanxinxi` --
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `yifuleixing`, `yifushuliang`, `dianjiazhanghao`, `dianjiaxingming`, `gukezhanghao`, `gukexingming`, `jiatingdizhi`, `zhifupingzheng`, `beizhu`, `sfsh`, `shhf`) VALUES
(1, '2025-01-12 16:13:58', '衣服类型1', '衣服数量1', '店家账号1', '店家姓名1', '顾客账号1', '顾客姓名1', '家庭地址1', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng1.jpg', '备注1', '是', ''),
(2, '2025-01-12 16:13:58', '衣服类型2', '衣服数量2', '店家账号2', '店家姓名2', '顾客账号2', '顾客姓名2', '家庭地址2', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng2.jpg', '备注2', '是', ''),
(3, '2025-01-12 16:13:58', '衣服类型3', '衣服数量3', '店家账号3', '店家姓名3', '顾客账号3', '顾客姓名3', '家庭地址3', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng3.jpg', '备注3', '是', ''),
(4, '2025-01-12 16:13:58', '衣服类型4', '衣服数量4', '店家账号4', '店家姓名4', '顾客账号4', '顾客姓名4', '家庭地址4', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng4.jpg', '备注4', '是', ''),
(5, '2025-01-12 16:13:58', '衣服类型5', '衣服数量5', '店家账号5', '店家姓名5', '顾客账号5', '顾客姓名5', '家庭地址5', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng5.jpg', '备注5', '是', ''),
(6, '2025-01-12 16:13:58', '衣服类型6', '衣服数量6', '店家账号6', '店家姓名6', '顾客账号6', '顾客姓名6', '家庭地址6', 'http://localhost:8080/xiyidian/upload/dingdanxinxi_zhifupingzheng6.jpg', '备注6', '是', '');

-- Table structure for table `discussdianpuxinxi` --
DROP TABLE IF EXISTS `discussdianpuxinxi`;
CREATE TABLE `discussdianpuxinxi` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`refid` bigint NOT NULL COMMENT '关联表id',
`userid` bigint NOT NULL COMMENT '用户id',
`nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
`content` longtext NOT NULL COMMENT '评论内容',
`reply` longtext DEFAULT NULL COMMENT '回复内容'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '店铺信息评论表';
-- Data of table `discussdianpuxinxi` --
INSERT INTO `discussdianpuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
(1, '2025-01-12 16:13:58', 1, 1, '用户名1', '评论内容1', '回复内容1'),
(2, '2025-01-12 16:13:58', 2, 2, '用户名2', '评论内容2', '回复内容2'),
(3, '2025-01-12 16:13:58', 3, 3, '用户名3', '评论内容3', '回复内容3'),
(4, '2025-01-12 16:13:58', 4, 4, '用户名4', '评论内容4', '回复内容4'),
(5, '2025-01-12 16:13:58', 5, 5, '用户名5', '评论内容5', '回复内容5'),
(6, '2025-01-12 16:13:58', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- Table structure for table `forum` --
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
`content` longtext NOT NULL COMMENT '帖子内容',
`parentid` bigint DEFAULT NULL COMMENT '父节点id',
`userid` bigint NOT NULL COMMENT '用户id',
`username` varchar(200) DEFAULT NULL COMMENT '用户名',
`isdone` varchar(200) DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '交流区';
-- Data of table `forum` --
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
(1, '2025-01-12 16:13:58', '测试帖子', '<p><img src="http://localhost:8080/xiyidian/upload/1618384101964.jpg">帖子内容1</p>', 1, 1, '用户名1', '开放'),
(2, '2025-01-12 16:13:58', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
(3, '2025-01-12 16:13:58', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
(4, '2025-01-12 16:13:58', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
(5, '2025-01-12 16:13:58', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
(6, '2025-01-12 16:13:58', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放');

-- Table structure for table `guke` --
DROP TABLE IF EXISTS `guke`;
CREATE TABLE `guke` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gukezhanghao` varchar(200) NOT NULL COMMENT '顾客账号',
`mima` varchar(200) NOT NULL COMMENT '密码',
`gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
`xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
`shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
`jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
`gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '顾客';
-- Data of table `guke` --
INSERT INTO `guke` (`id`, `addtime`, `gukezhanghao`, `mima`, `gukexingming`, `xingbie`, `shoujihaoma`, `jiatingdizhi`, `gerenzhaopian`) VALUES
(1, '2025-01-12 16:13:58', '顾客1', '123456', '顾客姓名1', '男', '13823888881', '家庭地址1', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian1.jpg'),
(2, '2025-01-12 16:13:58', '顾客2', '123456', '顾客姓名2', '男', '13823888882', '家庭地址2', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian2.jpg'),
(3, '2025-01-12 16:13:58', '顾客3', '123456', '顾客姓名3', '男', '13823888883', '家庭地址3', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian3.jpg'),
(4, '2025-01-12 16:13:58', '顾客4', '123456', '顾客姓名4', '男', '13823888884', '家庭地址4', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian4.jpg'),
(5, '2025-01-12 16:13:58', '顾客5', '123456', '顾客姓名5', '男', '13823888885', '家庭地址5', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian5.jpg'),
(6, '2025-01-12 16:13:58', '顾客6', '123456', '顾客姓名6', '男', '13823888886', '家庭地址6', 'http://localhost:8080/xiyidian/upload/guke_gerenzhaopian6.jpg');

-- Table structure for table `news` --
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`title` varchar(200) NOT NULL COMMENT '标题',
`introduction` longtext DEFAULT NULL COMMENT '简介',
`picture` varchar(200) NOT NULL COMMENT '图片',
`content` longtext NOT NULL COMMENT '内容'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '系统公告';
-- Data of table `news` --
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
(1, '2025-01-12 16:13:58', '标题1', '简介1', 'http://localhost:8080/xiyidian/upload/news_picture1.jpg', '内容1'),
(2, '2025-01-12 16:13:58', '标题2', '简介2', 'http://localhost:8080/xiyidian/upload/news_picture2.jpg', '内容2'),
(3, '2025-01-12 16:13:58', '标题3', '简介3', 'http://localhost:8080/xiyidian/upload/news_picture3.jpg', '内容3'),
(4, '2025-01-12 16:13:58', '标题4', '简介4', 'http://localhost:8080/xiyidian/upload/news_picture4.jpg', '内容4'),
(5, '2025-01-12 16:13:58', '标题5', '简介5', 'http://localhost:8080/xiyidian/upload/news_picture5.jpg', '内容5'),
(6, '2025-01-12 16:13:58', '标题6', '简介6', 'http://localhost:8080/xiyidian/upload/news_picture6.jpg', '内容6');

-- Table structure for table `storeup` --
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`userid` bigint NOT NULL COMMENT '用户id',
`refid` bigint DEFAULT NULL COMMENT '收藏id',
`tablename` varchar(200) DEFAULT NULL COMMENT '表名',
`name` varchar(200) NOT NULL COMMENT '收藏名称',
`picture` varchar(200) NOT NULL COMMENT '收藏图片'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '收藏表';
-- Data of table `storeup` --

-- Table structure for table `token` --
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`userid` bigint NOT NULL COMMENT '用户id',
`username` varchar(100) NOT NULL COMMENT '用户名',
`tablename` varchar(100) DEFAULT NULL COMMENT '表名',
`role` varchar(100) DEFAULT NULL COMMENT '角色',
`token` varchar(200) NOT NULL COMMENT '密码',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
`expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT 'token表';
-- Data of table `token` --

-- Table structure for table `users` --
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`username` varchar(100) NOT NULL COMMENT '用户名',
`password` varchar(100) NOT NULL COMMENT '密码',
`role` varchar(100) DEFAULT NULL DEFAULT '管理员' COMMENT '角色',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '用户表';
-- Data of table `users` --
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
(1, 'admin', 'admin', '管理员', '2025-01-12 16:13:58');

-- Table structure for table `xiyixinxi` --
DROP TABLE IF EXISTS `xiyixinxi`;
CREATE TABLE `xiyixinxi` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
`dianpuzhaopian` varchar(200) DEFAULT NULL COMMENT '店铺照片',
`yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型',
`yifushuliang` int DEFAULT NULL COMMENT '衣服数量',
`dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
`dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
`gukezhanghao` varchar(200) DEFAULT NULL COMMENT '顾客账号',
`gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
`beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
`sfsh` varchar(200) DEFAULT NULL DEFAULT '否' COMMENT '是否审核',
`shhf` longtext DEFAULT NULL COMMENT '审核回复'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '洗衣信息';
-- Data of table `xiyixinxi` --
INSERT INTO `xiyixinxi` (`id`, `addtime`, `dianpumingcheng`, `dianpuzhaopian`, `yifuleixing`, `yifushuliang`, `dianjiazhanghao`, `dianjiaxingming`, `gukezhanghao`, `gukexingming`, `beizhu`, `sfsh`, `shhf`) VALUES
(1, '2025-01-12 16:13:58', '店铺名称1', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian1.jpg', '衣服类型1', 1, '店家账号1', '店家姓名1', '顾客账号1', '顾客姓名1', '备注1', '是', ''),
(2, '2025-01-12 16:13:58', '店铺名称2', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian2.jpg', '衣服类型2', 2, '店家账号2', '店家姓名2', '顾客账号2', '顾客姓名2', '备注2', '是', ''),
(3, '2025-01-12 16:13:58', '店铺名称3', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian3.jpg', '衣服类型3', 3, '店家账号3', '店家姓名3', '顾客账号3', '顾客姓名3', '备注3', '是', ''),
(4, '2025-01-12 16:13:58', '店铺名称4', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian4.jpg', '衣服类型4', 4, '店家账号4', '店家姓名4', '顾客账号4', '顾客姓名4', '备注4', '是', ''),
(5, '2025-01-12 16:13:58', '店铺名称5', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian5.jpg', '衣服类型5', 5, '店家账号5', '店家姓名5', '顾客账号5', '顾客姓名5', '备注5', '是', ''),
(6, '2025-01-12 16:13:58', '店铺名称6', 'http://localhost:8080/xiyidian/upload/xiyixinxi_dianpuzhaopian6.jpg', '衣服类型6', 6, '店家账号6', '店家姓名6', '顾客账号6', '顾客姓名6', '备注6', '是', '');

-- Table structure for table `yifuleixing` --
DROP TABLE IF EXISTS `yifuleixing`;
CREATE TABLE `yifuleixing` (
`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
`addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`yifuleixing` varchar(200) DEFAULT NULL COMMENT '衣服类型'
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC COMMENT '衣服类型';
-- Data of table `yifuleixing` --
INSERT INTO `yifuleixing` (`id`, `addtime`, `yifuleixing`) VALUES
(1, '2025-01-12 16:13:58', '衣服类型1'),
(2, '2025-01-12 16:13:58', '衣服类型2'),
(3, '2025-01-12 16:13:58', '衣服类型3'),
(4, '2025-01-12 16:13:58', '衣服类型4'),
(5, '2025-01-12 16:13:58', '衣服类型5'),
(6, '2025-01-12 16:13:58', '衣服类型6');
