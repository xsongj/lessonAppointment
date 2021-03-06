-- 创建数据库
CREATE DATABASE lessonappointment;

-- 创建图书表
CREATE TABLE `lesson` (
  `lesson_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `name` varchar(100) NOT NULL COMMENT '课程名称',
  `teacher` varchar(1000) NOT NULL COMMENT '授课教师',
  `number` int(11) NOT NULL COMMENT '上课限制人数',
  PRIMARY KEY (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- 初始化图书数据
INSERT INTO `lesson` (`lesson_id`, `name`, `teacher`,`number`)
VALUES
  (1000, '图论及应用', '授课教师：杨春',150),
  (1001, '数据结构','授课教师：酱萌烦', 100),
  (1002, '设计模式','授课教师：养鸡蛤',100),
  (1003, '编译原理','授课教师：胡文',100),
  (1004,'大学语文','授课教师：赵利娟',100),
  (1005,'矩阵理论','授课教师：束强',100),
  (1006,'随机过程','授课教师：王慧',100),
  (1007, '最优化理论','授课教师：叶皮皮',100),
  (1008, '信号检测与估计','授课教师：黎一拳',100),
  (1009,'模式识别','授课教师：烫婷婷',100),
  (1010,'图像处理及应用','授课教师：梅梅',100),
  (1011,'软件无线电技术','授课教师：伍浩',100),
  (1012, '机器学习', '授课教师：杨春',150),
  (1013, '空间探测与天线组阵技术	','授课教师：酱萌烦', 100),
  (1014, '现代鲁棒控制	','授课教师：养鸡蛤',100),
  (1015, '中国诗书画意蕴趣谈	','授课教师：胡文',100),
  (1016,'体育技能、欣赏与文化	','授课教师：赵利娟',100),
  (1017,'心理健康与创新能力','授课教师：束强',100),
  (1018,'网络协议实践	','授课教师：王慧',100),
  (1019, '软件无线电技术设计与实践	','授课教师：叶皮皮',100),
  (1020, '数字信号处理实现技术	','授课教师：黎一拳',100),
  (1021,'时域测试技术综合实验	','授课教师：烫婷婷',50),
  (1022,'项目管理案例分析	','授课教师：束强',100),
  (1023,'模拟电路','授课教师：王慧',100),
  (1024, '数字电路', '授课教师：杨春',150),
  (1025, '电路理论','授课教师：酱萌烦', 100),
  (1026, '数据库理论','授课教师：养鸡蛤',100),
  (1027, '操作系统','授课教师：胡文',100),
  (1028,'计算机网络','授课教师：赵利娟',100),
  (1029,'大学英语','授课教师：束强',100),
  (1030,'大学物理','授课教师：王慧',100),
  (1031, '信息论与编码','授课教师：叶皮皮',100),
  (1032, '信号与系统','授课教师：黎一拳',100),
  (1033,'通信原理','授课教师：烫婷婷',100),
  (1034,'数字信号处理','授课教师：束强',100),
  (1035,'雷达原理','授课教师：王慧',100);

-- 创建预约选课表
CREATE TABLE `appointment` (
  `lesson_id` bigint(20) NOT NULL COMMENT '课程ID',
  `student_id` bigint(20) NOT NULL COMMENT '学号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间' ,
  PRIMARY KEY (`lesson_id`, `student_id`),
  INDEX `idx_appoint_time` (`appoint_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已预约的课程表';

-- 创建学生数据表
CREATE TABLE `student`(
  `student_id` bigint(20) NOT NULL COMMENT '学生ID',
  `password`  bigint(20) NOT NULL COMMENT '密码',
  PRIMARY KEY(`student_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生统计表';

-- 初始化学生数据
INSERT INTO `student`(`student_id`,`password`)
VALUES
  (201622021111,123456),
  (201622021112,123456),
  (201622021113,123456),
  (201622021114,123456),
  (201622021115,123456),
  (201622021116,123456),
  (201622021117,123456),
  (201622021118,123456),
  (201622021119,123456),
  (201622021120,123456),
  (201622021121,123456);