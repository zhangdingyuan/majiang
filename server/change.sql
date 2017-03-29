


DROP TABLE IF EXISTS `user_agent_token`;
CREATE TABLE `user_agent_token` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT NOT NULL COMMENT '用户id',
  `token` VARCHAR(64) NULL COMMENT '登录token',
  `create_time` BIGINT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT '用户代理平台登录token';