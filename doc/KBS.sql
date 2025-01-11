/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : lib

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-02 17:51:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `classification_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `classification_name` varchar(100) NOT NULL COMMENT '类别名称',
  `classification_brief` text COMMENT '类别简介',
  `classification_picture` varchar(255) DEFAULT NULL COMMENT '类别表示图片',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点',
  `parent_path` varchar(200) DEFAULT NULL COMMENT '父节点路径',
  PRIMARY KEY (`classification_id`),
  KEY `classification_ibfk_1` (`parent_id`),
  CONSTRAINT `classification_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `classification` (`classification_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '软件工程', '软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。', 'rjgc', null, null);
INSERT INTO `classification` VALUES ('29', '计算机基础', '介绍了计算机的各种硬件和软件知识，并以简单易学的方法，把计算机理论知识与实际应用巧妙结合起来，为读者认识计算机，进一步学习计算机软硬件知识打下坚实基础。', '3397c7f6-b16a-4d10-af21-a57a6db1d72b', '1', '1');
INSERT INTO `classification` VALUES ('30', '程序语言', '编程语言（programming language），是用来定义计算机程序的形式语言。它是一种被标准化的交流技巧，用来向计算机发出指令。一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。', '8c67ffd0-d9ff-4215-8924-ab3509a857ff', '1', '1');
INSERT INTO `classification` VALUES ('32', '数据结构', '数据结构是计算机存储、组织数据的方式。数据结构是指相互之间存在一种或多种特定关系的数据元素的集合。通常情况下，精心选择的数据结构可以带来更高的运行或者存储效率。数据结构往往同高效的检索算法和索引技术有关。', '5b193c09-1174-47bf-9a33-ce8220d86309', '1', '1');
INSERT INTO `classification` VALUES ('33', '算法', '算法（Algorithm）是指解题方案的准确而完整的描述，是一系列解决问题的清晰指令，算法代表着用系统的方法描述解决问题的策略机制。也就是说，能够对一定规范的输入，在有限时间内获得所要求的输出。如果一个算法有缺陷，或不适合于某个问题，执行这个算法将不会解决这个问题。不同的算法可能用不同的时间、空间或效率来完成同样的任务。一个算法的优劣可以用空间复杂度与时间复杂度来衡量。', 'c59b39a2-9e7f-4977-be47-072e749a5a3e', '1', '1');
INSERT INTO `classification` VALUES ('34', 'C语言', 'C语言是一门通用计算机编程语言，应用广泛。C语言的设计目标是提供一种能以简易的方式编译、处理低级存储器、产生少量的机器码以及不需要任何运行环境支持便能运行的编程语言。', 'eb319661-5bd7-4aa3-bf7f-262f1a45341f', '30', '1.30');
INSERT INTO `classification` VALUES ('35', 'Java', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', '67a18fd9-e5fd-4521-9b61-b500aa23e501', '30', '1.30');
INSERT INTO `classification` VALUES ('37', '链表', '链表是一种物理存储单元上非连续、非顺序的存储结构，数据元素的逻辑顺序是通过链表中的指针链接次序实现的。链表由一系列结点（链表中每一个元素称为结点）组成，结点可以在运行时动态生成。每个结点包括两个部分：一个是存储数据元素的数据域，另一个是存储下一个结点地址的指针域。 相比于线性表顺序结构，操作复杂。由于不必须按顺序存储，链表在插入的时候可以达到O(1)的复杂度，比另一种线性表顺序表快得多，但是查找一个节点或者访问特定编号的节点则需要O(n)的时间，而线性表和顺序表相应的时间复杂度分别是O(logn)和O(1)。', 'eaa1132f-7491-42ea-b846-d005201f0ff1', '32', '1.32');
INSERT INTO `classification` VALUES ('38', '栈', '栈（stack）又名堆栈，它是一种运算受限的线性表。其限制是仅允许在表的一端进行插入和删除运算。这一端被称为栈顶，相对地，把另一端称为栈底。向一个栈插入新元素又称作进栈、入栈或压栈，它是把新元素放到栈顶元素的上面，使之成为新的栈顶元素；从一个栈删除元素又称作出栈或退栈，它是把栈顶元素删除掉，使其相邻的元素成为新的栈顶元素。', '41278d26-ebc7-4263-aae4-43f3ed554e3c', '32', '1.32');
INSERT INTO `classification` VALUES ('40', '图', '图是一种复杂的非线性结构。\n在线性结构中，数据元素之间满足唯一的线性关系，每个数据元素(除第一个和最后一个外)只有一个直接前趋和一个直接后继；\n在树形结构中，数据元素之间有着明显的层次关系，并且每个数据元素只与上一层中的一个元素(双亲节点)及下一层的多个元素(孩子节点)相关；\n而在图形结构中，节点之间的关系是任意的，图中任意两个数据元素之间都有可能相关。\n图G由两个集合V(顶点Vertex)和E(边Edge)组成，定义为G=(V，E)', '37f2b1fc-26b7-4200-8de9-599858d88950', '32', '1.32');
INSERT INTO `classification` VALUES ('41', '树', '树状图是一种数据结构，它是由n（n>=1）个有限节点组成一个具有层次关系的集合。把它叫做“树”是因为它看起来像一棵倒挂的树，也就是说它是根朝上，而叶朝下的。它具有以下的特点：\n每个节点有零个或多个子节点；没有父节点的节点称为根节点；每一个非根节点有且只有一个父节点；除了根节点外，每个子节点可以分为多个不相交的子树；', 'b40e932a-b0ff-474c-9766-5c7abf40f14e', '32', '1.32');
INSERT INTO `classification` VALUES ('42', '二叉树', '在计算机科学中，二叉树是每个节点最多有两个子树的树结构。通常子树被称作“左子树”（left subtree）和“右子树”（right subtree）。二叉树常被用于实现二叉查找树和二叉堆。', 'ea4404d8-7eae-4dd7-b241-c6c4c99d943d', '41', '1.32.41');
INSERT INTO `classification` VALUES ('43', '红黑树', '红黑树（Red Black Tree） 是一种自平衡二叉查找树，是在计算机科学中用到的一种数据结构，典型的用途是实现关联数组。', 'b45c4d14-7904-4138-be93-7d41de5bb0d4', '41', '1.32.41');
INSERT INTO `classification` VALUES ('50', '指针', null, null, '34', '1.30.34');
INSERT INTO `classification` VALUES ('51', '结构体', null, null, '34', '1.30.34');
INSERT INTO `classification` VALUES ('52', '平衡', null, null, '41', '1.32.41');

-- ----------------------------
-- Table structure for click_info
-- ----------------------------
DROP TABLE IF EXISTS `click_info`;
CREATE TABLE `click_info` (
  `click_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '点击数据编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `file_id` bigint(20) NOT NULL COMMENT '文档id',
  `click_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '点击时间',
  PRIMARY KEY (`click_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `click_info_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `file_info` (`file_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=750 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of click_info
-- ----------------------------
INSERT INTO `click_info` VALUES ('581', '2016170', '325114', '2016-11-01 08:19:13');
INSERT INTO `click_info` VALUES ('582', '2016170', '325115', '2016-11-01 08:20:03');
INSERT INTO `click_info` VALUES ('583', '2016170', '325114', '2016-11-04 08:12:10');
INSERT INTO `click_info` VALUES ('584', '2016172', '325114', '2016-11-22 08:14:37');
INSERT INTO `click_info` VALUES ('587', '2016172', '325114', '2016-11-22 08:18:06');
INSERT INTO `click_info` VALUES ('603', '2016172', '325115', '2016-12-09 08:52:07');
INSERT INTO `click_info` VALUES ('643', '2016172', '325114', '2017-02-28 15:40:32');
INSERT INTO `click_info` VALUES ('653', '2016172', '325114', '2017-03-03 14:44:25');
INSERT INTO `click_info` VALUES ('661', '2016172', '325115', '2017-03-17 14:11:29');
INSERT INTO `click_info` VALUES ('665', '2016172', '325149', '2017-03-17 14:32:59');
INSERT INTO `click_info` VALUES ('671', '2016172', '325151', '2017-03-17 14:36:10');
INSERT INTO `click_info` VALUES ('672', '2016172', '325152', '2017-03-17 14:37:32');
INSERT INTO `click_info` VALUES ('674', '2016172', '325153', '2017-03-17 17:21:07');
INSERT INTO `click_info` VALUES ('679', '2016172', '325155', '2017-03-17 17:30:22');
INSERT INTO `click_info` VALUES ('680', '2016172', '325155', '2017-03-17 17:30:41');
INSERT INTO `click_info` VALUES ('681', '2016172', '325155', '2017-03-18 15:10:34');
INSERT INTO `click_info` VALUES ('682', '2016172', '325115', '2017-03-18 15:11:06');
INSERT INTO `click_info` VALUES ('683', '2016172', '325149', '2017-03-20 13:04:26');
INSERT INTO `click_info` VALUES ('684', '2016172', '325153', '2017-03-20 13:10:43');
INSERT INTO `click_info` VALUES ('685', '2016172', '325157', '2017-03-20 13:12:22');
INSERT INTO `click_info` VALUES ('687', '2016172', '325114', '2017-03-20 14:14:50');
INSERT INTO `click_info` VALUES ('688', '2016172', '325114', '2017-03-20 14:15:12');
INSERT INTO `click_info` VALUES ('689', '2016172', '325159', '2017-03-20 14:15:58');
INSERT INTO `click_info` VALUES ('690', '2016172', '325156', '2017-03-20 14:17:15');
INSERT INTO `click_info` VALUES ('691', '2016172', '325153', '2017-03-20 14:17:52');
INSERT INTO `click_info` VALUES ('692', '2016172', '325115', '2017-03-20 14:18:49');
INSERT INTO `click_info` VALUES ('693', '2016172', '325160', '2017-03-20 14:19:03');
INSERT INTO `click_info` VALUES ('695', '2016172', '325151', '2017-03-24 14:27:36');
INSERT INTO `click_info` VALUES ('696', '2016172', '325152', '2017-03-24 14:53:47');
INSERT INTO `click_info` VALUES ('700', '2016172', '325163', '2017-03-24 14:59:56');
INSERT INTO `click_info` VALUES ('702', '2016172', '325166', '2017-03-24 15:01:03');
INSERT INTO `click_info` VALUES ('703', '2016172', '325167', '2017-03-24 15:04:49');
INSERT INTO `click_info` VALUES ('704', '2016172', '325167', '2017-03-24 15:05:22');
INSERT INTO `click_info` VALUES ('705', '2016172', '325168', '2017-03-24 15:07:11');
INSERT INTO `click_info` VALUES ('706', '2016172', '325168', '2017-03-24 15:07:30');
INSERT INTO `click_info` VALUES ('708', '2016172', '325170', '2017-03-24 15:11:05');
INSERT INTO `click_info` VALUES ('709', '2016172', '325170', '2017-03-24 15:11:23');
INSERT INTO `click_info` VALUES ('710', '2016172', '325170', '2017-03-24 15:11:55');
INSERT INTO `click_info` VALUES ('711', '2016172', '325153', '2017-03-24 15:12:19');
INSERT INTO `click_info` VALUES ('712', '2016172', '325171', '2017-03-24 15:16:55');
INSERT INTO `click_info` VALUES ('713', '2016172', '325171', '2017-03-24 15:17:13');
INSERT INTO `click_info` VALUES ('714', '2016172', '325172', '2017-03-24 15:18:36');
INSERT INTO `click_info` VALUES ('715', '2016172', '325114', '2017-03-24 16:01:24');
INSERT INTO `click_info` VALUES ('716', '2016172', '325115', '2017-03-25 13:03:05');
INSERT INTO `click_info` VALUES ('718', '2016172', '325176', '2017-03-25 13:11:55');
INSERT INTO `click_info` VALUES ('719', '2016172', '325176', '2017-03-25 13:12:01');
INSERT INTO `click_info` VALUES ('720', '2016172', '325174', '2017-03-25 13:12:55');
INSERT INTO `click_info` VALUES ('721', '2016172', '325170', '2017-03-25 13:18:52');
INSERT INTO `click_info` VALUES ('722', '2016172', '325170', '2017-03-25 13:55:17');
INSERT INTO `click_info` VALUES ('723', '2016172', '325166', '2017-03-25 13:55:26');
INSERT INTO `click_info` VALUES ('724', '2016172', '325152', '2017-03-25 13:55:51');
INSERT INTO `click_info` VALUES ('725', '2016172', '325155', '2017-03-25 13:57:18');
INSERT INTO `click_info` VALUES ('726', '2016172', '325177', '2017-03-25 13:58:22');
INSERT INTO `click_info` VALUES ('727', '2016172', '325179', '2017-03-25 13:58:29');
INSERT INTO `click_info` VALUES ('728', '2016172', '325178', '2017-03-25 13:58:39');
INSERT INTO `click_info` VALUES ('729', '2016172', '325178', '2017-03-25 13:58:42');
INSERT INTO `click_info` VALUES ('730', '2016172', '325178', '2017-03-25 13:59:21');
INSERT INTO `click_info` VALUES ('731', '2016172', '325180', '2017-03-25 14:02:48');
INSERT INTO `click_info` VALUES ('732', '2016172', '325170', '2017-03-25 14:03:05');
INSERT INTO `click_info` VALUES ('733', '2016172', '325166', '2017-04-11 17:36:21');
INSERT INTO `click_info` VALUES ('734', '2016172', '325178', '2017-04-11 17:36:47');
INSERT INTO `click_info` VALUES ('735', '2016172', '325155', '2017-04-11 17:36:51');
INSERT INTO `click_info` VALUES ('736', '2016172', '325167', '2017-04-11 17:37:14');
INSERT INTO `click_info` VALUES ('737', '2016172', '325181', '2017-04-11 17:38:04');
INSERT INTO `click_info` VALUES ('738', '2016172', '325181', '2017-04-11 17:38:36');
INSERT INTO `click_info` VALUES ('740', '2016172', '325166', '2017-04-11 17:42:35');
INSERT INTO `click_info` VALUES ('741', '2016172', '325155', '2017-04-11 17:42:51');
INSERT INTO `click_info` VALUES ('742', '2016172', '325186', '2017-04-11 17:44:24');
INSERT INTO `click_info` VALUES ('743', '2016172', '325187', '2017-04-11 17:44:56');
INSERT INTO `click_info` VALUES ('744', '2016172', '325167', '2017-04-11 17:44:59');
INSERT INTO `click_info` VALUES ('745', '2016172', '325166', '2017-04-11 17:50:29');
INSERT INTO `click_info` VALUES ('746', '2016172', '325155', '2017-04-11 17:51:15');
INSERT INTO `click_info` VALUES ('747', '2016172', '325188', '2017-04-11 17:52:02');
INSERT INTO `click_info` VALUES ('748', '2016172', '325190', '2017-04-11 17:52:41');
INSERT INTO `click_info` VALUES ('749', '2016172', '325191', '2017-04-21 16:03:16');

-- ----------------------------
-- Table structure for doc_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_info`;
CREATE TABLE `doc_info` (
  `doc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件夹id',
  `doc_user_id` bigint(20) NOT NULL COMMENT '用户id',
  `doc_name` varchar(100) DEFAULT '' COMMENT '文件夹名称',
  `doc_biref` varchar(255) DEFAULT NULL COMMENT '文件夹简介',
  `doc_create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '文件夹创建时间',
  PRIMARY KEY (`doc_id`),
  KEY `doc_user_id` (`doc_user_id`),
  CONSTRAINT `doc_info_ibfk_1` FOREIGN KEY (`doc_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc_info
-- ----------------------------
INSERT INTO `doc_info` VALUES ('5', '2016172', '我的收藏', null, '2016-11-22 08:30:29');

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_size` bigint(20) DEFAULT '0' COMMENT '文件大小',
  `file_ext` varchar(10) DEFAULT NULL COMMENT '文件后缀(类型)',
  `file_brief` text COMMENT '文件简介',
  `file_user_id` bigint(20) DEFAULT NULL COMMENT '上传用户id',
  `file_uuid` varchar(255) NOT NULL COMMENT '文件唯一编码uuid',
  `file_path` varchar(255) NOT NULL COMMENT '文件路径',
  `file_state` int(5) DEFAULT '0' COMMENT '文件状态：0未上传，1处理失败，2已经上传，3处理文件中，4审核中，5上传成功所有人可以查看，6上传成功私有，7文件被冻结锁定',
  `file_class_id` bigint(20) DEFAULT NULL COMMENT '文件种类id',
  `file_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '文件上传时间',
  PRIMARY KEY (`file_id`),
  KEY `file_user_id` (`file_user_id`),
  KEY `file_class_id` (`file_class_id`),
  CONSTRAINT `file_info_ibfk_1` FOREIGN KEY (`file_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `file_info_ibfk_2` FOREIGN KEY (`file_class_id`) REFERENCES `classification` (`classification_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=325192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('325114', '3_毕业设计_正文模板', '261120', 'doc', '[1.1 正文格式（二级标题）, 2.3 XXXXXX(二级标题), 2.1.1 XXXXXX （三级标题）]', null, '5a565987-21fb-4a0b-873a-94f21163c237', 'users/2016170/files/5a565987-21fb-4a0b-873a-94f21163c237', '5', '1', '2016-11-01 08:19:45');
INSERT INTO `file_info` VALUES ('325115', '员工引导手册', '748273', 'pdf', '[HR 会将域账号、邮箱、公司班车等信息发送至新员工, 4.1 新员工工作所需配备的 IT 设备由 HR 统一发放, 2.2 当月 15 日（含）前离职的员工]', null, 'a96253fb-65af-4d6a-8529-adb660690e36', 'users/2016170/files/a96253fb-65af-4d6a-8529-adb660690e36', '5', '1', '2016-11-01 08:19:32');
INSERT INTO `file_info` VALUES ('325149', '松鼠', '152336', 'jpg', '', '2016172', 'dc21fb55-a49f-4af7-8a5a-6f4f169cf175', 'users/2016172/files/dc21fb55-a49f-4af7-8a5a-6f4f169cf175', '5', '33', '2017-03-20 13:04:00');
INSERT INTO `file_info` VALUES ('325151', 'JDBC_调用函数&存储过程', '26169010', 'wmv', '', '2016172', '734d4ef6-457d-4861-9d2b-dae948f431b0', 'users/2016172/files/734d4ef6-457d-4861-9d2b-dae948f431b0', '5', '1', '2017-03-20 13:03:27');
INSERT INTO `file_info` VALUES ('325152', '王力宏-[心跳].MV[高清完美版]_标清', '7949639', 'flv', '', '2016172', '3de7e754-63c5-4a91-8d65-6cd374af2933', 'users/2016172/files/3de7e754-63c5-4a91-8d65-6cd374af2933', '5', '1', '2017-03-20 13:03:37');
INSERT INTO `file_info` VALUES ('325153', '0093_俞育峰_2017-03-13', '29184', 'xls', '[pc中车票的分离, pc中busticket分离, wap中车票的分离]', '2016172', 'a5a6c7d1-830f-4345-80cb-add0e7fe0db7', 'users/2016172/files/a5a6c7d1-830f-4345-80cb-add0e7fe0db7', '5', '1', '2017-03-20 13:03:21');
INSERT INTO `file_info` VALUES ('325155', '俞育峰_知识库管理系统的设计与实现三稿', '2680672', 'docx', '[多功能文件检索模块是用户获取知识文档的的模块, 系统中主要有文档信息、相关文件、用户信息、用户, 本系统功能包含登录注册模块、知识导入模块、知识收藏模块、消息管理模块、]', '2016172', '8562e80c-0646-474f-b43e-3c73dadb2116', 'users/2016172/files/8562e80c-0646-474f-b43e-3c73dadb2116', '5', '1', '2017-03-17 17:30:48');
INSERT INTO `file_info` VALUES ('325156', 'SOKLIB知识库管理系统', '93886008', 'pptx', '[对知识文档分段提取关键词, 演绎知识（智能提取）, &uuml;智能提取 - 提取知识点过程]', '2016172', 'fcde9242-101f-41f2-91f2-a73a1a4759cc', 'users/2016172/files/fcde9242-101f-41f2-91f2-a73a1a4759cc', '6', '1', '2017-03-20 13:10:16');
INSERT INTO `file_info` VALUES ('325157', '吉首大学', '19949', 'pdf', '[״ѧJishou Universityơ]', '2016172', '101be26a-8ec4-4382-a0e9-83a28da65b54', 'users/2016172/files/101be26a-8ec4-4382-a0e9-83a28da65b54', '5', '1', '2017-03-20 13:12:20');
INSERT INTO `file_info` VALUES ('325159', '你好啊', '3247', 'pdf', '[hehei]', '2016172', '62699a41-d9d7-4bb6-b96d-21896042f227', 'users/2016172/files/62699a41-d9d7-4bb6-b96d-21896042f227', '5', '1', '2017-03-20 14:16:09');
INSERT INTO `file_info` VALUES ('325160', 'lib_start', '15', 'bat', '[run]', '2016172', 'ce1d15fe-cb55-4b35-921f-72e82a1ce4c4', 'users/2016172/files/ce1d15fe-cb55-4b35-921f-72e82a1ce4c4', '5', '1', '2017-03-20 14:19:19');
INSERT INTO `file_info` VALUES ('325163', '二叉树图片', '5865', 'jpg', '', '2016172', 'bfb54969-e48a-4692-a3b2-c00327fec894', 'users/2016172/files/bfb54969-e48a-4692-a3b2-c00327fec894', '5', '1', '2017-03-24 14:57:43');
INSERT INTO `file_info` VALUES ('325166', '二叉树概念', '18043', 'docx', '[结点的子树的根称为该结点的孩子, 以某结点为根的子树中, 其结点有左右子树之分]', '2016172', '7a217254-6408-4fa1-96c5-04ae7961228e', 'users/2016172/files/7a217254-6408-4fa1-96c5-04ae7961228e', '5', '42', '2017-03-24 15:26:29');
INSERT INTO `file_info` VALUES ('325167', '二叉树概念', '3464', 'txt', '[而二叉树的结点有左、右之分, (5)有N个结点的完全二叉树各结点如果用顺序方式存储, (2)满二叉树&amp;mdash;&amp;mdash;除了叶结点外每一个结点都有左右子叶且叶子结点都处在最底层的二叉树]', '2016172', '894f5d64-b109-4dee-91ce-880213096bd4', 'users/2016172/files/894f5d64-b109-4dee-91ce-880213096bd4', '5', '1', '2017-03-24 15:05:02');
INSERT INTO `file_info` VALUES ('325168', '关于二叉树的几种遍历方法', '84891', 'docx', '[通过出栈访问来遍历二叉树, 创建了如下结构的二叉树, 遍历左子树]', '2016172', '2766ff5f-35d5-454b-b231-cb5df9541e8a', 'users/2016172/files/2766ff5f-35d5-454b-b231-cb5df9541e8a', '5', '1', '2017-03-24 15:07:28');
INSERT INTO `file_info` VALUES ('325170', '链表的概念', '1631', 'txt', '[数据元素的逻辑顺序是通过链表中的指针链接次序实现的, 数据的存取往往要在不同的排列顺序中转换, 相比于线性表顺序结构]', '2016172', '00505279-fb86-4654-b13c-a2e82aa343c9', 'users/2016172/files/00505279-fb86-4654-b13c-a2e82aa343c9', '5', '37', '2017-03-24 15:11:03');
INSERT INTO `file_info` VALUES ('325171', '吉首大学本科生获得毕业证书和学位证书条件 ', '14931', 'docx', '[英语折算成绩=（四级成绩/7.1+四个学期大学英语平均分）/2, 语折算成绩=（四级成绩/5.33+专升本英语）/2, 专升本学生英语四级成绩 325分以上]', '2016172', 'ff4f5814-7a52-4704-82b5-a2a45861c140', 'users/2016172/files/ff4f5814-7a52-4704-82b5-a2a45861c140', '5', '1', '2017-03-24 15:17:11');
INSERT INTO `file_info` VALUES ('325172', '链表的操作', '42984', 'docx', '[----&amp;gt;[1]----&amp;gt;[NULL]（从原链表中取第 1 个节点作为只有一个节点的有序链表）, //让 head指向 p1节点, //p2指向链表的头节点]', '2016172', '1323e010-7f98-488a-85e5-b2707961ca57', 'users/2016172/files/1323e010-7f98-488a-85e5-b2707961ca57', '5', '1', '2017-03-24 15:18:34');
INSERT INTO `file_info` VALUES ('325173', '链表的演示', '25466', 'jpg', '链表的演示', '2016172', '41ca5bad-f6b5-4857-9cae-f9497d28fd4a', 'users/2016172/files/41ca5bad-f6b5-4857-9cae-f9497d28fd4a', '5', '1', '2017-03-24 15:19:58');
INSERT INTO `file_info` VALUES ('325174', '链表连接事例图', '24809', 'jpg', '链表连接事例图', '2016172', '651237cb-cda0-48d2-be9e-6a1ea35c99e6', 'users/2016172/files/651237cb-cda0-48d2-be9e-6a1ea35c99e6', '5', '1', '2017-03-24 15:22:44');
INSERT INTO `file_info` VALUES ('325176', 'test', '1412', 'pdf', '[测试]', '2016172', '05c5a60e-10ae-41d2-be22-bf7fc99518b5', 'users/2016172/files/05c5a60e-10ae-41d2-be22-bf7fc99518b5', '6', '1', '2017-03-25 13:11:47');
INSERT INTO `file_info` VALUES ('325177', '巴巴快巴分销接口规范', '1129984', 'doc', '[查询车次余票 3202001 无效的客运站 ID, sbId 必选 车次 ID, 查询订单 5.查询订单]', '2016172', '561990a8-65b8-4c19-ac09-ea5256e12459', 'users/2016172/files/561990a8-65b8-4c19-ac09-ea5256e12459', '6', '1', '2017-03-25 13:58:02');
INSERT INTO `file_info` VALUES ('325178', '2017届预计毕业生信息核对表（最后一次核对）', '1428992', 'xls', '[3481 20134206021 于浪 男 汉族 软件工程 500234199304088130 共青团员, 3498 20134206150 杨帆 男 汉族 软件工程 421087199501217619 共青团员, 3557 20134206040 徐文琴 女 汉族 软件工程 34292319941228552X 共青团员]', '2016172', '31972629-6d90-45c7-8912-efceaa8072b9', 'users/2016172/files/31972629-6d90-45c7-8912-efceaa8072b9', '5', '1', '2017-03-25 13:59:03');
INSERT INTO `file_info` VALUES ('325179', 'JDBC_调用函数&存储过程', '26169010', 'wmv', '', '2016172', '0a7871dc-553a-4691-a86f-859c7d3351df', 'users/2016172/files/0a7871dc-553a-4691-a86f-859c7d3351df', '6', '1', '2017-03-25 13:58:04');
INSERT INTO `file_info` VALUES ('325180', 'test', '32704', 'pdf', '[&amp;gt;[NULL]（原链表）head1-&amp;gt;next2-&amp;gt;nextn-&amp;gt;next----&amp;gt;[2]...----&amp;gt;[n]----&amp;gt;[NULL]（删除后链表）head2-, ----&amp;gt;[1]----&amp;gt;[3]----&amp;gt;[2]...----&amp;gt;[n]----&amp;gt;[NULL]（原链表）head1-&amp;gt;next3-, 节点24.structstudent*p1=NULL]', '2016172', 'cc5fd130-2af1-49c3-a0a1-67102b70c39b', 'users/2016172/files/cc5fd130-2af1-49c3-a0a1-67102b70c39b', '5', '32', '2017-03-25 14:02:46');
INSERT INTO `file_info` VALUES ('325181', '出发城市与接口对应表_20170124', '12265', 'xlsx', '[南通地区, 杭州地区, 内江地区]', '2016172', '5a34f936-5bff-483a-ac4f-8bd398a1e0ec', 'users/2016172/files/5a34f936-5bff-483a-ac4f-8bd398a1e0ec', '5', '1', '2017-04-11 17:38:16');
INSERT INTO `file_info` VALUES ('325184', '0093_俞育峰_2017-04-05', '29184', 'xls', '[pc端车票业务拆分、开发、打包跟踪测试, 准备1.8升级busticket、分销商开发打包跟踪测试, 开发 100%]', '2016172', '00cc6058-e8ab-46d7-a47d-3baa0d41bf74', 'users/2016172/files/00cc6058-e8ab-46d7-a47d-3baa0d41bf74', '6', '1', '2017-04-11 17:43:44');
INSERT INTO `file_info` VALUES ('325185', '汽车票测试用例_PC -', '20250', 'xlsx', '[购票成功 H 支付成功, 1、成功跳转到支付成功界面, 支付成功后提示购票]', '2016172', '0cb4ecb9-1453-48a1-bcd6-44aa23130b16', 'users/2016172/files/0cb4ecb9-1453-48a1-bcd6-44aa23130b16', '6', '1', '2017-04-11 17:43:44');
INSERT INTO `file_info` VALUES ('325186', '巴巴快巴分销接口规范', '1136640', 'doc', '[查询车次余票 3202001 无效的客运站 ID, sbId 必选 车次 ID, 查询订单 5.查询订单]', '2016172', '2145ca09-255c-4d28-aebc-5bdd7e0e15bc', 'users/2016172/files/2145ca09-255c-4d28-aebc-5bdd7e0e15bc', '5', '1', '2017-04-11 17:44:13');
INSERT INTO `file_info` VALUES ('325187', '测试', '8966', 'pdf', '[则其右儿子的结点编号为2*I+1, (4)具有n个结点的完全二叉树, 则其父结点的编号为I/2]', '2016172', 'd6c73a2f-55cd-48c4-8e0f-bcb3d47f824b', 'users/2016172/files/d6c73a2f-55cd-48c4-8e0f-bcb3d47f824b', '5', '1', '2017-04-11 17:44:53');
INSERT INTO `file_info` VALUES ('325188', '答辩时老师提出的问题_俞育峰', '14696', 'docx', '[系统在用户上传导入文档资源的时候, 用户在导入知识文档时, 系统会自动提取文档中的信息]', '2016172', 'd4d212c6-237b-4c9b-94ba-2e711aca21d1', 'users/2016172/files/d4d212c6-237b-4c9b-94ba-2e711aca21d1', '6', '1', '2017-04-11 17:51:58');
INSERT INTO `file_info` VALUES ('325189', 'note', '3', 'txt', '', '2016172', 'ef11e782-1e15-4304-95a4-a6a2b2e74787', 'users/2016172/files/ef11e782-1e15-4304-95a4-a6a2b2e74787', '6', '1', '2017-04-11 17:51:58');
INSERT INTO `file_info` VALUES ('325190', '演示', '8654', 'pdf', '[这就是完全二叉树, 但二叉树不是树的特殊情形[1]类型(1)完全二叉树&amp;mdash;&amp;mdash;若设, 其结点有左右子树之分]', '2016172', '0911afe8-2ab7-444a-9c4d-8fef749e9eed', 'users/2016172/files/0911afe8-2ab7-444a-9c4d-8fef749e9eed', '6', '1', '2017-04-11 17:52:40');
INSERT INTO `file_info` VALUES ('325191', '答辩时老师提出的问题_俞育峰', '14696', 'docx', '[系统在用户上传导入文档资源的时候, 用户在导入知识文档时, 系统会自动提取文档中的信息]', '2016172', '9d0ba1ef-fe3e-4f3c-aa50-8db85d2d4899', 'users/2016172/files/9d0ba1ef-fe3e-4f3c-aa50-8db85d2d4899', '6', '1', '2017-04-21 16:03:08');

-- ----------------------------
-- Table structure for file_score
-- ----------------------------
DROP TABLE IF EXISTS `file_score`;
CREATE TABLE `file_score` (
  `user_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `score` bigint(20) NOT NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_score
-- ----------------------------
INSERT INTO `file_score` VALUES ('2016001', '325025', '1', '2016-08-22 21:49:33');
INSERT INTO `file_score` VALUES ('2016001', '325026', '1', '2016-08-22 22:19:32');
INSERT INTO `file_score` VALUES ('2016001', '325036', '3', '2016-08-22 21:39:33');
INSERT INTO `file_score` VALUES ('2016001', '325048', '1', '2016-08-22 22:18:13');
INSERT INTO `file_score` VALUES ('2016001', '325051', '1', '2016-08-22 21:04:49');
INSERT INTO `file_score` VALUES ('2016001', '325052', '1', '2016-08-22 21:05:51');
INSERT INTO `file_score` VALUES ('2016001', '325053', '1', '2016-08-22 21:08:09');
INSERT INTO `file_score` VALUES ('2016001', '325054', '1', '2016-08-22 21:13:10');
INSERT INTO `file_score` VALUES ('2016001', '325055', '1', '2016-08-22 21:20:47');
INSERT INTO `file_score` VALUES ('2016001', '325056', '1', '2016-08-22 21:25:40');
INSERT INTO `file_score` VALUES ('2016001', '325057', '2', '2016-08-22 21:27:06');
INSERT INTO `file_score` VALUES ('2016001', '325058', '2', '2016-08-22 21:29:08');
INSERT INTO `file_score` VALUES ('2016001', '325061', '1', '2016-08-22 21:36:40');
INSERT INTO `file_score` VALUES ('2016001', '325069', '1', '2016-08-22 21:49:30');
INSERT INTO `file_score` VALUES ('2016001', '325083', '1', '2016-09-23 20:42:48');
INSERT INTO `file_score` VALUES ('2016001', '325097', '2', '2016-09-23 20:36:09');
INSERT INTO `file_score` VALUES ('2016001', '325100', '1', '2016-09-23 20:40:03');
INSERT INTO `file_score` VALUES ('2016001', '325102', '1', '2016-09-23 20:39:52');
INSERT INTO `file_score` VALUES ('2016001', '325107', '1', '2016-09-23 20:44:37');
INSERT INTO `file_score` VALUES ('2016001', '325109', '1', '2016-09-23 20:40:18');
INSERT INTO `file_score` VALUES ('2016144', '325026', '1', '2016-09-23 12:34:35');
INSERT INTO `file_score` VALUES ('2016144', '325036', '1', '2016-09-23 12:34:31');
INSERT INTO `file_score` VALUES ('2016144', '325070', '9', '2016-09-23 12:35:03');
INSERT INTO `file_score` VALUES ('2016144', '325071', '3', '2016-09-23 12:38:48');
INSERT INTO `file_score` VALUES ('2016144', '325073', '1', '2016-09-23 15:48:57');
INSERT INTO `file_score` VALUES ('2016144', '325078', '1', '2016-09-26 10:32:21');
INSERT INTO `file_score` VALUES ('2016144', '325079', '1', '2016-09-23 13:14:03');
INSERT INTO `file_score` VALUES ('2016144', '325083', '1', '2016-10-05 11:13:55');
INSERT INTO `file_score` VALUES ('2016144', '325084', '1', '2016-09-23 13:13:39');
INSERT INTO `file_score` VALUES ('2016144', '325087', '2', '2016-09-23 13:16:42');
INSERT INTO `file_score` VALUES ('2016144', '325097', '11', '2016-09-23 17:28:31');
INSERT INTO `file_score` VALUES ('2016144', '325098', '1', '2016-09-23 17:33:40');
INSERT INTO `file_score` VALUES ('2016144', '325111', '1', '2016-09-26 10:33:41');
INSERT INTO `file_score` VALUES ('2016144', '325112', '3', '2016-09-26 10:34:57');
INSERT INTO `file_score` VALUES ('2016144', '325113', '1', '2016-10-05 11:14:27');
INSERT INTO `file_score` VALUES ('2016166', '325071', '3', '2016-09-23 12:43:41');
INSERT INTO `file_score` VALUES ('2016166', '325072', '1', '2016-09-23 12:44:51');
INSERT INTO `file_score` VALUES ('2016166', '325073', '4', '2016-09-23 12:45:10');
INSERT INTO `file_score` VALUES ('2016166', '325075', '3', '2016-09-23 12:49:29');
INSERT INTO `file_score` VALUES ('2016166', '325078', '1', '2016-09-23 12:46:42');
INSERT INTO `file_score` VALUES ('2016166', '325079', '1', '2016-09-23 12:48:08');
INSERT INTO `file_score` VALUES ('2016166', '325080', '1', '2016-09-23 12:50:22');
INSERT INTO `file_score` VALUES ('2016166', '325081', '1', '2016-09-23 12:52:31');
INSERT INTO `file_score` VALUES ('2016166', '325082', '1', '2016-09-23 12:52:25');
INSERT INTO `file_score` VALUES ('2016166', '325083', '1', '2016-09-23 12:53:11');
INSERT INTO `file_score` VALUES ('2016166', '325084', '1', '2016-09-23 12:57:39');
INSERT INTO `file_score` VALUES ('2016166', '325085', '1', '2016-09-23 12:59:14');
INSERT INTO `file_score` VALUES ('2016166', '325086', '1', '2016-09-23 13:02:26');
INSERT INTO `file_score` VALUES ('2016167', '325087', '1', '2016-09-23 15:25:20');
INSERT INTO `file_score` VALUES ('2016167', '325091', '1', '2016-09-23 15:21:24');
INSERT INTO `file_score` VALUES ('2016168', '325070', '1', '2016-09-23 17:28:40');
INSERT INTO `file_score` VALUES ('2016168', '325073', '1', '2016-09-23 17:26:09');
INSERT INTO `file_score` VALUES ('2016168', '325078', '1', '2016-09-23 17:33:58');
INSERT INTO `file_score` VALUES ('2016168', '325079', '1', '2016-09-23 17:29:09');
INSERT INTO `file_score` VALUES ('2016168', '325083', '1', '2016-09-23 17:28:42');
INSERT INTO `file_score` VALUES ('2016168', '325086', '1', '2016-09-23 17:26:57');
INSERT INTO `file_score` VALUES ('2016168', '325097', '2', '2016-09-23 17:30:45');
INSERT INTO `file_score` VALUES ('2016168', '325098', '2', '2016-09-23 17:30:04');
INSERT INTO `file_score` VALUES ('2016170', '325114', '2', '2016-11-01 08:19:13');
INSERT INTO `file_score` VALUES ('2016170', '325115', '1', '2016-11-01 08:20:03');
INSERT INTO `file_score` VALUES ('2016172', '325114', '7', '2016-11-22 08:14:37');
INSERT INTO `file_score` VALUES ('2016172', '325115', '5', '2016-12-09 08:52:07');
INSERT INTO `file_score` VALUES ('2016172', '325116', '2', '2016-11-22 08:17:08');
INSERT INTO `file_score` VALUES ('2016172', '325117', '1', '2016-11-22 08:17:53');
INSERT INTO `file_score` VALUES ('2016172', '325118', '2', '2016-11-22 08:20:36');
INSERT INTO `file_score` VALUES ('2016172', '325119', '1', '2016-11-22 08:22:45');
INSERT INTO `file_score` VALUES ('2016172', '325120', '1', '2017-03-03 14:58:25');
INSERT INTO `file_score` VALUES ('2016172', '325121', '10', '2016-11-22 08:24:21');
INSERT INTO `file_score` VALUES ('2016172', '325122', '5', '2016-11-22 08:26:26');
INSERT INTO `file_score` VALUES ('2016172', '325123', '2', '2017-02-24 14:39:09');
INSERT INTO `file_score` VALUES ('2016172', '325126', '1', '2017-02-24 14:38:50');
INSERT INTO `file_score` VALUES ('2016172', '325127', '4', '2016-11-22 08:53:36');
INSERT INTO `file_score` VALUES ('2016172', '325128', '1', '2016-11-22 08:59:17');
INSERT INTO `file_score` VALUES ('2016172', '325129', '2', '2016-12-09 12:44:27');
INSERT INTO `file_score` VALUES ('2016172', '325130', '1', '2016-12-09 12:46:01');
INSERT INTO `file_score` VALUES ('2016172', '325132', '11', '2016-12-09 12:54:12');
INSERT INTO `file_score` VALUES ('2016172', '325133', '1', '2016-12-09 12:55:55');
INSERT INTO `file_score` VALUES ('2016172', '325134', '2', '2016-12-09 12:56:02');
INSERT INTO `file_score` VALUES ('2016172', '325135', '7', '2016-12-09 12:58:05');
INSERT INTO `file_score` VALUES ('2016172', '325136', '2', '2017-01-22 15:50:02');
INSERT INTO `file_score` VALUES ('2016172', '325137', '3', '2017-01-22 15:51:11');
INSERT INTO `file_score` VALUES ('2016172', '325138', '2', '2017-01-23 17:23:36');
INSERT INTO `file_score` VALUES ('2016172', '325139', '3', '2017-02-24 14:40:19');
INSERT INTO `file_score` VALUES ('2016172', '325142', '4', '2017-03-03 14:13:53');
INSERT INTO `file_score` VALUES ('2016172', '325143', '3', '2017-03-03 14:40:02');
INSERT INTO `file_score` VALUES ('2016172', '325144', '2', '2017-03-03 14:42:42');
INSERT INTO `file_score` VALUES ('2016172', '325145', '1', '2017-03-17 14:11:54');
INSERT INTO `file_score` VALUES ('2016172', '325147', '1', '2017-03-17 14:23:19');
INSERT INTO `file_score` VALUES ('2016172', '325149', '2', '2017-03-17 14:32:59');
INSERT INTO `file_score` VALUES ('2016172', '325150', '6', '2017-03-17 14:33:19');
INSERT INTO `file_score` VALUES ('2016172', '325151', '2', '2017-03-17 14:36:10');
INSERT INTO `file_score` VALUES ('2016172', '325152', '3', '2017-03-17 14:37:32');
INSERT INTO `file_score` VALUES ('2016172', '325153', '4', '2017-03-17 17:21:07');
INSERT INTO `file_score` VALUES ('2016172', '325154', '4', '2017-03-17 17:26:33');
INSERT INTO `file_score` VALUES ('2016172', '325155', '7', '2017-03-17 17:30:22');
INSERT INTO `file_score` VALUES ('2016172', '325156', '1', '2017-03-20 14:17:15');
INSERT INTO `file_score` VALUES ('2016172', '325157', '1', '2017-03-20 13:12:22');
INSERT INTO `file_score` VALUES ('2016172', '325158', '1', '2017-03-20 13:37:29');
INSERT INTO `file_score` VALUES ('2016172', '325159', '1', '2017-03-20 14:15:58');
INSERT INTO `file_score` VALUES ('2016172', '325160', '1', '2017-03-20 14:19:03');
INSERT INTO `file_score` VALUES ('2016172', '325161', '2', '2017-03-20 14:19:52');
INSERT INTO `file_score` VALUES ('2016172', '325162', '1', '2017-03-24 14:58:56');
INSERT INTO `file_score` VALUES ('2016172', '325163', '1', '2017-03-24 14:59:56');
INSERT INTO `file_score` VALUES ('2016172', '325164', '1', '2017-03-24 14:58:40');
INSERT INTO `file_score` VALUES ('2016172', '325165', '1', '2017-03-24 14:59:32');
INSERT INTO `file_score` VALUES ('2016172', '325166', '5', '2017-03-24 15:01:03');
INSERT INTO `file_score` VALUES ('2016172', '325167', '4', '2017-03-24 15:04:49');
INSERT INTO `file_score` VALUES ('2016172', '325168', '2', '2017-03-24 15:07:11');
INSERT INTO `file_score` VALUES ('2016172', '325169', '1', '2017-03-24 15:08:24');
INSERT INTO `file_score` VALUES ('2016172', '325170', '6', '2017-03-24 15:11:05');
INSERT INTO `file_score` VALUES ('2016172', '325171', '2', '2017-03-24 15:16:55');
INSERT INTO `file_score` VALUES ('2016172', '325172', '1', '2017-03-24 15:18:36');
INSERT INTO `file_score` VALUES ('2016172', '325174', '1', '2017-03-25 13:12:55');
INSERT INTO `file_score` VALUES ('2016172', '325175', '1', '2017-03-25 13:11:30');
INSERT INTO `file_score` VALUES ('2016172', '325176', '2', '2017-03-25 13:11:55');
INSERT INTO `file_score` VALUES ('2016172', '325177', '1', '2017-03-25 13:58:22');
INSERT INTO `file_score` VALUES ('2016172', '325178', '4', '2017-03-25 13:58:39');
INSERT INTO `file_score` VALUES ('2016172', '325179', '1', '2017-03-25 13:58:29');
INSERT INTO `file_score` VALUES ('2016172', '325180', '1', '2017-03-25 14:02:48');
INSERT INTO `file_score` VALUES ('2016172', '325181', '2', '2017-04-11 17:38:04');
INSERT INTO `file_score` VALUES ('2016172', '325183', '1', '2017-04-11 17:39:40');
INSERT INTO `file_score` VALUES ('2016172', '325186', '1', '2017-04-11 17:44:24');
INSERT INTO `file_score` VALUES ('2016172', '325187', '1', '2017-04-11 17:44:56');
INSERT INTO `file_score` VALUES ('2016172', '325188', '1', '2017-04-11 17:52:02');
INSERT INTO `file_score` VALUES ('2016172', '325190', '1', '2017-04-11 17:52:41');
INSERT INTO `file_score` VALUES ('2016172', '325191', '1', '2017-04-21 16:03:16');

-- ----------------------------
-- Table structure for fork_info
-- ----------------------------
DROP TABLE IF EXISTS `fork_info`;
CREATE TABLE `fork_info` (
  `fork_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收藏编号',
  `doc_id` bigint(20) DEFAULT NULL COMMENT '收藏到的文件夹编号',
  `file_id` bigint(20) DEFAULT NULL COMMENT '收藏的文件编号',
  `fork_create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收藏时间',
  `fork_note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`fork_id`),
  KEY `fork_info_ibfk_1` (`doc_id`),
  KEY `fork_info_ibfk_2` (`file_id`),
  CONSTRAINT `fork_info_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doc_info` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fork_info_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `file_info` (`file_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fork_info
-- ----------------------------
INSERT INTO `fork_info` VALUES ('5', '5', '325114', '2017-03-20 14:15:27', '无');
INSERT INTO `fork_info` VALUES ('6', '5', '325170', '2017-03-24 15:12:00', '无');
INSERT INTO `fork_info` VALUES ('7', '5', '325155', '2017-04-11 17:42:55', '无');
INSERT INTO `fork_info` VALUES ('8', '5', '325166', '2017-04-11 17:50:40', '无');

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `message_is_read` bit(1) DEFAULT NULL COMMENT '消息读取情况',
  `message_to_user_id` bigint(20) DEFAULT NULL COMMENT '发送给用户id',
  `message_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `message_title` varchar(255) DEFAULT NULL COMMENT '消息标题',
  PRIMARY KEY (`message_id`),
  KEY `message_to_user_id` (`message_to_user_id`),
  CONSTRAINT `message_info_ibfk_1` FOREIGN KEY (`message_to_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_info
-- ----------------------------
INSERT INTO `message_info` VALUES ('57', '您的文件：“二叉树”上传成功', '\0', '2016001', '2016-08-22 21:47:56', '文件上传成功');
INSERT INTO `message_info` VALUES ('59', '您的文件：“二叉树知识归纳”上传成功', '\0', '2016001', '2016-08-22 21:49:16', '文件上传成功');
INSERT INTO `message_info` VALUES ('61', '您的文件：“杨丞琳 - 匿名的好友”上传成功', '\0', '2016001', '2016-09-23 12:38:10', '文件上传成功');
INSERT INTO `message_info` VALUES ('86', '您的文件：“KNN2”上传成功', '\0', '2016001', '2016-09-23 20:38:52', '文件上传成功');
INSERT INTO `message_info` VALUES ('87', '您的文件：“Irises”上传成功', '\0', '2016001', '2016-09-23 20:38:52', '文件上传成功');
INSERT INTO `message_info` VALUES ('88', '您的文件：“KNN”上传成功', '\0', '2016001', '2016-09-23 20:38:52', '文件上传成功');
INSERT INTO `message_info` VALUES ('89', '您的文件：“基于K近邻的分类算法研究.pdf”上传成功', '\0', '2016001', '2016-09-23 20:38:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('90', '您的文件：“分类决策树_ID3算法(精华-理论加实例).pptx”上传成功', '\0', '2016001', '2016-09-23 20:38:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('91', '您的文件：“基于贝叶斯决策理论的分类器.ppt”上传成功', '\0', '2016001', '2016-09-23 20:38:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('92', '您的文件：“weka-3-6-11”上传成功', '\0', '2016001', '2016-09-23 20:38:59', '文件上传成功');
INSERT INTO `message_info` VALUES ('93', '您的文件：“浅谈K-NN算法.ppt”上传成功', '\0', '2016001', '2016-09-23 20:38:59', '文件上传成功');
INSERT INTO `message_info` VALUES ('94', '您的文件：“鸢尾花数据集.doc”上传成功', '\0', '2016001', '2016-09-23 20:39:00', '文件上传成功');
INSERT INTO `message_info` VALUES ('95', '您的文件：“基于决策树的分类算法研究和应用.pdf”上传成功', '\0', '2016001', '2016-09-23 20:39:00', '文件上传成功');
INSERT INTO `message_info` VALUES ('96', '您的文件：“近邻法.ppt”上传成功', '\0', '2016001', '2016-09-23 20:39:00', '文件上传成功');
INSERT INTO `message_info` VALUES ('97', '您的文件：“基于朴素贝叶斯的分类方法研究.pdf”上传成功', '\0', '2016001', '2016-09-23 20:39:01', '文件上传成功');
INSERT INTO `message_info` VALUES ('98', '您的文件：“2017届毕业设计开题报告会安排”上传成功', '', '2016172', '2016-11-22 08:17:02', '文件上传成功');
INSERT INTO `message_info` VALUES ('99', '您的文件：“广州基地（第4组，18人）”上传成功', '', '2016172', '2016-11-22 08:17:05', '文件上传成功');
INSERT INTO `message_info` VALUES ('100', '您的文件：“二叉树”上传成功', '', '2016172', '2016-11-22 08:20:11', '文件上传成功');
INSERT INTO `message_info` VALUES ('101', '您的文件：“二叉树的定义”上传成功', '', '2016172', '2016-11-22 08:22:33', '文件上传成功');
INSERT INTO `message_info` VALUES ('102', '您的文件：“二叉树结构图”上传成功', '', '2016172', '2016-11-22 08:24:15', '文件上传成功');
INSERT INTO `message_info` VALUES ('123', '您的文件：“俞育峰_知识库管理系统的设计与实现二稿”上传成功', '\0', '2016172', '2017-03-03 14:42:39', '文件上传成功');
INSERT INTO `message_info` VALUES ('124', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 14:12:02', '文件上传成功');
INSERT INTO `message_info` VALUES ('125', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 14:13:20', '文件上传成功');
INSERT INTO `message_info` VALUES ('126', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 14:19:33', '文件上传成功');
INSERT INTO `message_info` VALUES ('127', '您的文件：“地址”上传成功', '\0', '2016172', '2017-03-17 14:23:32', '文件上传成功');
INSERT INTO `message_info` VALUES ('128', '您的文件：“QQ图片20170317110142”上传成功', '\0', '2016172', '2017-03-17 14:32:51', '文件上传成功');
INSERT INTO `message_info` VALUES ('129', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 14:33:23', '文件上传成功');
INSERT INTO `message_info` VALUES ('130', '您的文件：“JDBC_调用函数&存储过程”上传成功', '\0', '2016172', '2017-03-17 14:37:15', '文件上传成功');
INSERT INTO `message_info` VALUES ('131', '您的文件：“王力宏-[心跳].MV[高清完美版]_标清”上传成功', '\0', '2016172', '2017-03-17 14:37:28', '文件上传成功');
INSERT INTO `message_info` VALUES ('132', '您的文件：“0093_俞育峰_2017-03-13”上传成功', '\0', '2016172', '2017-03-17 17:20:30', '文件上传成功');
INSERT INTO `message_info` VALUES ('133', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 17:26:44', '文件上传成功');
INSERT INTO `message_info` VALUES ('134', '您的文件：“俞育峰_知识库管理系统的设计与实现三稿”上传成功', '\0', '2016172', '2017-03-17 17:29:28', '文件上传成功');
INSERT INTO `message_info` VALUES ('135', '您的文件：“SOKLIB知识库管理系统”上传成功', '\0', '2016172', '2017-03-20 13:10:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('136', '您的文件：“吉首大学”上传成功', '\0', '2016172', '2017-03-20 13:12:08', '文件上传成功');
INSERT INTO `message_info` VALUES ('137', '您的文件：“你好”上传成功', '\0', '2016172', '2017-03-20 13:36:45', '文件上传成功');
INSERT INTO `message_info` VALUES ('138', '您的文件：“你好啊”上传成功', '\0', '2016172', '2017-03-20 14:15:47', '文件上传成功');
INSERT INTO `message_info` VALUES ('139', '您的文件：“lib_start”上传成功', '\0', '2016172', '2017-03-20 14:19:00', '文件上传成功');
INSERT INTO `message_info` VALUES ('140', '您的文件：“对啊”上传成功', '\0', '2016172', '2017-03-20 14:19:44', '文件上传成功');
INSERT INTO `message_info` VALUES ('141', '您的文件：“二叉树定义”上传成功', '\0', '2016172', '2017-03-24 14:54:49', '文件上传成功');
INSERT INTO `message_info` VALUES ('142', '您的文件：“二叉树图片”上传成功', '\0', '2016172', '2017-03-24 14:56:06', '文件上传成功');
INSERT INTO `message_info` VALUES ('143', '您的文件：“满二叉树和完全二叉树”上传成功', '\0', '2016172', '2017-03-24 14:58:31', '文件上传成功');
INSERT INTO `message_info` VALUES ('144', '您的文件：“二叉树整理”上传成功', '\0', '2016172', '2017-03-24 14:59:26', '文件上传成功');
INSERT INTO `message_info` VALUES ('145', '您的文件：“二叉树概念”上传成功', '\0', '2016172', '2017-03-24 15:00:56', '文件上传成功');
INSERT INTO `message_info` VALUES ('146', '您的文件：“二叉树概念”上传成功', '\0', '2016172', '2017-03-24 15:04:46', '文件上传成功');
INSERT INTO `message_info` VALUES ('147', '您的文件：“关于二叉树的几种遍历方法”上传成功', '\0', '2016172', '2017-03-24 15:07:09', '文件上传成功');
INSERT INTO `message_info` VALUES ('148', '您的文件：“二叉树整理”上传成功', '\0', '2016172', '2017-03-24 15:08:14', '文件上传成功');
INSERT INTO `message_info` VALUES ('149', '您的文件：“链表的概念”上传成功', '\0', '2016172', '2017-03-24 15:10:49', '文件上传成功');
INSERT INTO `message_info` VALUES ('150', '您的文件：“吉首大学本科生获得毕业证书和学位证书条件 (1)”上传成功', '\0', '2016172', '2017-03-24 15:16:55', '文件上传成功');
INSERT INTO `message_info` VALUES ('151', '您的文件：“链表的操作”上传成功', '\0', '2016172', '2017-03-24 15:18:28', '文件上传成功');
INSERT INTO `message_info` VALUES ('152', '您的文件：“链表演示图片”上传成功', '\0', '2016172', '2017-03-24 15:19:27', '文件上传成功');
INSERT INTO `message_info` VALUES ('153', '您的文件：“链表连接事例”上传成功', '\0', '2016172', '2017-03-24 15:22:31', '文件上传成功');
INSERT INTO `message_info` VALUES ('154', '您的文件：“aa”上传成功', '\0', '2016172', '2017-03-25 13:11:17', '文件上传成功');
INSERT INTO `message_info` VALUES ('155', '您的文件：“test”上传成功', '\0', '2016172', '2017-03-25 13:11:47', '文件上传成功');
INSERT INTO `message_info` VALUES ('156', '您的文件：“巴巴快巴分销接口规范”上传成功', '\0', '2016172', '2017-03-25 13:58:14', '文件上传成功');
INSERT INTO `message_info` VALUES ('157', '您的文件：“2017届预计毕业生信息核对表（最后一次核对）”上传成功', '\0', '2016172', '2017-03-25 13:58:22', '文件上传成功');
INSERT INTO `message_info` VALUES ('158', '您的文件：“JDBC_调用函数&存储过程”上传成功', '\0', '2016172', '2017-03-25 13:59:30', '文件上传成功');
INSERT INTO `message_info` VALUES ('159', '您的文件：“test”上传成功', '\0', '2016172', '2017-03-25 14:02:20', '文件上传成功');
INSERT INTO `message_info` VALUES ('160', '您的文件：“出发城市与接口对应表_20170124”上传成功', '\0', '2016172', '2017-04-11 17:37:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('161', '您的文件：“0093_俞育峰_2017-04-05”上传成功', '\0', '2016172', '2017-04-11 17:38:01', '文件上传成功');
INSERT INTO `message_info` VALUES ('162', '您的文件：“test”上传成功', '\0', '2016172', '2017-04-11 17:39:13', '文件上传成功');
INSERT INTO `message_info` VALUES ('163', '您的文件：“0093_俞育峰_2017-04-05”上传成功', '\0', '2016172', '2017-04-11 17:43:48', '文件上传成功');
INSERT INTO `message_info` VALUES ('164', '您的文件：“巴巴快巴分销接口规范”上传成功', '\0', '2016172', '2017-04-11 17:43:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('165', '您的文件：“汽车票测试用例_PC -”上传成功', '\0', '2016172', '2017-04-11 17:44:06', '文件上传成功');
INSERT INTO `message_info` VALUES ('166', '您的文件：“测试”上传成功', '\0', '2016172', '2017-04-11 17:44:48', '文件上传成功');
INSERT INTO `message_info` VALUES ('167', '您的文件：“note”上传成功', '\0', '2016172', '2017-04-11 17:51:58', '文件上传成功');
INSERT INTO `message_info` VALUES ('168', '您的文件：“答辩时老师提出的问题_俞育峰”上传成功', '\0', '2016172', '2017-04-11 17:52:02', '文件上传成功');
INSERT INTO `message_info` VALUES ('169', '您的文件：“演示”上传成功', '\0', '2016172', '2017-04-11 17:52:35', '文件上传成功');
INSERT INTO `message_info` VALUES ('170', '您的文件：“答辩时老师提出的问题_俞育峰”上传成功', '\0', '2016172', '2017-04-21 16:03:14', '文件上传成功');

-- ----------------------------
-- Table structure for relation_info
-- ----------------------------
DROP TABLE IF EXISTS `relation_info`;
CREATE TABLE `relation_info` (
  `main_file_id` bigint(20) NOT NULL COMMENT '主体文件ID',
  `relation_file_id` bigint(20) NOT NULL COMMENT '关联文件ID',
  `relation_create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '关联时间',
  PRIMARY KEY (`main_file_id`,`relation_file_id`),
  KEY `relation_info_ibfk_2` (`relation_file_id`),
  CONSTRAINT `relation_info_ibfk_1` FOREIGN KEY (`main_file_id`) REFERENCES `file_info` (`file_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `relation_info_ibfk_2` FOREIGN KEY (`relation_file_id`) REFERENCES `file_info` (`file_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户关联表';

-- ----------------------------
-- Records of relation_info
-- ----------------------------
INSERT INTO `relation_info` VALUES ('325163', '325166', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325163', '325173', '2017-03-24 15:19:56');
INSERT INTO `relation_info` VALUES ('325166', '325163', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325166', '325167', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325166', '325168', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325167', '325166', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325168', '325166', '2017-03-24 15:26:27');
INSERT INTO `relation_info` VALUES ('325168', '325170', '2017-03-24 15:11:00');
INSERT INTO `relation_info` VALUES ('325170', '325168', '2017-03-24 15:11:00');
INSERT INTO `relation_info` VALUES ('325170', '325174', '2017-03-24 15:22:41');
INSERT INTO `relation_info` VALUES ('325172', '325174', '2017-03-24 15:22:41');
INSERT INTO `relation_info` VALUES ('325173', '325163', '2017-03-24 15:19:56');
INSERT INTO `relation_info` VALUES ('325173', '325174', '2017-03-24 15:22:41');
INSERT INTO `relation_info` VALUES ('325174', '325170', '2017-03-24 15:22:41');
INSERT INTO `relation_info` VALUES ('325174', '325172', '2017-03-24 15:22:41');
INSERT INTO `relation_info` VALUES ('325174', '325173', '2017-03-24 15:22:41');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_password` varchar(60) NOT NULL DEFAULT '12345678' COMMENT '用户密码，默认12345678',
  `user_type` int(5) NOT NULL DEFAULT '1' COMMENT '用户种类：0表示管理员，1表示普通用户，2表示未激活,3表示被锁定用户',
  `user_email` varchar(255) DEFAULT NULL COMMENT '用户电子邮箱帐号',
  `user_photo` varchar(255) DEFAULT NULL COMMENT '用户头像地址',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2016174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('2016001', '我是admin', 'c6bea8e90c2d01b5fcb073e790a0edf3', '0', 'aa@qq.com', 'e89d60f9-f867-4ade-a482-63815a22e786');
INSERT INTO `user_info` VALUES ('2016172', 'yuyufeng', 'c6bea8e90c2d01b5fcb073e790a0edf3', '0', '416530244@qq.com', '5b3c727c-a12f-4d95-8f8d-18f1d2032d7e');
INSERT INTO `user_info` VALUES ('2016173', 'jjx', '8edf26a065b4f495f42a9386ab90747d', '2', '1603640563@qq.com', null);

-- ----------------------------
-- Table structure for user_register
-- ----------------------------
DROP TABLE IF EXISTS `user_register`;
CREATE TABLE `user_register` (
  `register_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '注册编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `validate_code` varchar(255) NOT NULL COMMENT '验证序列号',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_register
-- ----------------------------
INSERT INTO `user_register` VALUES ('51', '2016169', '85b1e121a08975dc685b4ccdee440dea', '2016-11-01 08:14:36');
INSERT INTO `user_register` VALUES ('52', '2016170', '85b1e121a08975dc685b4ccdee440dea', '2016-11-01 08:17:56');
INSERT INTO `user_register` VALUES ('53', '2016171', '85b1e121a08975dc685b4ccdee440dea', '2016-11-22 08:12:24');
INSERT INTO `user_register` VALUES ('54', '2016172', '85b1e121a08975dc685b4ccdee440dea', '2016-11-22 08:14:17');
INSERT INTO `user_register` VALUES ('55', '2016173', 'e7c902bb8d7467836f6ae38ea65dcc24', '2017-02-24 14:34:48');
