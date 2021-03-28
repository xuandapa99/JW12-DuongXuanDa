CREATE TABLE `tbl_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `views` int DEFAULT 0,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin bài viết';

CREATE TABLE `tbl_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `blog_id` int NOT NULL,
  `parent_comment_id` int NOT NULL,
  `comment` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin comment';

/* Tạo bảng attribute tương tự category*/
-- Sau đó tạo bảng sau
CREATE TABLE `tbl_attribute_product` (
  `attribute_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`attribute_id`,`product_id`),
  KEY `fk_product_idx` (`product_id`),
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`),
  CONSTRAINT `fk_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `tbl_attribute` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng trung gian thể hiện quan hệ n-n của attribute và product';
