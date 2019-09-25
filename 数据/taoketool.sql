/*
 Navicat Premium Data Transfer

 Source Server         : 106.13.210.223
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 106.13.210.223:3306
 Source Schema         : taoketool

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 25/09/2019 17:59:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名字',
  `category_remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类备注',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `enable` int(2) NOT NULL DEFAULT 1 COMMENT '是否启用（1=启用，0=禁用） 默认为1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (9, '测试添加分类', NULL, '1', 1);
INSERT INTO `category` VALUES (10, '分类12', NULL, '104', 1);
INSERT INTO `category` VALUES (11, '直播间2号', NULL, '105', 1);
INSERT INTO `category` VALUES (12, '直播间3号', NULL, '105', 1);
INSERT INTO `category` VALUES (13, '直播间4号', NULL, '105', 1);
INSERT INTO `category` VALUES (14, '直播间5号', NULL, '105', 1);
INSERT INTO `category` VALUES (15, '直播间6号', NULL, '105', 1);
INSERT INTO `category` VALUES (16, '直播间7号', NULL, '105', 1);
INSERT INTO `category` VALUES (17, '直播间8号', NULL, '105', 1);
INSERT INTO `category` VALUES (18, '直播间9号', NULL, '105', 1);
INSERT INTO `category` VALUES (19, '直播间10号', NULL, '105', 1);
INSERT INTO `category` VALUES (20, '直播间11号', NULL, '105', 1);
INSERT INTO `category` VALUES (21, '女装6', NULL, '105', 0);
INSERT INTO `category` VALUES (22, '女装7', NULL, '105', 0);
INSERT INTO `category` VALUES (23, '悠悠直播间1号宝贝', NULL, '1', 1);

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_id` bigint(20) NOT NULL COMMENT '用户ID',
  `c_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品ID',
  `created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `coupon_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券领取URL',
  `coupon_price` decimal(18, 2) NOT NULL COMMENT '优惠券价格',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标签',
  `com_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `com_img` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品主图',
  `com_price` decimal(18, 2) NULL DEFAULT NULL COMMENT '商品单价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (44, 1, '597649283190', '2019-09-12 14:37:49', '2019-09-12 14:37:49', 9, '测试添加分类', 'https://s.click.taobao.com/dlAo81w', 360.00, '', 'missface面膜精华原液眼霜BB护肤品【第二件0元 第三件0元】预售', 'https://img.alicdn.com/bao/uploaded/i1/1029624918/O1CN01xRMv4x1mCUOtRsAe4_!!0-item_pic.jpg', 398.00);
INSERT INTO `commodity` VALUES (45, 1, '577809969991', '2019-09-12 14:38:55', '2019-09-12 14:38:55', 9, '测试添加分类', 'https://s.click.taobao.com/MPBn81w', 10.00, '', '【4卷装】蒙丽丝一次性洗脸巾女纯棉柔洁面巾纸美容专用巾卷筒式', 'https://img.alicdn.com/bao/uploaded/i1/3074628709/O1CN01edsq3p2EClstVF2gO_!!0-item_pic.jpg', 15.10);
INSERT INTO `commodity` VALUES (47, 104, '556641640851', '2019-09-19 10:48:34', '2019-09-19 10:48:34', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=Y8FyhQ25rnwNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnS7SXxpYlazY6cyTvdd6gfNRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0kZMA2LPVKmfx66k1%2BnX3GQNI%2B%2BnJeJkzwxbr6RQ67fd4TAkZ2VvAZAhfrt0I9sinJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.131.235.167_476_1568861275986&ptl=floorId:17741;app_pvid:59590_11.131.235.167_476_1568861275986;tpp_pvid:&union_lens=lensId%3AOPT%401568861159%400bba8329_0f15_16d47697e66_10ca%4001', 3.00, '', '秋冬新生儿哈衣0-2岁婴儿爬行服羽绒棉衣加厚包被棉袄外出连体服', 'https://img.alicdn.com/bao/uploaded/i4/1880785212/TB2jOgnbgvD8KJjSsplXXaIEFXa_!!1880785212.jpg', 48.00);
INSERT INTO `commodity` VALUES (48, 104, '590589971503', '2019-09-19 10:50:30', '2019-09-19 10:50:30', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=H6TBGZ7gjVkNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihneE4bsX1kGRxMjTeW774dTVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0GYdOX3P0rnWSlkL8%2BFO6Jr9T3Z3MDpluzdqazcvDJTHxrg8600LmSeKFDysnDp1nJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.1.62.88_451_1568861409137&ptl=floorId:17741;app_pvid:59590_11.1.62.88_451_1568861409137;tpp_pvid:&union_lens=lensId%3AOPT%401568861159%400bba8329_0f15_16d47697e66_10e8%4001', 40.00, '', '新生儿衣服秋冬季外出抱衣女宝宝冬装婴儿羽绒棉服连体衣爬服套装', 'https://img.alicdn.com/bao/uploaded/i3/3141151594/O1CN01oPwynq1Ne5q6CKP0d_!!3141151594.jpg', 118.00);
INSERT INTO `commodity` VALUES (49, 104, '577469122036', '2019-09-19 10:52:39', '2019-09-19 10:52:39', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=MkNI7Tt4bQQNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68APsqZZDO6gdtCRy7DuE%2F4ya4bVlo0QJT9C58xsB98QT4kI8kFlYUvLjZWB8yRYykDvEyPWLtkcnTJlKdoBJrFTjiBFTlo8Sno6cWJFsgfe2aBkAErbRyEanY6kuF9hX%2FUh24Qlvoc3eN3Q%2FUSUbS63JOJNnJbcKb4rwfNcSCHrz1sXwp43pyqpxMDQVG07AK7A%3D%3D&&app_pvid=59590_11.15.211.159_461_1568861550819&ptl=floorId:17741;app_pvid:59590_11.15.211.159_461_1568861550819;tpp_pvid:&union_lens=lensId%3AOPT%401568861508%400b183896_0f74_16d476ed1fe_c461%4001', 30.00, '', '南极人儿童轻薄羽绒服短款男童女童中大童小孩宝宝童装秋冬外套', 'https://img.alicdn.com/bao/uploaded/i1/2259809466/O1CN012JnTcjMpzPAPLRf_!!0-item_pic.jpg', 129.00);
INSERT INTO `commodity` VALUES (50, 104, '538108725966', '2019-09-19 10:53:44', '2019-09-19 10:53:44', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=%2B70z3zVMV7ANfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZfE3cXQrrMYFP9PVbWXxsBRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1PRWEhpZPwDZWVzJ7kimIIhCflXB6ZNtAdF2PPao1gNd%2Fv3JhfcWTSKSP16LvcwO3JTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.15.225.185_443_1568861615692&ptl=floorId:17741;app_pvid:59590_11.15.225.185_443_1568861615692;tpp_pvid:&union_lens=lensId%3AOPT%401568861508%400b183896_0f74_16d476ed1fe_c468%4001', 70.00, '', '反季韦氏童装儿童羽绒服男女轻薄春秋冬宝宝短款纯色运动羽绒外套', 'https://img.alicdn.com/bao/uploaded/i4/1026393670/O1CN01Uy39OW1cyu7EN1D29_!!0-item_pic.jpg', 169.00);
INSERT INTO `commodity` VALUES (51, 104, '599370282932', '2019-09-19 10:54:43', '2019-09-19 10:54:43', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=kPJSFG8n%2BpENfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnUG21w4SK5pSHa4ZMWm6dqVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0NIB4dAAXhZHErMzF%2Fn%2BctE3YsSBhdfsFVXrZcJqGXIhUJozKQvi%2Byh3zKRsMjDZ%2FJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.15.104.24_490_1568861672786&ptl=floorId:17741;app_pvid:59590_11.15.104.24_490_1568861672786;tpp_pvid:&union_lens=lensId%3AOPT%401568861665%400b1b31f2_0e7c_16d47713996_d043%4001', 10.00, '', '儿童秋冬羽绒棉服2019新款男女童棉袄宝宝银色衣洋气冬装棉服外套', 'https://img.alicdn.com/bao/uploaded/i3/1919103386/O1CN01S5PmGb1aspdeOzaFs_!!0-item_pic.jpg', 49.90);
INSERT INTO `commodity` VALUES (52, 104, '589451618689', '2019-09-19 10:55:35', '2019-09-19 10:55:35', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=W4zyapvfdd4NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnRDynZnQEuI65X5wuYMKqAxRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2knkHsyZuzZgMTUXVWtDC4v%2BIP8LoCgW5NYzECgC3hvstj2w46vVMCx1ZeOw1VdWnJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.26.37.165_1860_1568861726013&ptl=floorId:17741;app_pvid:59590_11.26.37.165_1860_1568861726013;tpp_pvid:&union_lens=lensId%3AOPT%401568861665%400b1b31f2_0e7c_16d47713996_d045%4001', 15.00, '', '2019新款羽绒棉袄内胆中小女儿童宝宝外套加厚秋冬装反季清仓衣服', 'https://img.alicdn.com/bao/uploaded/i3/1101186949/O1CN01w8o9Ma21CgllPMSIS_!!1101186949.jpg', 49.80);
INSERT INTO `commodity` VALUES (53, 104, '599756799577', '2019-09-19 10:56:26', '2019-09-19 10:56:26', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=ypLv%2BSCUji0NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnelZ3FYOZAYXZ0uvetjZ8cVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2cn2H94cfDT%2Bf8tgkdicwo8PoPqbEHgFL6qpwm4vTN4u7O8C6%2BE31jlWhO72zQlM7JTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.1.242.127_485_1568861778711&ptl=floorId:17741;app_pvid:59590_11.1.242.127_485_1568861778711;tpp_pvid:&union_lens=lensId%3AOPT%401568861748%400b839e46_0e9d_16d47727b3d_aa05%4001', 35.00, '', '男童女童仿水貂绒毛衣宝宝中小童加厚保暖小孩儿童打底衫针织衫', 'https://img.alicdn.com/bao/uploaded/i4/2948354481/O1CN01sI4NP81iyLK8DT3Xm_!!0-item_pic.jpg', 88.00);
INSERT INTO `commodity` VALUES (54, 104, '555921345923', '2019-09-19 10:57:17', '2019-09-19 10:57:17', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=zVeFR%2FjW7scNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnRyKG%2BPlVxqcqTcmWh5%2FCGxRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1LALKvy0%2FgJVMaZdYpmj1oNmHsJJ0jlwWKzNyiGxpr9w9n9mSbSBMTPseKFHBpS%2FTJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.15.93.171_474_1568861829425&ptl=floorId:17741;app_pvid:59590_11.15.93.171_474_1568861829425;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b6fe%4001', 15.00, '', '女童秋装2019新款儿童打底针织衫宝宝中小童毛衣春秋开衫外套洋气', 'https://img.alicdn.com/bao/uploaded/i2/2456925894/O1CN012U9Ymv1tPUyAX6ndf_!!0-item_pic.jpg', 58.00);
INSERT INTO `commodity` VALUES (55, 104, '600656655471', '2019-09-19 10:57:58', '2019-09-19 10:57:58', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=%2BI5D%2FDLdv50NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihncp3kaZJtjP7CnH122JmbvNRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3kzixcc%2BRFKQj5idpOs4i%2FCMK9%2FKl9ruczGqeiDn7nrvzjqRSXXSPZGMQquAQ8Fphh9foG%2F5o3V5Vkf3oIWjLZVW6yqqeGJ%2FI%3D&&app_pvid=59590_11.9.33.73_454_1568861868666&ptl=floorId:17741;app_pvid:59590_11.9.33.73_454_1568861868666;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b706%4001', 5.00, '', '男童毛衣套头2019秋冬款宝宝童装加绒加厚儿童女童洋气针织打底衫', 'https://img.alicdn.com/bao/uploaded/i3/2206352712205/O1CN018ciOlq1S9vsjVWKoo_!!0-item_pic.jpg', 39.90);
INSERT INTO `commodity` VALUES (56, 104, '557935349623', '2019-09-19 10:58:33', '2019-09-19 10:58:33', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=Ne0mTnaXkEYNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnWJSyCElg%2F0r6nckWs9qoF1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0rEjaz1iUbegEn8%2BNOpT25ZXzXK4CMLi6PCFuiieqRxnCVkp2O4E5PNDCPlg3DD%2F2zAOGWlowRrGuhcEU%2FqjP4&&app_pvid=59590_11.8.95.8_498_1568861904177&ptl=floorId:17741;app_pvid:59590_11.8.95.8_498_1568861904177;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b708%4001', 30.00, '', '秋冬儿童羊绒衫女童套头毛衣男童加厚打底衫圆领宝宝针织衫白色', 'https://img.alicdn.com/bao/uploaded/i1/70780698/O1CN01XXnews1H1j0roGJqK_!!0-item_pic.jpg', 82.00);
INSERT INTO `commodity` VALUES (57, 104, '536777146177', '2019-09-19 10:59:22', '2019-09-19 10:59:22', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=OKNEHzsb4z4NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnSPSOSmFeB7M673%2FMWuv21hRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2knkHsyZuzZl4vL8ag3fljz7M3Mh%2FaJpVWX7H4mHw8WiCXFeaTKESzPseKFHBpS%2FTJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.11.78.94_503_1568861953792&ptl=floorId:17741;app_pvid:59590_11.11.78.94_503_1568861953792;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65bb%4001', 15.00, '', '哈咪奇 宝宝裤子加绒加厚秋冬款婴儿男童小童女童保暖外穿长裤', 'https://img.alicdn.com/bao/uploaded/i1/1674657894/O1CN01asO7en28BV6SCAYWv_!!0-item_pic.jpg', 45.90);
INSERT INTO `commodity` VALUES (58, 104, '539689702244', '2019-09-19 10:59:53', '2019-09-19 10:59:53', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=O9CioR4DD64NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZiCE73r04OtMB0BH1XeaTZRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0NIB4dAAXhZCTPXc0V92EWui9aT1b9Q8zdyPvxOpXnSnjDBvITzdcjeZatnILlAPzuG8Qvu8yX0Pp6A4EzYcJj&&app_pvid=59590_11.21.71.24_16625_1568861985148&ptl=floorId:17741;app_pvid:59590_11.21.71.24_16625_1568861985148;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65bd%4001', 5.00, '', '女童打底裤春秋款外穿洋气冬装2019新款秋季儿童加绒加厚宝宝裤子', 'https://img.alicdn.com/bao/uploaded/i4/645713642/O1CN01tgH41e1cm51rZTcTJ_!!0-item_pic.jpg', 19.90);
INSERT INTO `commodity` VALUES (59, 104, '578526002522', '2019-09-19 11:00:34', '2019-09-19 11:00:34', 10, '分类1', 'https://uland.taobao.com/coupon/edetail?e=XHYqsj9vtuQNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1eAbUYx2MdPrAvl9%2FblivvwqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.26.255.42_476_1568862025417&ptl=floorId:17741;app_pvid:59590_11.26.255.42_476_1568862025417;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65c4%4001', 20.00, '', '大屁屁裤子女宝宝男童春装加绒加厚长裤pp裤外穿婴儿韩版哈伦裤秋', 'https://img.alicdn.com/bao/uploaded/i3/3195439748/O1CN01M9MFPg2LsdLYMqjrm_!!0-item_pic.jpg', 49.90);
INSERT INTO `commodity` VALUES (61, 1, '578526002522', '2019-09-19 14:18:17', '2019-09-19 14:18:17', 9, '测试添加分类', 'https://uland.taobao.com/coupon/edetail?e=js6NDuXTc5gNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0O0rXGcDPvz7pRWwGGFgI2wqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.8.51.166_458_1568873641648&ptl=floorId:17741;app_pvid:59590_11.8.51.166_458_1568873641648;tpp_pvid:&union_lens=lensId%3AOPT%401568873634%400b0b7b11_0eaf_16d4827dc03_5486%4001', 20.00, '', '大屁屁裤子女宝宝男童春装加绒加厚长裤pp裤外穿婴儿韩版哈伦裤秋', 'https://img.alicdn.com/bao/uploaded/i3/3195439748/O1CN01M9MFPg2LsdLYMqjrm_!!0-item_pic.jpg', 49.90);
INSERT INTO `commodity` VALUES (63, 105, '578526002522', '2019-09-19 14:47:09', '2019-09-19 14:47:09', 11, '加绒加厚长裤', 'https://s.click.taobao.com/Mmr2b0w', 20.00, '直播间2号宝贝', '大屁屁裤子女宝宝男童春装加绒加厚长裤pp裤外穿婴儿韩版哈伦裤秋', 'https://img.alicdn.com/bao/uploaded/i3/3195439748/O1CN01M9MFPg2LsdLYMqjrm_!!0-item_pic.jpg', 49.90);
INSERT INTO `commodity` VALUES (68, 105, '555921345923', '2019-09-19 15:17:55', '2019-09-19 15:17:55', 11, '加绒加厚长裤', 'https://s.click.taobao.com/fp0pa0w', 15.00, '', '女童秋装2019新款儿童打底针织衫宝宝中小童毛衣春秋开衫外套洋气', 'https://img.alicdn.com/bao/uploaded/i2/2456925894/O1CN012U9Ymv1tPUyAX6ndf_!!0-item_pic.jpg', 58.00);
INSERT INTO `commodity` VALUES (75, 105, '556641640851', '2019-09-19 15:20:35', '2019-09-19 15:20:35', 11, '加绒加厚长裤', 'https://s.click.taobao.com/l0qna0w', 3.00, '', '秋冬新生儿哈衣0-2岁婴儿爬行服羽绒棉衣加厚包被棉袄外出连体服', 'https://img.alicdn.com/bao/uploaded/i4/1880785212/TB2jOgnbgvD8KJjSsplXXaIEFXa_!!1880785212.jpg', 48.00);
INSERT INTO `commodity` VALUES (78, 105, '571206900479', '2019-09-20 14:52:39', '2019-09-20 14:52:39', 11, '直播间2号', 'https://s.click.taobao.com/FpYeV0w', 5.00, '', '哄娃神器婴儿摇摇椅安抚椅睡觉抱宝宝躺椅抖音摇篮床带娃哄睡儿童', 'https://img.alicdn.com/bao/uploaded/i2/3371668397/O1CN010C3VJR2BtsJAu1PcU_!!0-item_pic.jpg', 34.00);
INSERT INTO `commodity` VALUES (79, 105, '591413792897', '2019-09-20 14:54:05', '2019-09-20 14:54:05', 11, '直播间2号', 'https://s.click.taobao.com/DB3eV0w', 20.00, '', '新生婴儿脚踏钢琴健身架器宝宝益智玩具0-1岁3-6-12个月男女孩童', 'https://img.alicdn.com/bao/uploaded/i1/2573065943/O1CN01tXnEB91tlwNOD68xf_!!2573065943.jpg', 88.00);
INSERT INTO `commodity` VALUES (80, 105, '572824711576', '2019-09-20 14:55:16', '2019-09-20 14:55:16', 11, '直播间2号', 'https://s.click.taobao.com/8jYdV0w', 10.00, '', '贝恩施婴儿手摇铃0-1岁 新生儿宝宝早教益智牙胶玩具0-3-6-12个月', 'https://img.alicdn.com/bao/uploaded/i3/2375538726/O1CN01GeQMyM2EKYYaMAb0B_!!0-item_pic.jpg', 39.00);
INSERT INTO `commodity` VALUES (81, 105, '568512353743', '2019-09-20 14:55:38', '2019-09-20 14:55:38', 11, '直播间2号', 'https://s.click.taobao.com/qjGdV0w', 10.00, '', '贝恩施早教益智婴儿玩具 拨浪鼓新生儿宝宝手摇铃音乐 1-12个月', 'https://img.alicdn.com/bao/uploaded/i3/2375538726/TB1cqO8w29TBuNjy0FcXXbeiFXa_!!0-item_pic.jpg', 29.90);
INSERT INTO `commodity` VALUES (82, 105, '558715656220', '2019-09-20 14:58:37', '2019-09-20 14:58:37', 11, '直播间2号', 'https://s.click.taobao.com/zg3cV0w', 10.00, '', '婴儿小棉鞋女新生儿不掉软底鞋子0-6-12个月初生儿男冬季加绒加厚', 'https://img.alicdn.com/bao/uploaded/i2/572779017/O1CN01EBguKp2GTpsmsQ4Mp_!!572779017.jpg', 18.10);
INSERT INTO `commodity` VALUES (83, 105, '597724514435', '2019-09-20 15:00:33', '2019-09-20 15:00:33', 11, '直播间2号', 'https://s.click.taobao.com/ClHbV0w', 5.00, '', '2019秋季新款小孩儿童鞋子1-5岁3男女童运动鞋4女宝宝小童潮鞋2', 'https://img.alicdn.com/bao/uploaded/i4/3782809378/O1CN01AeTMZB2J9AqSVWJ8C_!!0-item_pic.jpg', 39.90);
INSERT INTO `commodity` VALUES (85, 105, '547792939977', '2019-09-20 15:06:47', '2019-09-20 15:06:47', 11, '直播间2号', 'https://s.click.taobao.com/ylUYV0w', 20.00, '', '婴儿电子体温计家用儿童红外线温度表医用高精度额温枪精准探热器', 'https://img.alicdn.com/bao/uploaded/i1/2772609798/O1CN01o4sh4R2MFXCYT1tYt_!!0-item_pic.jpg', 59.00);
INSERT INTO `commodity` VALUES (86, 105, '534991628933', '2019-09-20 15:08:21', '2019-09-20 15:08:21', 11, '直播间2号', 'https://s.click.taobao.com/f8pXV0w', 60.00, '', '电子测家用压全自动高精准手腕式量血压计测量表仪器腕式老人医用', 'https://img.alicdn.com/bao/uploaded/i3/2822544221/O1CN01TQUIbq1h3GLy9Robw_!!0-item_pic.jpg', 128.00);
INSERT INTO `commodity` VALUES (87, 105, '592768760893', '2019-09-20 15:08:58', '2019-09-20 15:08:58', 11, '直播间2号', 'https://s.click.taobao.com/oFZXV0w', 20.00, '', '鱼跃550血糖测试仪家用精准血糖仪血糖试纸自动准确测血糖的仪器', 'https://img.alicdn.com/bao/uploaded/i3/2201189407994/O1CN01rMuXQM28vIi12bhjZ_!!0-item_pic.jpg', 79.00);
INSERT INTO `commodity` VALUES (88, 105, '586920171375', '2019-09-20 15:10:26', '2019-09-20 15:10:26', 11, '直播间2号', 'https://s.click.taobao.com/YIrWV0w', 50.00, '', '鱼跃胎心监测仪孕妇家用多普勒无辐射胎儿胎动听诊器听胎心监护仪', 'https://img.alicdn.com/bao/uploaded/i2/2107759029/O1CN014Gly2p2GZKdetYFdy_!!0-item_pic.jpg', 239.00);
INSERT INTO `commodity` VALUES (91, 105, '575921516282', '2019-09-20 15:11:58', '2019-09-20 15:11:58', 11, '直播间2号', 'https://s.click.taobao.com/4W3WV0w', 20.00, '', '肩颈椎按摩器颈部腰部肩部多功能车载仪家用电动枕头脖子揉捏神器', 'https://img.alicdn.com/bao/uploaded/i3/3085932688/O1CN0111QZRI1Vj9AeffSIR_!!0-item_pic.jpg', 48.00);
INSERT INTO `commodity` VALUES (94, 105, '557876369509', '2019-09-20 15:21:09', '2019-09-20 15:21:09', 11, '直播间2号', 'https://s.click.taobao.com/eL3SV0w', 40.00, '', '荣事达手持挂烫机家用小型电熨斗便携式烫斗迷你蒸汽刷旅行熨烫机', 'https://img.alicdn.com/bao/uploaded/i3/2731653262/O1CN01xtIFYU1Zy2WEgcFSC_!!0-item_pic.jpg', 89.00);
INSERT INTO `commodity` VALUES (95, 105, '535520474828', '2019-09-20 15:25:18', '2019-09-20 15:25:18', 11, '直播间2号', 'https://s.click.taobao.com/MMNQV0w', 5.00, '', '品胜iPhone6数据线6s苹果7充电线器5s手机7plus六5快充X加长XR闪充8p短iPad平板ios冲电Xsmax旗舰店xs正品sp', 'https://img.alicdn.com/bao/uploaded/i1/467098491/O1CN01OeZ99e2CavYGApsy9_!!0-item_pic.jpg', 18.00);
INSERT INTO `commodity` VALUES (109, 105, '535864159100', '2019-09-20 15:33:48', '2019-09-20 15:33:48', 11, '直播间2号', 'https://s.click.taobao.com/6LZMV0w', 5.00, '', '飞科毛球修剪器充电式剃毛器衣服衣物刮吸打毛机家用去除毛球神器', 'https://img.alicdn.com/bao/uploaded/i3/843346606/O1CN018jBle61yfayAWvZ7j_!!0-item_pic.jpg', 24.90);
INSERT INTO `commodity` VALUES (110, 105, '586517619194', '2019-09-20 15:35:23', '2019-09-20 15:35:23', 11, '直播间2号', 'https://s.click.taobao.com/i9vLV0w', 10.00, '', '九阳净水器家用T02水龙头过滤器四芯套装厨房净水机自来水净化器', 'https://img.alicdn.com/bao/uploaded/i4/4244469338/O1CN01nx6nhK2Iqr1TdpA12_!!0-item_pic.jpg', 99.00);
INSERT INTO `commodity` VALUES (114, 105, '589130080207', '2019-09-20 15:37:21', '2019-09-20 15:37:21', 11, '直播间2号', 'https://s.click.taobao.com/nI1LV0w', 420.00, '', '奥克斯加热破壁料理机家用多功能小型全自动豆浆辅食榨汁养生搅拌', 'https://img.alicdn.com/bao/uploaded/i2/732062877/O1CN01FKMG5l1X7i2ZUYYUP_!!0-item_pic.jpg', 699.00);
INSERT INTO `commodity` VALUES (133, 105, '598170746410', '2019-09-20 15:50:43', '2019-09-20 15:50:43', 11, '直播间2号', 'https://s.click.taobao.com/xL8FV0w', 50.00, '', '北极绒儿童轻薄羽绒服秋冬短款童装宝宝男童女童小孩中大童外套', 'https://img.alicdn.com/bao/uploaded/i4/2456801024/O1CN01PYXsQJ1JR28Bp3Vht_!!0-item_pic.jpg', 109.00);
INSERT INTO `commodity` VALUES (134, 105, '42896278235', '2019-09-20 15:51:12', '2019-09-20 15:51:12', 11, '直播间2号', 'https://s.click.taobao.com/MG4FV0w', 20.00, '', '飞科男士剃须刀电动刮胡刀智能充电式官方旗舰店正品胡须刀FS372', 'https://img.alicdn.com/bao/uploaded/i4/704957370/O1CN01FTRcFQ24JVZ1dfjB2_!!0-item_pic.jpg', 89.00);
INSERT INTO `commodity` VALUES (135, 105, '600352237353', '2019-09-20 15:51:40', '2019-09-20 15:51:40', 11, '直播间2号', 'https://s.click.taobao.com/Y6rEV0w', 70.00, '', '史努比儿童轻薄羽绒服反季女童冬装外套男童宝宝2019新款中小童装', 'https://img.alicdn.com/bao/uploaded/i2/2200722437195/O1CN01mtteS6231MFbEjYQz_!!0-item_pic.jpg', 158.00);
INSERT INTO `commodity` VALUES (137, 105, '602563630515', '2019-09-20 15:52:52', '2019-09-20 15:52:52', 11, '直播间2号', 'https://s.click.taobao.com/bTHEV0w', 90.00, '', '[预售]安睡宝四孔抗菌纤维被夏凉被空调被四季通用春秋被子被芯冬', 'https://img.alicdn.com/bao/uploaded/i3/2430446735/O1CN01Dr5uVF1zcg3wITCc4_!!0-item_pic.jpg', 174.00);
INSERT INTO `commodity` VALUES (139, 105, '595861550885', '2019-09-20 15:55:13', '2019-09-20 15:55:13', 11, '直播间2号', 'https://s.click.taobao.com/BhEDV0w', 10.00, '', '背背佳KK3驼背矫正器女成年抖音同款男成人隐形矫正带儿童夏薄款', 'https://img.alicdn.com/bao/uploaded/i1/1829120473/O1CN01mKHdiv1FMftgUQHYd_!!0-item_pic.jpg', 59.00);
INSERT INTO `commodity` VALUES (141, 105, '548041337661', '2019-09-20 15:56:12', '2019-09-20 15:56:12', 11, '直播间2号', 'https://s.click.taobao.com/iAnCV0w', 40.00, '', '360儿童电话手表智能防水手环男女孩gps定位手机小学生初中生多功能se3plus', 'https://img.alicdn.com/bao/uploaded/i4/2977102810/O1CN01QtQOum1Wd1VN8RxwT_!!0-item_pic.jpg', 159.00);
INSERT INTO `commodity` VALUES (142, 105, '573309632803', '2019-09-20 15:57:29', '2019-09-20 15:57:29', 11, '直播间2号', 'https://s.click.taobao.com/QXGCV0w', 10.00, '', '南极人宝宝秋衣秋裤套装男女儿童1-3岁婴儿高腰0纯棉薄款内衣睡衣', 'https://img.alicdn.com/bao/uploaded/i4/2452429704/O1CN01cyCppg2LYTvbLMe6U_!!0-item_pic.jpg', 39.90);
INSERT INTO `commodity` VALUES (143, 105, '601013807046', '2019-09-20 15:57:49', '2019-09-20 15:57:49', 11, '直播间2号', 'https://s.click.taobao.com/8U9CV0w', 80.00, '', '海尔除螨仪家用床上吸尘器小型去螨虫神器吸螨虫紫外线杀菌除蝻机', 'https://img.alicdn.com/bao/uploaded/i3/2206416487886/O1CN01pBGRFH287pw4UL9ny_!!0-item_pic.jpg', 229.00);
INSERT INTO `commodity` VALUES (144, 105, '590863741066', '2019-09-20 15:58:29', '2019-09-20 15:58:29', 11, '直播间2号', 'https://s.click.taobao.com/6UqBV0w', 50.00, '', '优彼伴读宝绘本慧阅读机器人优比儿童早教学习点读机0-3-6岁玩具', 'https://img.alicdn.com/bao/uploaded/i4/1683750105/O1CN01HyoRmJ1Ce894Hu2bl_!!0-item_pic.jpg', 99.90);
INSERT INTO `commodity` VALUES (145, 105, '565068199347', '2019-09-20 15:58:46', '2019-09-20 15:58:46', 11, '直播间2号', 'https://s.click.taobao.com/WbeBV0w', 20.00, '', '威尔胜护膝运动男女篮球装备跑步健身专业深蹲半月板损伤膝盖护具', 'https://img.alicdn.com/bao/uploaded/i3/3372095646/O1CN01LfUnk01rZukG6L8PP_!!0-item_pic.jpg', 49.00);
INSERT INTO `commodity` VALUES (156, 105, '598903651958', '2019-09-20 16:03:55', '2019-09-20 16:03:55', 11, '直播间2号', 'https://s.click.taobao.com/XpN9V0w', 120.00, '', '汤臣倍健健力多氨糖软骨素加钙100/180片中老年人补钙官方旗舰店', 'https://img.alicdn.com/bao/uploaded/i3/2201447300868/O1CN01V1J5ib1IHaLFIm22x_!!0-item_pic.jpg', 219.00);
INSERT INTO `commodity` VALUES (157, 105, '560400464482', '2019-09-20 16:05:01', '2019-09-20 16:05:01', 11, '直播间2号', 'https://s.click.taobao.com/ZPt8V0w', 70.00, '', '棒棒猪婴儿童升降防掉床护栏杆宝宝防摔床围栏防护栏大床1.8-2米', 'https://img.alicdn.com/bao/uploaded/i4/3009472713/O1CN01hTZvKa1Vub5FTuFuP_!!0-item_pic.jpg', 228.00);
INSERT INTO `commodity` VALUES (160, 105, '575369973035', '2019-09-20 16:08:03', '2019-09-20 16:08:03', 11, '直播间2号', 'https://s.click.taobao.com/XDY7V0w', 3.00, '', '新生婴儿连体衣春秋婴儿长袖衣服秋冬女宝宝纯棉保暖秋装哈衣爬服', 'https://img.alicdn.com/bao/uploaded/i1/2567367139/O1CN01HDSXcs22bi4QfpGjG_!!2567367139.jpg', 15.20);
INSERT INTO `commodity` VALUES (163, 105, '597027174028', '2019-09-20 16:11:23', '2019-09-20 16:11:23', 11, '直播间2号', 'https://s.click.taobao.com/r426V0w', 40.00, '', 'hellokitty 女童装摇粒绒外套春秋婴儿开衫儿童女宝宝抓绒上衣', 'https://img.alicdn.com/bao/uploaded/i3/2431074799/O1CN01rFBUqZ1lJzHPBccZg_!!0-item_pic.jpg', 99.00);
INSERT INTO `commodity` VALUES (164, 105, '526606584292', '2019-09-20 16:11:47', '2019-09-20 16:11:47', 11, '直播间2号', 'https://s.click.taobao.com/z5p5V0w', 2.00, '', '贝倍馨奶瓶刷婴儿洗奶瓶刷子奶嘴刷吸管刷清洗清洁刷海绵套装旋转', 'https://img.alicdn.com/bao/uploaded/i1/1652882575/O1CN01W0gMDy1UtONzaVmYA_!!0-item_pic.jpg', 9.80);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (2, 'term', '时限管理', 'Term', 'crud', 'com.ruoyi.taoke', 'taoke', 'term', '时限管理', 'XRZ', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-02 00:37:29', '', '2019-09-02 01:18:16', '');
INSERT INTO `gen_table` VALUES (4, 'webset', '网页配置', 'Webset', 'crud', 'com.ruoyi.taoke', 'taoke', 'webset', '网页配置', 'XRZ', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-02 00:58:27', '', '2019-09-02 01:16:28', '');
INSERT INTO `gen_table` VALUES (7, 'poster', '海报配置', 'Poster', 'crud', 'com.ruoyi.taoke', 'taoke', 'poster', '海报配置', 'XRZ', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-03 01:35:40', '', '2019-09-03 01:36:14', '');
INSERT INTO `gen_table` VALUES (9, 'commodity', '商品信息', 'Commodity', 'crud', 'com.ruoyi.taoke', 'taoke', 'commodity', '商品信息', 'XRZ', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-08 17:00:13', '', '2019-09-08 17:00:49', '');
INSERT INTO `gen_table` VALUES (11, 'category', '分类表', 'Category', 'crud', 'com.ruoyi.taoke', 'taoke', 'category', '分类', 'XRZ', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-10 15:26:05', '', '2019-09-10 15:26:24', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (7, '2', 'u_id', '用户id', 'bigint(20)', 'Long', 'uId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-09-02 00:37:29', NULL, '2019-09-02 01:18:16');
INSERT INTO `gen_table_column` VALUES (8, '2', 'available_time', '可用时间，单位：毫秒（默认7天）', 'varchar(250)', 'String', 'availableTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-09-02 00:37:29', NULL, '2019-09-02 01:18:16');
INSERT INTO `gen_table_column` VALUES (9, '2', 'created_date', '创建时间', 'timestamp', 'Date', 'createdDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2019-09-02 00:37:29', NULL, '2019-09-02 01:18:16');
INSERT INTO `gen_table_column` VALUES (10, '2', 'updated_date', '最后修改时间', 'timestamp', 'Date', 'updatedDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2019-09-02 00:37:29', NULL, '2019-09-02 01:18:16');
INSERT INTO `gen_table_column` VALUES (17, '4', 'u_id', '用户id', 'bigint(20)', 'Long', 'uId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (18, '4', 'title', '网页标题', 'varchar(250)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (19, '4', 'video_img', '视频封面', 'varchar(500)', 'String', 'videoImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (20, '4', 'video_url', '视频地址', 'varchar(500)', 'String', 'videoUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (21, '4', 'created_date', '创建时间', 'timestamp', 'Date', 'createdDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (22, '4', 'updated_date', '最后修改时间', 'timestamp', 'Date', 'updatedDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-09-02 00:58:27', NULL, '2019-09-02 01:16:28');
INSERT INTO `gen_table_column` VALUES (32, '7', 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (33, '7', 'u_id', '用户id', 'bigint(20)', 'Long', 'uId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (34, '7', 'title', '海报标题', 'varchar(250)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (35, '7', 'img_url', '展示图片', 'varchar(500)', 'String', 'imgUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (36, '7', 'type', '海报类型(0=轮播图/1=主播精选/2=其他推荐)', 'int(3)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (37, '7', 'created_date', '创建时间', 'timestamp', 'Date', 'createdDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (38, '7', 'updated_date', '最后修改时间', 'timestamp', 'Date', 'updatedDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2019-09-03 01:35:40', NULL, '2019-09-03 01:36:14');
INSERT INTO `gen_table_column` VALUES (48, '9', 'id', 'ID', 'bigint(20)', 'String', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (49, '9', 'u_id', '用户ID', 'bigint(20)', 'String', 'uId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (50, '9', 'c_id', '商品ID', 'varchar(20)', 'String', 'cId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (51, '9', 'created_date', '创建时间', 'timestamp', 'String', 'createdDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (52, '9', 'updated_date', '最后修改时间', 'timestamp', 'String', 'updatedDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (53, '9', 'category_id', '分类ID', 'int(11)', 'String', 'categoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (54, '9', 'category_name', '分类名称', 'varchar(255)', 'String', 'categoryName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (55, '9', 'coupon_url', '优惠券领取URL', 'varchar(1000)', 'String', 'couponUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (56, '9', 'coupon_price', '优惠券价格', 'decimal(18,2)', 'BigDecimal', 'couponPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (57, '9', 'label', '标签', 'varchar(255)', 'String', 'label', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2019-09-08 17:00:13', NULL, '2019-09-08 17:00:49');
INSERT INTO `gen_table_column` VALUES (61, '11', 'id', '分类ID', 'int(11)', 'String', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-09-10 15:26:05', NULL, '2019-09-10 15:26:24');
INSERT INTO `gen_table_column` VALUES (62, '11', 'category_name', '分类名字', 'varchar(255)', 'String', 'categoryName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-09-10 15:26:05', NULL, '2019-09-10 15:26:24');
INSERT INTO `gen_table_column` VALUES (63, '11', 'category_remarks', '分类备注', 'varchar(500)', 'String', 'categoryRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2019-09-10 15:26:05', NULL, '2019-09-10 15:26:24');
INSERT INTO `gen_table_column` VALUES (64, '11', 'user_id', '用户ID', 'varchar(20)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-09-10 15:26:05', NULL, '2019-09-10 15:26:25');
INSERT INTO `gen_table_column` VALUES (65, '11', 'enable', '是否启用（1=启用，0=禁用） 默认为1', 'int(2)', 'Integer', 'enable', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-09-10 15:26:05', NULL, '2019-09-10 15:26:25');

-- ----------------------------
-- Table structure for poster
-- ----------------------------
DROP TABLE IF EXISTS `poster`;
CREATE TABLE `poster`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '海报标题',
  `img_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '展示图片',
  `type` int(3) NULL DEFAULT 0 COMMENT '海报类型(0=轮播图/1=主播精选/2=其他推荐)',
  `created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of poster
-- ----------------------------
INSERT INTO `poster` VALUES (5, 104, 'tomcat的商品5', 'https://img.alicdn.com/tps/i4/TB1AYgqekY2gK0jSZFgSuw5OFXa.jpg', 0, '2019-09-03 01:45:52', '2019-09-12 07:06:27');
INSERT INTO `poster` VALUES (16, 1, '12', 'http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/85c88a1760084c4f88a10db621f8680f.jpg', 0, '2019-09-12 23:18:23', '2019-09-12 23:18:23');
INSERT INTO `poster` VALUES (24, 104, '1', 'http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/09e88c487ee44bb0bb1de9322416ed97.jpg', 0, '2019-09-19 15:23:08', '2019-09-19 15:23:08');
INSERT INTO `poster` VALUES (25, 105, '直播间粉丝福利', 'http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/f7a30d6efb8f473aa3345eaae439966a.JPG', 0, '2019-09-19 15:53:06', '2019-09-19 15:53:06');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'iZbp15jezzajt9dqvg126lZ1568302135548', 1569405580209, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1568302140000, -1, 5, 'PAUSED', 'CRON', 1568302136000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1568302140000, -1, 5, 'PAUSED', 'CRON', 1568302138000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1568302140000, -1, 5, 'PAUSED', 'CRON', 1568302139000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '淘客工具', 0, 'Taoke', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-02 21:56:30');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-02 21:56:30');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '管理组', 1, 'Taoke', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-02 21:56:30');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (200, 101, '0,100,101', '用户组', 2, 'tomcat', '13143098753', '397047243@qq.com', '0', '0', 'admin', '2019-09-02 22:08:21', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 17:51:33');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-01 20:50:55');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-01 20:50:59');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 20:51:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 21:47:55');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-01 21:53:16');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 21:53:19');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 22:18:16');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 22:25:50');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-01 23:44:29');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-01 23:44:34');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 23:44:37');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-01 23:45:09');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-01 23:45:17');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 00:36:57');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 01:13:00');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 01:21:10');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 01:21:15');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-02 01:22:45');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 01:23:04');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 21:26:25');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 21:49:31');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 21:49:34');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:04:59');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-02 22:08:59');
INSERT INTO `sys_logininfor` VALUES (125, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 22:09:06');
INSERT INTO `sys_logininfor` VALUES (126, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 22:09:09');
INSERT INTO `sys_logininfor` VALUES (127, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:09:11');
INSERT INTO `sys_logininfor` VALUES (128, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-02 22:09:29');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:09:32');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:23:35');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:34:44');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 22:45:00');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:09:12');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:10:00');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 23:13:43');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 23:13:47');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:13:52');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:14:45');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:15:53');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:17:44');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:19:24');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-02 23:45:46');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 23:45:54');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-02 23:46:11');
INSERT INTO `sys_logininfor` VALUES (145, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-02 23:46:20');
INSERT INTO `sys_logininfor` VALUES (146, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-02 23:46:24');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-02 23:47:57');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-02 23:48:07');
INSERT INTO `sys_logininfor` VALUES (149, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:48:15');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-02 23:59:14');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:03:22');
INSERT INTO `sys_logininfor` VALUES (152, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 00:04:03');
INSERT INTO `sys_logininfor` VALUES (153, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:04:05');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 00:06:08');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:06:11');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:07:54');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:07:57');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:08:04');
INSERT INTO `sys_logininfor` VALUES (159, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 00:08:10');
INSERT INTO `sys_logininfor` VALUES (160, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:08:12');
INSERT INTO `sys_logininfor` VALUES (161, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:33:04');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:34:34');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:34:37');
INSERT INTO `sys_logininfor` VALUES (164, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 00:34:44');
INSERT INTO `sys_logininfor` VALUES (165, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 00:34:50');
INSERT INTO `sys_logininfor` VALUES (166, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:35:10');
INSERT INTO `sys_logininfor` VALUES (167, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:40:47');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:40:53');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 00:41:32');
INSERT INTO `sys_logininfor` VALUES (170, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:41:39');
INSERT INTO `sys_logininfor` VALUES (171, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 00:49:53');
INSERT INTO `sys_logininfor` VALUES (172, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:49:56');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 00:52:13');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:00:54');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:06:51');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 01:07:48');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:07:50');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:27:44');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:43:54');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:47:57');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:52:56');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:55:11');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 01:59:23');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-03 02:06:23');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 02:06:26');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 02:13:22');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 12:13:12');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-03 12:13:22');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 12:14:24');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 13:57:07');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 13:57:10');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 14:06:22');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 14:23:40');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 14:27:25');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 14:58:21');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 15:02:25');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:02:33');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 15:29:47');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:29:51');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:38:30');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 15:41:46');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:41:49');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-03 15:51:10');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:51:14');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 15:51:42');
INSERT INTO `sys_logininfor` VALUES (206, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:51:50');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:54:03');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 15:57:00');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:07:33');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:11:25');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:15:10');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:25:27');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:32:36');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:35:56');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 16:37:41');
INSERT INTO `sys_logininfor` VALUES (216, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:37:47');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:41:21');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 16:41:36');
INSERT INTO `sys_logininfor` VALUES (219, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:41:41');
INSERT INTO `sys_logininfor` VALUES (220, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 16:41:48');
INSERT INTO `sys_logininfor` VALUES (221, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:41:58');
INSERT INTO `sys_logininfor` VALUES (222, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 16:43:45');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:43:50');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:49:00');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:51:11');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:53:39');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-03 16:53:51');
INSERT INTO `sys_logininfor` VALUES (228, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-03 16:53:57');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-04 17:12:33');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-04 17:12:39');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-04 18:39:33');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-04 18:58:06');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-05 10:26:55');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 10:26:59');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-05 10:32:16');
INSERT INTO `sys_logininfor` VALUES (236, 'tomcat', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 10:32:22');
INSERT INTO `sys_logininfor` VALUES (237, 'tomcat', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-05 10:32:45');
INSERT INTO `sys_logininfor` VALUES (238, 'mouse', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 10:32:54');
INSERT INTO `sys_logininfor` VALUES (239, 'mouse', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-05 10:35:06');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 10:35:12');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-09-05 10:58:23');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '119.123.69.39', '广东 深圳', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-05 10:58:36');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '192.168.1.24', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 16:56:50');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 17:04:49');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 17:07:00');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-05 17:07:44');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-09-05 17:08:53');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-05 17:09:02');
INSERT INTO `sys_logininfor` VALUES (249, 'tomcat', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-05 17:10:10');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-05 17:15:53');
INSERT INTO `sys_logininfor` VALUES (251, 'tomcat', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-05 17:15:57');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-06 09:03:10');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-06 09:50:00');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-09-06 14:35:05');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '119.123.69.39', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-06 14:35:11');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-08 00:22:00');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 00:22:05');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 13:16:48');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 13:43:11');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 13:48:14');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '119.123.67.14', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-08 14:05:56');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '119.123.67.14', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-08 14:06:01');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 16:52:16');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 17:04:10');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 17:52:01');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-08 17:55:04');
INSERT INTO `sys_logininfor` VALUES (267, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 17:55:09');
INSERT INTO `sys_logininfor` VALUES (268, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-08 18:07:42');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 18:07:45');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 18:12:25');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 18:17:17');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 18:21:14');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-08 23:53:28');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:14:06');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:17:22');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 00:38:24');
INSERT INTO `sys_logininfor` VALUES (277, 'tomat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-09 00:38:26');
INSERT INTO `sys_logininfor` VALUES (278, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:38:32');
INSERT INTO `sys_logininfor` VALUES (279, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 00:38:42');
INSERT INTO `sys_logininfor` VALUES (280, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:38:51');
INSERT INTO `sys_logininfor` VALUES (281, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 00:51:22');
INSERT INTO `sys_logininfor` VALUES (282, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-09 00:51:25');
INSERT INTO `sys_logininfor` VALUES (283, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:51:28');
INSERT INTO `sys_logininfor` VALUES (284, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 00:59:51');
INSERT INTO `sys_logininfor` VALUES (285, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 02:03:16');
INSERT INTO `sys_logininfor` VALUES (286, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:03:26');
INSERT INTO `sys_logininfor` VALUES (287, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 02:08:38');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:08:40');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:18:06');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 02:20:54');
INSERT INTO `sys_logininfor` VALUES (291, 'tomcat', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:21:00');
INSERT INTO `sys_logininfor` VALUES (292, 'tomcat', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 02:22:31');
INSERT INTO `sys_logininfor` VALUES (293, 'tomcat', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:23:24');
INSERT INTO `sys_logininfor` VALUES (294, 'tomcat', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 02:26:51');
INSERT INTO `sys_logininfor` VALUES (295, 'tomcat', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 02:27:52');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 10:55:07');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 10:55:10');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 10:57:31');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 11:04:31');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-09 11:06:58');
INSERT INTO `sys_logininfor` VALUES (301, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 11:07:03');
INSERT INTO `sys_logininfor` VALUES (302, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-09 11:07:06');
INSERT INTO `sys_logininfor` VALUES (303, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 11:07:20');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 11:17:43');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 11:20:38');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 14:09:37');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 14:11:35');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 15:19:03');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 15:21:23');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 15:28:25');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 21:07:54');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-09-09 21:07:58');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-09-09 21:08:05');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-09-09 21:17:11');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-09 21:34:22');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 22:11:06');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-09 22:11:10');
INSERT INTO `sys_logininfor` VALUES (318, 'mouse', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-09 22:11:53');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '119.123.64.142', 'XX XX', 'Firefox', 'Windows 10', '0', '退出成功', '2019-09-09 22:11:56');
INSERT INTO `sys_logininfor` VALUES (320, 'mouse', '101.46.112.255', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-09 22:11:57');
INSERT INTO `sys_logininfor` VALUES (321, 'tomcat', '119.123.69.145', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-09 22:12:05');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 09:18:32');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-10 09:18:36');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '退出成功', '2019-09-10 09:18:43');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 09:18:48');
INSERT INTO `sys_logininfor` VALUES (326, 'tomcat', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-10 09:18:48');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 09:40:56');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 10:26:47');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-10 10:27:09');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '退出成功', '2019-09-10 10:53:22');
INSERT INTO `sys_logininfor` VALUES (331, 'tomcat', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-10 10:53:26');
INSERT INTO `sys_logininfor` VALUES (332, 'tomcat', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '退出成功', '2019-09-10 10:53:37');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 10:53:39');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '119.123.68.68', 'XX XX', 'Firefox', 'Windows 10', '0', '登录成功', '2019-09-10 10:53:42');
INSERT INTO `sys_logininfor` VALUES (335, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 10:54:44');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-10 14:40:58');
INSERT INTO `sys_logininfor` VALUES (337, 'mouse', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 14:41:11');
INSERT INTO `sys_logininfor` VALUES (338, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 14:42:06');
INSERT INTO `sys_logininfor` VALUES (339, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 14:42:10');
INSERT INTO `sys_logininfor` VALUES (340, 'mouse', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-10 14:43:15');
INSERT INTO `sys_logininfor` VALUES (341, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 14:43:26');
INSERT INTO `sys_logininfor` VALUES (342, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 14:45:19');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 14:45:23');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '121.35.101.102', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 14:49:06');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '121.35.101.102', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-10 14:49:08');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '121.35.101.102', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-09-10 14:49:09');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '121.35.101.102', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误4次', '2019-09-10 14:49:10');
INSERT INTO `sys_logininfor` VALUES (348, 'tomcat', '121.35.101.102', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 14:49:25');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 14:58:12');
INSERT INTO `sys_logininfor` VALUES (350, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 14:58:16');
INSERT INTO `sys_logininfor` VALUES (351, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 14:58:37');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 14:58:41');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 15:34:25');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 15:49:56');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 15:54:58');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 16:02:18');
INSERT INTO `sys_logininfor` VALUES (357, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:02:24');
INSERT INTO `sys_logininfor` VALUES (358, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 16:02:33');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:02:36');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 16:03:04');
INSERT INTO `sys_logininfor` VALUES (361, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:03:08');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:23:07');
INSERT INTO `sys_logininfor` VALUES (363, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 16:27:15');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 16:34:24');
INSERT INTO `sys_logininfor` VALUES (365, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:37:57');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 16:38:08');
INSERT INTO `sys_logininfor` VALUES (367, 'tomcat', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 16:42:42');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 16:42:46');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 17:08:58');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 17:13:20');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 17:48:51');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 17:50:23');
INSERT INTO `sys_logininfor` VALUES (373, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 18:09:17');
INSERT INTO `sys_logininfor` VALUES (374, 'tomcat', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 18:11:37');
INSERT INTO `sys_logininfor` VALUES (375, 'tomcat', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-10 18:11:40');
INSERT INTO `sys_logininfor` VALUES (376, 'tomcat', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-09-10 18:11:46');
INSERT INTO `sys_logininfor` VALUES (377, 'tomcat', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 18:11:49');
INSERT INTO `sys_logininfor` VALUES (378, 'mouse', '119.123.68.68', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-10 18:14:41');
INSERT INTO `sys_logininfor` VALUES (379, 'mouse', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 22:30:17');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 22:32:39');
INSERT INTO `sys_logininfor` VALUES (381, 'mouse', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 22:37:01');
INSERT INTO `sys_logininfor` VALUES (382, 'mouse', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 22:37:07');
INSERT INTO `sys_logininfor` VALUES (383, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-10 22:42:15');
INSERT INTO `sys_logininfor` VALUES (384, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 22:42:18');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:02:00');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:43:19');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:44:21');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:48:18');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:51:21');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 23:53:23');
INSERT INTO `sys_logininfor` VALUES (391, 'tomcat', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:53:29');
INSERT INTO `sys_logininfor` VALUES (392, 'tomcat', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-10 23:54:21');
INSERT INTO `sys_logininfor` VALUES (393, 'mouse', '124.42.155.121', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-10 23:54:29');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-11 09:24:52');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-11 12:13:21');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '119.123.71.155', 'XX XX', 'Microsoft Edge', 'Windows 10', '1', '密码输入错误1次', '2019-09-11 23:16:46');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '119.123.71.155', 'XX XX', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-09-11 23:16:50');
INSERT INTO `sys_logininfor` VALUES (398, 'tomcat', '101.46.124.191', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 06:57:20');
INSERT INTO `sys_logininfor` VALUES (399, 'tomcat', '101.46.124.191', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 07:19:53');
INSERT INTO `sys_logininfor` VALUES (400, 'tomcat', '101.46.124.191', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 12:14:34');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 14:22:05');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-12 14:25:26');
INSERT INTO `sys_logininfor` VALUES (403, 'mouse', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 14:25:32');
INSERT INTO `sys_logininfor` VALUES (404, 'mouse', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-12 14:28:31');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 14:28:33');
INSERT INTO `sys_logininfor` VALUES (406, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-12 14:29:00');
INSERT INTO `sys_logininfor` VALUES (407, 'mouse', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '1', '用户已封禁，请联系管理员', '2019-09-12 14:29:03');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 14:29:53');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-12 14:46:51');
INSERT INTO `sys_logininfor` VALUES (410, 'mouse', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 14:46:58');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '119.123.65.250', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-12 15:38:42');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 22:16:07');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 22:41:00');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:05:24');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:11:23');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:17:52');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-12 23:18:59');
INSERT INTO `sys_logininfor` VALUES (418, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-12 23:19:03');
INSERT INTO `sys_logininfor` VALUES (419, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:19:05');
INSERT INTO `sys_logininfor` VALUES (420, 'tomcat', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-12 23:19:59');
INSERT INTO `sys_logininfor` VALUES (421, 'mouse', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:20:46');
INSERT INTO `sys_logininfor` VALUES (422, 'tomcat', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-12 23:31:07');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-13 12:56:14');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-13 12:56:47');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-13 12:56:53');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-13 12:57:19');
INSERT INTO `sys_logininfor` VALUES (427, 'tomcat', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-13 12:57:24');
INSERT INTO `sys_logininfor` VALUES (428, 'tomcat', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-13 12:57:34');
INSERT INTO `sys_logininfor` VALUES (429, 'mouse', '183.25.148.59', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-13 12:57:43');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '119.123.65.235', 'XX XX', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-09-17 10:51:41');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '119.123.65.235', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-17 10:51:46');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '119.123.65.235', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-17 10:56:23');
INSERT INTO `sys_logininfor` VALUES (433, 'mouse', '119.123.65.235', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-17 10:56:27');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 10:01:43');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-19 10:01:54');
INSERT INTO `sys_logininfor` VALUES (436, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 10:01:56');
INSERT INTO `sys_logininfor` VALUES (437, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 10:52:09');
INSERT INTO `sys_logininfor` VALUES (438, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-19 10:55:23');
INSERT INTO `sys_logininfor` VALUES (439, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 10:55:26');
INSERT INTO `sys_logininfor` VALUES (440, 'tomcat', '121.35.103.114', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-19 11:05:02');
INSERT INTO `sys_logininfor` VALUES (441, 'mouse', '121.35.103.114', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-19 11:06:54');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 13:36:09');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-19 13:36:48');
INSERT INTO `sys_logininfor` VALUES (444, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 13:36:51');
INSERT INTO `sys_logininfor` VALUES (445, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-19 13:39:01');
INSERT INTO `sys_logininfor` VALUES (446, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 13:39:05');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 14:15:14');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '退出成功', '2019-09-19 14:18:29');
INSERT INTO `sys_logininfor` VALUES (449, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 14:18:32');
INSERT INTO `sys_logininfor` VALUES (450, 'tomcat', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-19 15:22:10');
INSERT INTO `sys_logininfor` VALUES (451, 'tomcat', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-19 15:23:39');
INSERT INTO `sys_logininfor` VALUES (452, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-19 15:23:44');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-19 15:31:57');
INSERT INTO `sys_logininfor` VALUES (454, 'tomcat', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-19 16:21:12');
INSERT INTO `sys_logininfor` VALUES (455, 'mouse', '119.123.70.25', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-09-20 15:45:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2036 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 99, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-10 15:00:06', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 99, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-10 15:00:26', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 99, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-10 15:00:21', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2005, '海报配置', 2020, 1, '/taoke/poster', 'menuItem', 'C', '0', 'taoke:poster:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-09-02 21:41:29', '海报配置菜单');
INSERT INTO `sys_menu` VALUES (2006, '海报配置查询', 2005, 1, '#', '', 'F', '0', 'taoke:poster:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2007, '海报配置新增', 2005, 2, '#', '', 'F', '0', 'taoke:poster:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2008, '海报配置修改', 2005, 3, '#', '', 'F', '0', 'taoke:poster:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2009, '海报配置删除', 2005, 4, '#', '', 'F', '0', 'taoke:poster:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2010, '时限管理', 2028, 1, '/taoke/term', 'menuItem', 'C', '0', 'taoke:term:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-09-02 22:02:14', '时限管理菜单');
INSERT INTO `sys_menu` VALUES (2011, '时限管理查询', 2010, 1, '#', '', 'F', '0', 'taoke:term:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2012, '时限管理新增', 2010, 2, '#', '', 'F', '0', 'taoke:term:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2013, '时限管理修改', 2010, 3, '#', '', 'F', '0', 'taoke:term:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2014, '时限管理删除', 2010, 4, '#', '', 'F', '0', 'taoke:term:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2015, '首页装修', 2020, 1, '/taoke/webset', 'menuItem', 'C', '0', 'taoke:webset:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-09-10 16:43:37', '网页配置菜单');
INSERT INTO `sys_menu` VALUES (2016, '网页配置查询', 2015, 1, '#', '', 'F', '0', 'taoke:webset:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2017, '网页配置新增', 2015, 2, '#', '', 'F', '0', 'taoke:webset:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2018, '网页配置修改', 2015, 3, '#', '', 'F', '0', 'taoke:webset:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '网页配置删除', 2015, 4, '#', '', 'F', '0', 'taoke:webset:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2020, '网站管理', 0, 2, '#', 'menuItem', 'M', '0', NULL, 'fa fa-globe', 'admin', '2019-09-02 21:38:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '商品管理', 0, 2, '#', 'menuItem', 'M', '0', '', 'fa fa-archive', 'admin', '2019-09-02 21:39:21', 'admin', '2019-09-10 15:00:55', '');
INSERT INTO `sys_menu` VALUES (2023, '商品管理', 2021, 1, '/taoke/commodity', 'menuItem', 'C', '0', 'taoke:commodity:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-09-02 21:50:48', '商品管理菜单');
INSERT INTO `sys_menu` VALUES (2024, '商品管理查询', 2023, 1, '#', '', 'F', '0', 'taoke:commodity:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '商品管理新增', 2023, 2, '#', '', 'F', '0', 'taoke:commodity:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '商品管理修改', 2023, 3, '#', '', 'F', '0', 'taoke:commodity:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2027, '商品管理删除', 2023, 4, '#', '', 'F', '0', 'taoke:commodity:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2028, '用户管理', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-address-book', 'admin', '2019-09-02 22:02:01', 'admin', '2019-09-10 14:59:17', '');
INSERT INTO `sys_menu` VALUES (2030, '分类管理', 2021, 1, '/taoke/category', 'menuItem', 'C', '0', 'taoke:category:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-09-08 18:13:33', '分类菜单');
INSERT INTO `sys_menu` VALUES (2031, '分类查询', 2030, 1, '#', '', 'F', '0', 'taoke:category:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2032, '分类新增', 2030, 2, '#', '', 'F', '0', 'taoke:category:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2033, '分类修改', 2030, 3, '#', '', 'F', '0', 'taoke:category:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2034, '分类删除', 2030, 4, '#', '', 'F', '0', 'taoke:category:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2035, '个人中心', 0, 0, '/system/user/profile', 'menuItem', 'C', '0', '', 'fa fa-user', 'admin', '2019-09-10 14:55:50', 'admin', '2019-09-10 15:00:34', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 602 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '重置密码', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"oldPassword\":[\"root321!\"],\"newPassword\":[\"123456\"],\"confirmPassword\":[\"123456\"]}', 0, NULL, '2019-09-01 23:45:04');
INSERT INTO `sys_oper_log` VALUES (101, '重置密码', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"oldPassword\":[\"123456\"],\"newPassword\":[\"admin\"],\"confirm\":[\"admin\"]}', 0, NULL, '2019-09-01 23:45:43');
INSERT INTO `sys_oper_log` VALUES (102, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-01 23:47:00');
INSERT INTO `sys_oper_log` VALUES (103, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-01 23:48:02');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"term,poster,web_set\"]}', 0, NULL, '2019-09-02 00:37:29');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"poster,term,web_set\"]}', 0, NULL, '2019-09-02 00:37:53');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', 0, NULL, '2019-09-02 00:58:23');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"webset\"]}', 0, NULL, '2019-09-02 00:58:27');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"webset\"]}', 0, NULL, '2019-09-02 00:58:30');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2000', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:14:51');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:14:56');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:15:04');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:15:10');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2004', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:15:16');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2000', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 01:15:23');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"webset\"],\"tableComment\":[\"网页配置\"],\"className\":[\"Webset\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"17\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"用户id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"uId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"18\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"网页标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"19\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"视频封面\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"videoImg\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"20\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"视频地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"videoUrl\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"21\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createdDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"22\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"最后修改时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"update', 0, NULL, '2019-09-02 01:16:28');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"poster\"],\"tableComment\":[\"海报配置\"],\"className\":[\"Poster\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"用户id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"uId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"海报标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"展示图片\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"imgUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"海报类型(0=轮播图/1=主播精选/2=其他推荐)\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"type\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createdDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"最后修改时间\"],\"columns[5].javaType\":[\"', 0, NULL, '2019-09-02 01:17:51');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"term\"],\"tableComment\":[\"时限管理\"],\"className\":[\"Term\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"7\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"用户id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"uId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"8\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"可用时间，单位：毫秒（默认7天）\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"availableTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"9\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createdDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"10\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"最后修改时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"updatedDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.taoke\"],\"moduleName\":[\"taoke\"],\"businessName\":[\"term\"],\"functionName\":[\"时限管理\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', 0, NULL, '2019-09-02 01:18:16');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"webset,poster,term\"]}', 0, NULL, '2019-09-02 01:18:22');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"网站管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-globe\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:38:29');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"商品管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-archive\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:39:21');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统配置\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-cogs\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:40:36');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2020\"],\"menuType\":[\"C\"],\"menuName\":[\"海报配置\"],\"url\":[\"/taoke/poster\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:poster:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:41:29');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2022\"],\"menuType\":[\"C\"],\"menuName\":[\"时限管理\"],\"url\":[\"/taoke/term\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:term:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:41:49');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2015\"],\"parentId\":[\"2020\"],\"menuType\":[\"C\"],\"menuName\":[\"网页配置\"],\"url\":[\"/taoke/webset\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:webset:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:42:38');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-02 21:45:34');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"commodity\"],\"tableComment\":[\"商品管理\"],\"className\":[\"Commodity\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"23\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"用户ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"uId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"24\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"商品ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"cId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"25\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createdDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"26\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"最后修改时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"updatedDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.taoke\"],\"moduleName\":[\"taoke\"],\"businessName\":[\"commodity\"],\"functionName\":[\"商品管理\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', 0, NULL, '2019-09-02 21:45:58');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-02 21:46:03');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2023\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/taoke/commodity\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:commodity:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:50:48');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:51:18');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:51:26');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 21:51:43');
INSERT INTO `sys_oper_log` VALUES (132, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"淘客工具\"],\"orderNum\":[\"0\"],\"leader\":[\"Taoke\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-09-02 21:55:24');
INSERT INTO `sys_oper_log` VALUES (133, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:31');
INSERT INTO `sys_oper_log` VALUES (134, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:35');
INSERT INTO `sys_oper_log` VALUES (135, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:38');
INSERT INTO `sys_oper_log` VALUES (136, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:41');
INSERT INTO `sys_oper_log` VALUES (137, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:44');
INSERT INTO `sys_oper_log` VALUES (138, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:50');
INSERT INTO `sys_oper_log` VALUES (139, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:53');
INSERT INTO `sys_oper_log` VALUES (140, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:55');
INSERT INTO `sys_oper_log` VALUES (141, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 21:55:59');
INSERT INTO `sys_oper_log` VALUES (142, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"深圳总公司\"],\"deptName\":[\"管理组\"],\"orderNum\":[\"1\"],\"leader\":[\"Taoke\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-09-02 21:56:30');
INSERT INTO `sys_oper_log` VALUES (143, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2021,2023,2024,2025,2026,2027,2020,2005,2006,2007,2008,2009,2015,2016,2017,2018,2019,2022,2010,2011,2012,2013,2014\"]}', 0, NULL, '2019-09-02 21:57:44');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 22:02:01');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2028\"],\"menuType\":[\"C\"],\"menuName\":[\"时限管理\"],\"url\":[\"/taoke/term\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:term:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 22:02:14');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2022\"],\"menuType\":[\"C\"],\"menuName\":[\"时限管理\"],\"url\":[\"/taoke/term/user\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-02 22:03:06');
INSERT INTO `sys_oper_log` VALUES (147, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '管理组', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"Admin\"],\"phonenumber\":[\"13143098753\"],\"email\":[\"397047234@qq.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-09-02 22:05:46');
INSERT INTO `sys_oper_log` VALUES (148, '部门管理', 1, 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '管理组', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"用户组\"],\"orderNum\":[\"2\"],\"leader\":[\"tomcat\"],\"phone\":[\"13143098753\"],\"email\":[\"397047243@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-09-02 22:08:21');
INSERT INTO `sys_oper_log` VALUES (149, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"测试用户\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143039875\"],\"email\":[\"397047243@qq.com\"],\"loginName\":[\"tomcat\"],\"password\":[\"tomcat\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"测试用户\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-09-02 22:08:51');
INSERT INTO `sys_oper_log` VALUES (150, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '管理组', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2010,2011,2012,2013,2014,2021,2023,2024,2025,2026,2027,2020,2005,2006,2007,2008,2009,2015,2016,2017,2018,2019,2022,2029\"]}', 0, NULL, '2019-09-02 22:10:00');
INSERT INTO `sys_oper_log` VALUES (151, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"tomcat\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143098755\"],\"email\":[\"397047243@qq.com\"],\"loginName\":[\"tomcat\"],\"password\":[\"tomcat\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'img_url\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.taoke.poster.mapper.PosterMapper.insertPoster-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into poster          ( u_id,             title )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'img_url\' doesn\'t have a default value\n; Field \'img_url\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'img_url\' doesn\'t have a default value', '2019-09-02 22:24:29');
INSERT INTO `sys_oper_log` VALUES (152, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"tomcat\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143098755\"],\"email\":[\"397047243@qq.com\"],\"loginName\":[\"tomcat\"],\"password\":[\"tomcat\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'102\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.taoke.poster.mapper.PosterMapper.insertPoster-Inline\r\n### The error occurred while setting parameters\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'102\' for key \'PRIMARY\'\n; Duplicate entry \'102\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'102\' for key \'PRIMARY\'', '2019-09-02 22:35:19');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"tomcat\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143098755\"],\"email\":[\"397047243@qq.com\"],\"loginName\":[\"tomcat\"],\"password\":[\"tomcat\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-09-02 22:36:18');
INSERT INTO `sys_oper_log` VALUES (154, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/term/edit', '127.0.0.1', '内网IP', '{\"uId\":[\"103\"],\"availableTime\":[\"31708800000\"]}', 0, NULL, '2019-09-02 23:38:57');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '管理组', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 23:50:33');
INSERT INTO `sys_oper_log` VALUES (156, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '管理组', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2010,2011,2012,2013,2014,2021,2023,2024,2025,2026,2027,2020,2005,2006,2007,2008,2009,2015,2016,2017,2018,2019\"]}', 0, NULL, '2019-09-02 23:51:16');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '管理组', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 23:51:21');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '管理组', '/system/menu/remove/2022', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-02 23:51:25');
INSERT INTO `sys_oper_log` VALUES (159, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/term/edit', '127.0.0.1', '内网IP', '{\"uId\":[\"103\"],\"availableTime\":[\"32313600000\"]}', 0, NULL, '2019-09-03 00:06:21');
INSERT INTO `sys_oper_log` VALUES (160, '重置密码', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'tomcat', '用户组', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"oldPassword\":[\"\"],\"newPassword\":[\"\"],\"confirmPassword\":[\"\"]}', 0, NULL, '2019-09-03 00:16:28');
INSERT INTO `sys_oper_log` VALUES (161, '重置密码', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'tomcat', '用户组', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"oldPassword\":[\"\"],\"newPassword\":[\"\"],\"confirmPassword\":[\"\"]}', 0, NULL, '2019-09-03 00:18:07');
INSERT INTO `sys_oper_log` VALUES (162, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/term/edit', '127.0.0.1', '内网IP', '{\"uId\":[\"103\"],\"availableTime\":[\"32918400000\"]}', 0, NULL, '2019-09-03 00:41:10');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity,poster\"]}', 0, NULL, '2019-09-03 01:34:11');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"webset\"]}', 0, NULL, '2019-09-03 01:34:58');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '管理组', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5,1\"]}', 0, NULL, '2019-09-03 01:35:35');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity,poster\"]}', 0, NULL, '2019-09-03 01:35:40');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"commodity\"],\"tableComment\":[\"商品配置\"],\"className\":[\"Commodity\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"uId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"商品ID\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"createdDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"最后修改时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updatedDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.taoke\"],\"moduleName\":[\"taoke\"],\"businessName\":[\"co', 0, NULL, '2019-09-03 01:35:58');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"poster\"],\"tableComment\":[\"海报配置\"],\"className\":[\"Poster\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"uId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"海报标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"展示图片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"imgUrl\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"海报类型(0=轮播图/1=主播精选/2=其他推荐)\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"type\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createdD', 0, NULL, '2019-09-03 01:36:14');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity,poster\"]}', 0, NULL, '2019-09-03 01:36:20');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '管理组', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"103\"]}', 0, NULL, '2019-09-03 01:44:06');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"tomcat\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143098755\"],\"email\":[\"397047243@qq.com\"],\"loginName\":[\"tomcat\"],\"password\":[\"tomcat\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-09-03 01:45:52');
INSERT INTO `sys_oper_log` VALUES (172, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-09-03 01:55:22');
INSERT INTO `sys_oper_log` VALUES (173, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-03 15:48:30');
INSERT INTO `sys_oper_log` VALUES (174, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-03 15:51:38');
INSERT INTO `sys_oper_log` VALUES (175, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'tomcat', '用户组', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-03 15:52:09');
INSERT INTO `sys_oper_log` VALUES (176, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"12\"],\"imgUrl\":[\"/profile/upload/2019/09/03/969a43b99a70da4a6494ed581025e505.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-03 16:20:07');
INSERT INTO `sys_oper_log` VALUES (177, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-09-03 16:20:12');
INSERT INTO `sys_oper_log` VALUES (178, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '管理组', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"200\"],\"userName\":[\"mouse\"],\"deptName\":[\"用户组\"],\"phonenumber\":[\"13143098756\"],\"email\":[\"397047242@qq.com\"],\"loginName\":[\"mouse\"],\"password\":[\"mouse\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-09-03 16:34:47');
INSERT INTO `sys_oper_log` VALUES (179, '网页配置', 2, 'com.ruoyi.taoke.webset.controller.WebsetController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/webset/edit', '127.0.0.1', '内网IP', '{\"uId\":[\"104\"],\"title\":[\"欢迎来到tomcat的网站！\"],\"videoImg\":[\"https://desk-fd.zol-img.com.cn/t_s1680x1050c5/g2/M00/0F/02/ChMlWV1mKP-IJK1xADAsyvvWhgUAAM1ygCTAywAMCzi994.jpg\"],\"videoUrl\":[\"1\"]}', 0, NULL, '2019-09-03 16:36:16');
INSERT INTO `sys_oper_log` VALUES (180, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '119.123.69.39', 'XX XX', '{}', 0, NULL, '2019-09-05 10:31:33');
INSERT INTO `sys_oper_log` VALUES (181, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'tomcat', '用户组', '/system/user/profile/updateAvatar', '119.123.69.39', '广东 深圳', '{}', 0, NULL, '2019-09-05 10:32:41');
INSERT INTO `sys_oper_log` VALUES (182, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '119.123.69.39', 'XX XX', '{\"ids\":[\"11\"]}', 0, NULL, '2019-09-05 10:33:13');
INSERT INTO `sys_oper_log` VALUES (183, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/add', '119.123.69.39', 'XX XX', '{\"title\":[\"测试服务上传\"],\"imgUrl\":[\"/profile/upload/2019/09/05/bc168ec8ae107e263fa6211c62f43cd2.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-05 10:33:30');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '管理组', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-09-08 16:52:24');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-08 16:52:34');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"commodity\"],\"tableComment\":[\"商品\"],\"className\":[\"Commodity\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"39\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"40\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"uId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"41\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"商品ID\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"42\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createdDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"43\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"最后修改时间\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"updatedDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"44\"],\"columns[5].sort\":[\"6\"],\"columns[5', 0, NULL, '2019-09-08 16:53:21');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-08 16:53:25');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '管理组', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', 0, NULL, '2019-09-08 17:00:04');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-08 17:00:13');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"commodity\"],\"tableComment\":[\"商品信息\"],\"className\":[\"Commodity\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"48\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"49\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"uId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"50\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"商品ID\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"51\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createdDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"52\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"最后修改时间\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"updatedDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"53\"],\"columns[5].sort\":[\"6\"],\"columns', 0, NULL, '2019-09-08 17:00:49');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"commodity\"]}', 0, NULL, '2019-09-08 17:00:54');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"category\"]}', 0, NULL, '2019-09-08 18:07:52');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"category\"],\"tableComment\":[\"分类表\"],\"className\":[\"Category\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"58\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"分类ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"59\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"分类名字\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"categoryName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"60\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"分类备注\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"categoryRemarks\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.taoke\"],\"moduleName\":[\"taoke\"],\"businessName\":[\"category\"],\"functionName\":[\"分类\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', 0, NULL, '2019-09-08 18:08:06');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"category\"]}', 0, NULL, '2019-09-08 18:08:10');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2030\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"分类管理\"],\"url\":[\"/taoke/category\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:category:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-08 18:13:07');
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2030\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"分类管理\"],\"url\":[\"/taoke/category\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:category:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-08 18:13:33');
INSERT INTO `sys_oper_log` VALUES (197, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"直播间一号宝贝\"],\"categoryRemarks\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.taoke.category.mapper.CategoryMapper.insertCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into category          ( category_name )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-08 18:15:45');
INSERT INTO `sys_oper_log` VALUES (198, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"分类1\"],\"categoryRemarks\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.taoke.category.mapper.CategoryMapper.insertCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into category          ( category_name )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-08 18:17:32');
INSERT INTO `sys_oper_log` VALUES (199, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"c1\"],\"categoryRemarks\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve com.ruoyi.taoke.category.mapper.CategoryMapper.insertCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into category values(?,?);\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2019-09-08 18:21:47');
INSERT INTO `sys_oper_log` VALUES (200, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', NULL, '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"12\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-08 18:23:47');
INSERT INTO `sys_oper_log` VALUES (201, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', NULL, '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"分类1\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-08 18:23:56');
INSERT INTO `sys_oper_log` VALUES (202, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', NULL, '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"一号直播间\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-08 18:24:03');
INSERT INTO `sys_oper_log` VALUES (203, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', NULL, '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"categoryName\":[\"一号直播间1\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-08 18:24:09');
INSERT INTO `sys_oper_log` VALUES (204, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', NULL, '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-09-08 18:24:12');
INSERT INTO `sys_oper_log` VALUES (205, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', NULL, '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-09-08 18:24:14');
INSERT INTO `sys_oper_log` VALUES (206, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', NULL, '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', 0, NULL, '2019-09-08 18:24:23');
INSERT INTO `sys_oper_log` VALUES (207, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', NULL, '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"二号直播间2\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-08 18:24:38');
INSERT INTO `sys_oper_log` VALUES (208, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"123456\"],\"categoryId\":[\"undefined;一号直播间1\"],\"couponUrl\":[\"www.baidu.com\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'undefined\' for column \'category_id\' at row 1\r\n### The error may involve com.ruoyi.taoke.commodity.mapper.CommodityMapper.insertCommodity-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into commodity          ( u_id,             c_id,                                       category_id,             category_name,             coupon_url,             coupon_price )           values ( ?,             ?,                                       ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'undefined\' for column \'category_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'undefined\' for column \'category_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'undefined\' for column \'category_id\' at row 1', '2019-09-09 00:18:20');
INSERT INTO `sys_oper_log` VALUES (209, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"1\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 00:19:31');
INSERT INTO `sys_oper_log` VALUES (210, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-09-09 00:19:37');
INSERT INTO `sys_oper_log` VALUES (211, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"www.baidu.com\"],\"couponPrice\":[\"20\"],\"label\":[\"50\"]}', 0, NULL, '2019-09-09 00:36:44');
INSERT INTO `sys_oper_log` VALUES (212, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"5;二号直播间2\"],\"couponUrl\":[\"http://www.baidu.com\"],\"couponPrice\":[\"20.5\"],\"label\":[\"mouse的标签\"]}', 0, NULL, '2019-09-09 00:39:40');
INSERT INTO `sys_oper_log` VALUES (213, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 00:52:41');
INSERT INTO `sys_oper_log` VALUES (214, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"123\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 01:00:48');
INSERT INTO `sys_oper_log` VALUES (215, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 01:01:39');
INSERT INTO `sys_oper_log` VALUES (216, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-09-09 01:36:40');
INSERT INTO `sys_oper_log` VALUES (217, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-09-09 01:36:41');
INSERT INTO `sys_oper_log` VALUES (218, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', 0, NULL, '2019-09-09 01:36:42');
INSERT INTO `sys_oper_log` VALUES (219, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"5;二号直播间2\"],\"couponUrl\":[\"www.baidu.com\"],\"couponPrice\":[\"20\"],\"label\":[\"啥玩意哦\"]}', 0, NULL, '2019-09-09 01:37:06');
INSERT INTO `sys_oper_log` VALUES (220, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"http://www.baidu.com\"],\"couponPrice\":[\"20\"],\"label\":[\"啥玩意啊\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'com_ame\' in \'field list\'\r\n### The error may involve com.ruoyi.taoke.commodity.mapper.CommodityMapper.insertCommodity-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into commodity          ( u_id,             c_id,                                       category_id,             category_name,             coupon_url,             coupon_price,             label,             com_ame,             com_img,             com_price )           values ( ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'com_ame\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'com_ame\' in \'field list\'', '2019-09-09 01:40:28');
INSERT INTO `sys_oper_log` VALUES (221, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"http://www.baidu.com\"],\"couponPrice\":[\"20.1\"],\"label\":[\"测试增加\"]}', 0, NULL, '2019-09-09 01:41:32');
INSERT INTO `sys_oper_log` VALUES (222, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"566596167735\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 1, '', '2019-09-09 01:55:56');
INSERT INTO `sys_oper_log` VALUES (223, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"566596167735\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 1, '', '2019-09-09 01:56:52');
INSERT INTO `sys_oper_log` VALUES (224, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"588406759678\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 01:57:35');
INSERT INTO `sys_oper_log` VALUES (225, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"566596167735\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"2\"],\"couponPrice\":[\"2\"],\"label\":[\"2\"]}', 0, NULL, '2019-09-09 01:57:52');
INSERT INTO `sys_oper_log` VALUES (226, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', 0, NULL, '2019-09-09 01:57:57');
INSERT INTO `sys_oper_log` VALUES (227, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"566596167735\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 01:59:48');
INSERT INTO `sys_oper_log` VALUES (228, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"588406759678\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 01:59:59');
INSERT INTO `sys_oper_log` VALUES (229, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"560751015631\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:01:32');
INSERT INTO `sys_oper_log` VALUES (230, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"527056303716\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:01:40');
INSERT INTO `sys_oper_log` VALUES (231, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"530540638352\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:02:05');
INSERT INTO `sys_oper_log` VALUES (232, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"1\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:02:21');
INSERT INTO `sys_oper_log` VALUES (233, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"565022411701\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:02:36');
INSERT INTO `sys_oper_log` VALUES (234, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"591788303391\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:02:49');
INSERT INTO `sys_oper_log` VALUES (235, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"591731899375\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:04:12');
INSERT INTO `sys_oper_log` VALUES (236, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"565130049379\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:04:21');
INSERT INTO `sys_oper_log` VALUES (237, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"569250234783\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:04:32');
INSERT INTO `sys_oper_log` VALUES (238, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"587500512400\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:06:38');
INSERT INTO `sys_oper_log` VALUES (239, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:07:19');
INSERT INTO `sys_oper_log` VALUES (240, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"544092135549\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:21:19');
INSERT INTO `sys_oper_log` VALUES (241, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"598151908006\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:21:32');
INSERT INTO `sys_oper_log` VALUES (242, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"600823310807\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:21:44');
INSERT INTO `sys_oper_log` VALUES (243, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"534158976353\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"2\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:22:11');
INSERT INTO `sys_oper_log` VALUES (244, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"597654322479\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"2\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:22:24');
INSERT INTO `sys_oper_log` VALUES (245, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"597654322479\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:23:36');
INSERT INTO `sys_oper_log` VALUES (246, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"598979800453\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:23:46');
INSERT INTO `sys_oper_log` VALUES (247, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"16\"]}', 0, NULL, '2019-09-09 02:26:30');
INSERT INTO `sys_oper_log` VALUES (248, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"17\"]}', 0, NULL, '2019-09-09 02:26:31');
INSERT INTO `sys_oper_log` VALUES (249, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"18\"]}', 0, NULL, '2019-09-09 02:26:33');
INSERT INTO `sys_oper_log` VALUES (250, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"19\"]}', 0, NULL, '2019-09-09 02:26:35');
INSERT INTO `sys_oper_log` VALUES (251, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"20\"]}', 0, NULL, '2019-09-09 02:26:37');
INSERT INTO `sys_oper_log` VALUES (252, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"21\"]}', 0, NULL, '2019-09-09 02:26:38');
INSERT INTO `sys_oper_log` VALUES (253, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"22\"]}', 0, NULL, '2019-09-09 02:26:40');
INSERT INTO `sys_oper_log` VALUES (254, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"23\"]}', 0, NULL, '2019-09-09 02:26:42');
INSERT INTO `sys_oper_log` VALUES (255, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '101.46.112.255', 'XX XX', '{\"ids\":[\"24\"]}', 0, NULL, '2019-09-09 02:27:56');
INSERT INTO `sys_oper_log` VALUES (256, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"600300806250\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 02:28:03');
INSERT INTO `sys_oper_log` VALUES (257, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '101.46.112.255', 'XX XX', '{\"cId\":[\"573363344588\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"22\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 02:28:13');
INSERT INTO `sys_oper_log` VALUES (258, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"525298343107\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"https://item.taobao.com/item.htm?ft=t&id=525298343107&ali_trackid=2:mm_26632589_0_0:1567987354_136_1451898184&spm=a21bo.7925890.192091.4&pvid=caab5e92-e802-4d43-80b1-400106ea1007&scm=1007.12846.65991.999999999999999\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 09:02:28');
INSERT INTO `sys_oper_log` VALUES (259, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"43009774004\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"https://detail.tmall.com/item.htm?spm=a219t.11817059.0.defcc5d99.5f3775a5rrllmQ&id=43009774004&scm=null&pvid=100_11.8.223.180_49760_8561567991044048730&app_pvid=59590_11.1.93.222_489_1567991044044&ptl=floorId:20311;originalFloorId:20311;pvid:100_11.8.223.180_49760_8561567991044048730;app_pvid:59590_11.1.93.222_489_1567991044044&union_lens=lensId:OPT@1567991044@0b015dde_21dc_16d138c9829_46fe@01\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 09:30:41');
INSERT INTO `sys_oper_log` VALUES (260, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"580483828611\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"https://detail.tmall.com/item.htm?spm=a219t.11817059.0.defcc5d99.25f075a5SE5vaT&id=580483828611&scm=null&pvid=100_11.8.226.79_72430_1881567992673548589&app_pvid=59590_11.186.131.52_470_1567992673543&ptl=floorId:23548;originalFloorId:23548;pvid:100_11.8.226.79_72430_1881567992673548589;app_pvid:59590_11.186.131.52_470_1567992673543&union_lens=lensId:OPT@1567992673@0bba8334_0ed5_16d13a575a7_93bb@01\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-09 09:31:47');
INSERT INTO `sys_oper_log` VALUES (261, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '119.123.68.68', 'XX XX', '{\"categoryName\":[\"的说法的\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-09 10:13:49');
INSERT INTO `sys_oper_log` VALUES (262, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '119.123.68.68', 'XX XX', '{\"categoryName\":[\"东方闪电\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-09 10:13:55');
INSERT INTO `sys_oper_log` VALUES (263, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 11:07:59');
INSERT INTO `sys_oper_log` VALUES (264, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '127.0.0.1', '内网IP', '{\"cId\":[\"557657203392\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-09 11:08:15');
INSERT INTO `sys_oper_log` VALUES (265, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"550718454337\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-10 10:55:21');
INSERT INTO `sys_oper_log` VALUES (266, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"550718454337\"],\"categoryId\":[\"7;东方闪电\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-10 10:55:28');
INSERT INTO `sys_oper_log` VALUES (267, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '119.123.68.68', 'XX XX', '{\"cId\":[\"550718454337\"],\"categoryId\":[\"6;的说法的\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-10 10:55:39');
INSERT INTO `sys_oper_log` VALUES (268, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.101.102', 'XX XX', '{\"cId\":[\"593493053538\"],\"categoryId\":[\"4;一号直播间1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"20\"],\"label\":[\"89号产品优惠卷\"]}', 0, NULL, '2019-09-10 14:52:42');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '管理组', '/system/menu/add', '119.123.68.68', 'XX XX', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"个人中心\"],\"url\":[\"/system/user/profile\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 14:55:50');
INSERT INTO `sys_oper_log` VALUES (270, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '管理组', '/system/role/edit', '119.123.68.68', 'XX XX', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2010,2011,2012,2013,2014,2021,2023,2024,2025,2026,2027,2020,2005,2006,2007,2008,2009,2015,2016,2017,2018,2019,2035\"]}', 0, NULL, '2019-09-10 14:57:20');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 14:59:04');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 14:59:12');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"2028\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 14:59:17');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"99\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 15:00:06');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"99\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 15:00:21');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"99\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 15:00:26');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"2035\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"个人中心\"],\"url\":[\"/system/user/profile\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 15:00:34');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"2021\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"商品管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-archive\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 15:00:55');
INSERT INTO `sys_oper_log` VALUES (279, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '管理组', '/tool/gen/remove', '119.123.68.68', 'XX XX', '{\"ids\":[\"10\"]}', 0, NULL, '2019-09-10 15:26:00');
INSERT INTO `sys_oper_log` VALUES (280, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/importTable', '119.123.68.68', 'XX XX', '{\"tables\":[\"category\"]}', 0, NULL, '2019-09-10 15:26:05');
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '管理组', '/tool/gen/edit', '119.123.68.68', 'XX XX', '{\"tableId\":[\"11\"],\"tableName\":[\"category\"],\"tableComment\":[\"分类表\"],\"className\":[\"Category\"],\"functionAuthor\":[\"XRZ\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"61\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"分类ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"62\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"分类名字\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"categoryName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"分类备注\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"categoryRemarks\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"64\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户ID\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"userId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"65\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是否启用（1=启用，0=禁用） 默认为1\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"enable\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.taoke\"],\"moduleNa', 0, NULL, '2019-09-10 15:26:25');
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '管理组', '/tool/gen/genCode/category', '119.123.68.68', 'XX XX', '{}', 0, NULL, '2019-09-10 15:26:30');
INSERT INTO `sys_oper_log` VALUES (283, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"categoryName\":[\"二号直播间2\"],\"categoryRemarks\":[\"1\"],\"userId\":[\"104\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 15:36:06');
INSERT INTO `sys_oper_log` VALUES (284, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"categoryName\":[\"的说法的\"],\"categoryRemarks\":[\"\"],\"userId\":[\"104\"],\"enable\":[\"0\"]}', 0, NULL, '2019-09-10 15:50:05');
INSERT INTO `sys_oper_log` VALUES (285, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"categoryName\":[\"二号直播间2\"],\"categoryRemarks\":[\"1\"],\"userId\":[\"104\"],\"enable\":[\"0\"]}', 0, NULL, '2019-09-10 15:55:47');
INSERT INTO `sys_oper_log` VALUES (286, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4,7\"]}', 0, NULL, '2019-09-10 15:55:53');
INSERT INTO `sys_oper_log` VALUES (287, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"categoryName\":[\"一号直播间1\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 15:56:01');
INSERT INTO `sys_oper_log` VALUES (288, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"categoryName\":[\"二号直播间2\"],\"categoryRemarks\":[\"1\"],\"userId\":[\"104\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 15:56:05');
INSERT INTO `sys_oper_log` VALUES (289, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"categoryName\":[\"东方闪电\"],\"categoryRemarks\":[\"\"],\"userId\":[\"104\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 15:56:08');
INSERT INTO `sys_oper_log` VALUES (290, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4,5\"]}', 0, NULL, '2019-09-10 16:01:19');
INSERT INTO `sys_oper_log` VALUES (291, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"categoryName\":[\"一号直播间1\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 16:01:24');
INSERT INTO `sys_oper_log` VALUES (292, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"categoryName\":[\"二号直播间2\"],\"categoryRemarks\":[\"1\"],\"userId\":[\"104\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-10 16:01:28');
INSERT INTO `sys_oper_log` VALUES (293, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '管理组', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2035,2010,2011,2012,2013,2014,2020,2005,2006,2007,2008,2009,2015,2016,2017,2018,2019,2021,2023,2024,2025,2026,2027,2030,2031,2032,2033,2034\"]}', 0, NULL, '2019-09-10 16:03:02');
INSERT INTO `sys_oper_log` VALUES (294, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/category/add', '127.0.0.1', '内网IP', '{\"categoryName\":[\"测试分类1\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 16:03:51');
INSERT INTO `sys_oper_log` VALUES (295, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-09-10 16:25:37');
INSERT INTO `sys_oper_log` VALUES (296, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-09-10 16:26:35');
INSERT INTO `sys_oper_log` VALUES (297, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-09-10 16:26:37');
INSERT INTO `sys_oper_log` VALUES (298, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-09-10 16:27:17');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '管理组', '/system/menu/edit', '119.123.68.68', 'XX XX', '{\"menuId\":[\"2015\"],\"parentId\":[\"2020\"],\"menuType\":[\"C\"],\"menuName\":[\"首页装修\"],\"url\":[\"/taoke/webset\"],\"target\":[\"menuItem\"],\"perms\":[\"taoke:webset:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-09-10 16:43:37');
INSERT INTO `sys_oper_log` VALUES (300, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"测试添加分类\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:53:19');
INSERT INTO `sys_oper_log` VALUES (301, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"分类1\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:53:49');
INSERT INTO `sys_oper_log` VALUES (302, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"582101936358\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"1.1\"],\"label\":[\"\"]}', 0, NULL, '2019-09-10 23:54:13');
INSERT INTO `sys_oper_log` VALUES (303, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:11');
INSERT INTO `sys_oper_log` VALUES (304, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"男装\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:16');
INSERT INTO `sys_oper_log` VALUES (305, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"我是禁用的分类\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:29');
INSERT INTO `sys_oper_log` VALUES (306, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"上衣\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:37');
INSERT INTO `sys_oper_log` VALUES (307, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装上衣\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:44');
INSERT INTO `sys_oper_log` VALUES (308, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装1\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:55:57');
INSERT INTO `sys_oper_log` VALUES (309, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装2\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:01');
INSERT INTO `sys_oper_log` VALUES (310, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装3\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:05');
INSERT INTO `sys_oper_log` VALUES (311, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装4\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:09');
INSERT INTO `sys_oper_log` VALUES (312, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装4\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:13');
INSERT INTO `sys_oper_log` VALUES (313, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装6\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:17');
INSERT INTO `sys_oper_log` VALUES (314, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/add', '124.42.155.121', 'XX XX', '{\"categoryName\":[\"女装7\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-10 23:56:20');
INSERT INTO `sys_oper_log` VALUES (315, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '124.42.155.121', 'XX XX', '{\"ids\":[\"13\"]}', 0, NULL, '2019-09-10 23:56:24');
INSERT INTO `sys_oper_log` VALUES (316, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"582101936358\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-10 23:57:01');
INSERT INTO `sys_oper_log` VALUES (317, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"2\"],\"label\":[\"2\"]}', 0, NULL, '2019-09-10 23:57:19');
INSERT INTO `sys_oper_log` VALUES (318, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"2\"],\"label\":[\"2\"]}', 0, NULL, '2019-09-10 23:57:21');
INSERT INTO `sys_oper_log` VALUES (319, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"582101936358\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"2\"],\"label\":[\"2\"]}', 0, NULL, '2019-09-10 23:57:32');
INSERT INTO `sys_oper_log` VALUES (320, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"3\"],\"label\":[\"3\"]}', 0, NULL, '2019-09-10 23:57:48');
INSERT INTO `sys_oper_log` VALUES (321, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"582101936358\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"3\"],\"label\":[\"3\"]}', 0, NULL, '2019-09-10 23:57:57');
INSERT INTO `sys_oper_log` VALUES (322, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"582101936358\"],\"categoryId\":[\"12;男装\"],\"couponUrl\":[\"4\"],\"couponPrice\":[\"4\"],\"label\":[\"4\"]}', 0, NULL, '2019-09-10 23:58:22');
INSERT INTO `sys_oper_log` VALUES (323, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"556870340427\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"4\"],\"label\":[\"4\"]}', 0, NULL, '2019-09-10 23:59:01');
INSERT INTO `sys_oper_log` VALUES (324, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"556870340427\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=r4d39nCz%2B6INfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZFLBlbWF77wDBLjWasO62VRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3Bzxj0uTOA6%2FRXnoqz1jAubGI%2BULCi11eXiN%2BXGdFAAn9GPZaxbtaqNlX84lY4tRPJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.131.194.102_31196_1568098319649&ptl=floorId:17741;app_pvid:59590_11.131.194.102_31196_1568098319649;tpp_pvid:&union_lens=lensId%3An%401568098271%402cfa899f-cd7b-41c1-9800-be4c7b77202a_593493053538%401\"],\"couponPrice\":[\"4\"],\"label\":[\"4\"]}', 0, NULL, '2019-09-10 23:59:08');
INSERT INTO `sys_oper_log` VALUES (325, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"599061372931\"],\"categoryId\":[\"14;上衣\"],\"couponUrl\":[\"6\"],\"couponPrice\":[\"6\"],\"label\":[\"6\"]}', 0, NULL, '2019-09-10 23:59:41');
INSERT INTO `sys_oper_log` VALUES (326, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"566993693220\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-10 23:59:56');
INSERT INTO `sys_oper_log` VALUES (327, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"589917424644\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-11 00:00:05');
INSERT INTO `sys_oper_log` VALUES (328, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"558720841469\"],\"categoryId\":[\"15;女装上衣\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-11 00:00:48');
INSERT INTO `sys_oper_log` VALUES (329, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"558720841469\"],\"categoryId\":[\"17;女装2\"],\"couponUrl\":[\"2\"],\"couponPrice\":[\"2\"],\"label\":[\"2\"]}', 0, NULL, '2019-09-11 00:01:02');
INSERT INTO `sys_oper_log` VALUES (330, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"598173320467\"],\"categoryId\":[\"16;女装1\"],\"couponUrl\":[\"12\"],\"couponPrice\":[\"22\"],\"label\":[\"22\"]}', 0, NULL, '2019-09-11 00:01:23');
INSERT INTO `sys_oper_log` VALUES (331, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"567626865951\"],\"categoryId\":[\"16;女装1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-11 00:01:48');
INSERT INTO `sys_oper_log` VALUES (332, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '124.42.155.121', 'XX XX', '{\"cId\":[\"564686385950\"],\"categoryId\":[\"16;女装1\"],\"couponUrl\":[\"1\"],\"couponPrice\":[\"1\"],\"label\":[\"1\"]}', 0, NULL, '2019-09-11 00:01:59');
INSERT INTO `sys_oper_log` VALUES (333, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '101.46.124.191', 'XX XX', '{\"ids\":[\"2\"]}', 0, NULL, '2019-09-12 06:57:38');
INSERT INTO `sys_oper_log` VALUES (334, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '101.46.124.191', 'XX XX', '{\"ids\":[\"3\"]}', 0, NULL, '2019-09-12 06:57:40');
INSERT INTO `sys_oper_log` VALUES (335, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '101.46.124.191', 'XX XX', '{\"ids\":[\"4\"]}', 0, NULL, '2019-09-12 06:57:42');
INSERT INTO `sys_oper_log` VALUES (336, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '101.46.124.191', 'XX XX', '{\"title\":[\"1\"],\"imgUrl\":[\"/profile/upload/2019/09/12/117fab7884e4e4b1cbe9a6d230c205d2.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 06:58:48');
INSERT INTO `sys_oper_log` VALUES (337, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '101.46.124.191', 'XX XX', '{\"title\":[\"1\"],\"imgUrl\":[\"/profile/upload/2019/09/12/2147c64c6cf377c502b514e4ec8eca9c.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 12:17:11');
INSERT INTO `sys_oper_log` VALUES (338, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/term/edit', '119.123.65.250', 'XX XX', '{\"uId\":[\"104\"],\"availableTime\":[\"604800000\"]}', 0, NULL, '2019-09-12 14:26:02');
INSERT INTO `sys_oper_log` VALUES (339, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/term/edit', '119.123.65.250', 'XX XX', '{\"uId\":[\"105\"],\"availableTime\":[\"604800000\"]}', 0, NULL, '2019-09-12 14:26:06');
INSERT INTO `sys_oper_log` VALUES (340, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/term/edit', '119.123.65.250', 'XX XX', '{\"uId\":[\"105\"],\"availableTime\":[\"604800000\"]}', 0, NULL, '2019-09-12 14:27:49');
INSERT INTO `sys_oper_log` VALUES (341, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/term/edit', '119.123.65.250', 'XX XX', '{\"uId\":[\"104\"],\"availableTime\":[\"604800000\"]}', 0, NULL, '2019-09-12 14:27:52');
INSERT INTO `sys_oper_log` VALUES (342, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '管理组', '/system/user/edit', '119.123.65.250', 'XX XX', '{\"userId\":[\"105\"],\"deptId\":[\"200\"],\"userName\":[\"mouse\"],\"dept.deptName\":[\"用户组\"],\"phonenumber\":[\"13143098756\"],\"email\":[\"397047242@qq.com\"],\"loginName\":[\"mouse\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"1\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-09-12 14:28:55');
INSERT INTO `sys_oper_log` VALUES (343, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.changeStatus()', 'POST', 1, 'admin', '管理组', '/system/user/changeStatus', '119.123.65.250', 'XX XX', '{\"userId\":[\"105\"],\"status\":[\"0\"]}', 0, NULL, '2019-09-12 14:29:59');
INSERT INTO `sys_oper_log` VALUES (344, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.65.250', 'XX XX', '{\"cId\":[\"597649283190\"],\"categoryId\":[\"9;测试添加分类\"],\"couponUrl\":[\"https://s.click.taobao.com/dlAo81w\"],\"couponPrice\":[\"360\"],\"label\":[\"\"]}', 0, NULL, '2019-09-12 14:37:49');
INSERT INTO `sys_oper_log` VALUES (345, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.65.250', 'XX XX', '{\"cId\":[\"577809969991\"],\"categoryId\":[\"9;测试添加分类\"],\"couponUrl\":[\"https://s.click.taobao.com/MPBn81w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-12 14:38:55');
INSERT INTO `sys_oper_log` VALUES (346, '分类', 1, 'com.ruoyi.taoke.category.controller.CategoryController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/category/add', '119.123.65.250', 'XX XX', '{\"categoryName\":[\"悠悠直播间1号宝贝\"],\"categoryRemarks\":[\"\"]}', 0, NULL, '2019-09-12 14:40:10');
INSERT INTO `sys_oper_log` VALUES (347, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/category/remove', '119.123.65.250', 'XX XX', '{\"ids\":[\"16\"]}', 0, NULL, '2019-09-12 14:42:04');
INSERT INTO `sys_oper_log` VALUES (348, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '119.123.65.250', 'XX XX', '{\"cId\":[\"596670968366\"],\"categoryId\":[\"11;女装\"],\"couponUrl\":[\"https://s.click.taobao.com/iocj81w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-12 14:47:58');
INSERT INTO `sys_oper_log` VALUES (349, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-12 22:41:21');
INSERT INTO `sys_oper_log` VALUES (350, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-12 23:05:40');
INSERT INTO `sys_oper_log` VALUES (351, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-09-12 23:07:17');
INSERT INTO `sys_oper_log` VALUES (352, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', 0, NULL, '2019-09-12 23:07:35');
INSERT INTO `sys_oper_log` VALUES (353, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"11\"],\"imgUrl\":[\"77b6d0a7b2004f719724056d259d2f40.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:07:52');
INSERT INTO `sys_oper_log` VALUES (354, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'admin', '管理组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', 0, NULL, '2019-09-12 23:18:04');
INSERT INTO `sys_oper_log` VALUES (355, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"12\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/85c88a1760084c4f88a10db621f8680f.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:18:23');
INSERT INTO `sys_oper_log` VALUES (356, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', 0, NULL, '2019-09-12 23:19:16');
INSERT INTO `sys_oper_log` VALUES (357, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', 0, NULL, '2019-09-12 23:19:18');
INSERT INTO `sys_oper_log` VALUES (358, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"1\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/7fb2c5b04e0946638507977d326a14f5.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:19:29');
INSERT INTO `sys_oper_log` VALUES (359, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"2\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/e19e90ed0e3d4c1daffec588d343e036.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:19:36');
INSERT INTO `sys_oper_log` VALUES (360, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"4\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/aafff05307ec4494821ce03f3840da93.JPG\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:19:44');
INSERT INTO `sys_oper_log` VALUES (361, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', 0, NULL, '2019-09-12 23:20:53');
INSERT INTO `sys_oper_log` VALUES (362, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', 0, NULL, '2019-09-12 23:20:55');
INSERT INTO `sys_oper_log` VALUES (363, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', 0, NULL, '2019-09-12 23:20:57');
INSERT INTO `sys_oper_log` VALUES (364, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"1\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/e71ae88bed404baa8d9d6c779b589c40.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:21:05');
INSERT INTO `sys_oper_log` VALUES (365, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"2\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/0d6e428987ab4848a11a996e37520e17.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:21:11');
INSERT INTO `sys_oper_log` VALUES (366, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/add', '127.0.0.1', '内网IP', '{\"title\":[\"3\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/5483d1281083403995ab4d6eeb3cea4e.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:21:17');
INSERT INTO `sys_oper_log` VALUES (367, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '183.25.148.59', 'XX XX', '{\"title\":[\"2\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/4c2c5aee63ab4a3788dcab66a21f3387.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-12 23:31:22');
INSERT INTO `sys_oper_log` VALUES (368, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '管理组', '/system/user/profile/updateAvatar', '183.25.148.59', 'XX XX', '{}', 0, NULL, '2019-09-13 12:56:37');
INSERT INTO `sys_oper_log` VALUES (369, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"34\"]}', 0, NULL, '2019-09-19 10:48:12');
INSERT INTO `sys_oper_log` VALUES (370, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"556641640851\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=Y8FyhQ25rnwNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnS7SXxpYlazY6cyTvdd6gfNRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0kZMA2LPVKmfx66k1%2BnX3GQNI%2B%2BnJeJkzwxbr6RQ67fd4TAkZ2VvAZAhfrt0I9sinJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.131.235.167_476_1568861275986&ptl=floorId:17741;app_pvid:59590_11.131.235.167_476_1568861275986;tpp_pvid:&union_lens=lensId%3AOPT%401568861159%400bba8329_0f15_16d47697e66_10ca%4001\"],\"couponPrice\":[\"3\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:48:34');
INSERT INTO `sys_oper_log` VALUES (371, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"590589971503\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=H6TBGZ7gjVkNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihneE4bsX1kGRxMjTeW774dTVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0GYdOX3P0rnWSlkL8%2BFO6Jr9T3Z3MDpluzdqazcvDJTHxrg8600LmSeKFDysnDp1nJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.1.62.88_451_1568861409137&ptl=floorId:17741;app_pvid:59590_11.1.62.88_451_1568861409137;tpp_pvid:&union_lens=lensId%3AOPT%401568861159%400bba8329_0f15_16d47697e66_10e8%4001\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:50:30');
INSERT INTO `sys_oper_log` VALUES (372, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/term/edit', '119.123.70.25', 'XX XX', '{\"uId\":[\"105\"],\"availableTime\":[\"3196800000\"]}', 0, NULL, '2019-09-19 10:52:19');
INSERT INTO `sys_oper_log` VALUES (373, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"577469122036\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=MkNI7Tt4bQQNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68APsqZZDO6gdtCRy7DuE%2F4ya4bVlo0QJT9C58xsB98QT4kI8kFlYUvLjZWB8yRYykDvEyPWLtkcnTJlKdoBJrFTjiBFTlo8Sno6cWJFsgfe2aBkAErbRyEanY6kuF9hX%2FUh24Qlvoc3eN3Q%2FUSUbS63JOJNnJbcKb4rwfNcSCHrz1sXwp43pyqpxMDQVG07AK7A%3D%3D&&app_pvid=59590_11.15.211.159_461_1568861550819&ptl=floorId:17741;app_pvid:59590_11.15.211.159_461_1568861550819;tpp_pvid:&union_lens=lensId%3AOPT%401568861508%400b183896_0f74_16d476ed1fe_c461%4001\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:52:39');
INSERT INTO `sys_oper_log` VALUES (374, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"538108725966\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=%2B70z3zVMV7ANfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZfE3cXQrrMYFP9PVbWXxsBRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1PRWEhpZPwDZWVzJ7kimIIhCflXB6ZNtAdF2PPao1gNd%2Fv3JhfcWTSKSP16LvcwO3JTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.15.225.185_443_1568861615692&ptl=floorId:17741;app_pvid:59590_11.15.225.185_443_1568861615692;tpp_pvid:&union_lens=lensId%3AOPT%401568861508%400b183896_0f74_16d476ed1fe_c468%4001\"],\"couponPrice\":[\"70\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:53:44');
INSERT INTO `sys_oper_log` VALUES (375, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"599370282932\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=kPJSFG8n%2BpENfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnUG21w4SK5pSHa4ZMWm6dqVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0NIB4dAAXhZHErMzF%2Fn%2BctE3YsSBhdfsFVXrZcJqGXIhUJozKQvi%2Byh3zKRsMjDZ%2FJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.15.104.24_490_1568861672786&ptl=floorId:17741;app_pvid:59590_11.15.104.24_490_1568861672786;tpp_pvid:&union_lens=lensId%3AOPT%401568861665%400b1b31f2_0e7c_16d47713996_d043%4001\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:54:43');
INSERT INTO `sys_oper_log` VALUES (376, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"589451618689\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=W4zyapvfdd4NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnRDynZnQEuI65X5wuYMKqAxRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2knkHsyZuzZgMTUXVWtDC4v%2BIP8LoCgW5NYzECgC3hvstj2w46vVMCx1ZeOw1VdWnJTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.26.37.165_1860_1568861726013&ptl=floorId:17741;app_pvid:59590_11.26.37.165_1860_1568861726013;tpp_pvid:&union_lens=lensId%3AOPT%401568861665%400b1b31f2_0e7c_16d47713996_d045%4001\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:55:35');
INSERT INTO `sys_oper_log` VALUES (377, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"599756799577\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=ypLv%2BSCUji0NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnelZ3FYOZAYXZ0uvetjZ8cVRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2cn2H94cfDT%2Bf8tgkdicwo8PoPqbEHgFL6qpwm4vTN4u7O8C6%2BE31jlWhO72zQlM7JTE40kLCuKTVf34RU0Wfponv6QcvcARY%3D&&app_pvid=59590_11.1.242.127_485_1568861778711&ptl=floorId:17741;app_pvid:59590_11.1.242.127_485_1568861778711;tpp_pvid:&union_lens=lensId%3AOPT%401568861748%400b839e46_0e9d_16d47727b3d_aa05%4001\"],\"couponPrice\":[\"35\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:56:26');
INSERT INTO `sys_oper_log` VALUES (378, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"555921345923\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=zVeFR%2FjW7scNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnRyKG%2BPlVxqcqTcmWh5%2FCGxRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1LALKvy0%2FgJVMaZdYpmj1oNmHsJJ0jlwWKzNyiGxpr9w9n9mSbSBMTPseKFHBpS%2FTJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.15.93.171_474_1568861829425&ptl=floorId:17741;app_pvid:59590_11.15.93.171_474_1568861829425;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b6fe%4001\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:57:17');
INSERT INTO `sys_oper_log` VALUES (379, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"600656655471\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=%2BI5D%2FDLdv50NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihncp3kaZJtjP7CnH122JmbvNRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f3kzixcc%2BRFKQj5idpOs4i%2FCMK9%2FKl9ruczGqeiDn7nrvzjqRSXXSPZGMQquAQ8Fphh9foG%2F5o3V5Vkf3oIWjLZVW6yqqeGJ%2FI%3D&&app_pvid=59590_11.9.33.73_454_1568861868666&ptl=floorId:17741;app_pvid:59590_11.9.33.73_454_1568861868666;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b706%4001\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:57:58');
INSERT INTO `sys_oper_log` VALUES (380, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"557935349623\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=Ne0mTnaXkEYNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnWJSyCElg%2F0r6nckWs9qoF1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0rEjaz1iUbegEn8%2BNOpT25ZXzXK4CMLi6PCFuiieqRxnCVkp2O4E5PNDCPlg3DD%2F2zAOGWlowRrGuhcEU%2FqjP4&&app_pvid=59590_11.8.95.8_498_1568861904177&ptl=floorId:17741;app_pvid:59590_11.8.95.8_498_1568861904177;tpp_pvid:&union_lens=lensId%3AOPT%401568861803%400b0b9683_0e6d_16d4773554a_b708%4001\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:58:33');
INSERT INTO `sys_oper_log` VALUES (381, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"536777146177\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=OKNEHzsb4z4NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnSPSOSmFeB7M673%2FMWuv21hRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f2knkHsyZuzZl4vL8ag3fljz7M3Mh%2FaJpVWX7H4mHw8WiCXFeaTKESzPseKFHBpS%2FTJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.11.78.94_503_1568861953792&ptl=floorId:17741;app_pvid:59590_11.11.78.94_503_1568861953792;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65bb%4001\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:59:22');
INSERT INTO `sys_oper_log` VALUES (382, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"539689702244\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=O9CioR4DD64NfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihnZiCE73r04OtMB0BH1XeaTZRqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0NIB4dAAXhZCTPXc0V92EWui9aT1b9Q8zdyPvxOpXnSnjDBvITzdcjeZatnILlAPzuG8Qvu8yX0Pp6A4EzYcJj&&app_pvid=59590_11.21.71.24_16625_1568861985148&ptl=floorId:17741;app_pvid:59590_11.21.71.24_16625_1568861985148;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65bd%4001\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 10:59:53');
INSERT INTO `sys_oper_log` VALUES (383, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"578526002522\"],\"categoryId\":[\"10;分类1\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=XHYqsj9vtuQNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f1eAbUYx2MdPrAvl9%2FblivvwqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.26.255.42_476_1568862025417&ptl=floorId:17741;app_pvid:59590_11.26.255.42_476_1568862025417;tpp_pvid:&union_lens=lensId%3AOPT%401568861924%400b883605_0ed6_16d47752dd8_65c4%4001\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 11:00:34');
INSERT INTO `sys_oper_log` VALUES (384, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"23\"]}', 0, NULL, '2019-09-19 11:02:37');
INSERT INTO `sys_oper_log` VALUES (385, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"19\"]}', 0, NULL, '2019-09-19 11:02:40');
INSERT INTO `sys_oper_log` VALUES (386, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"18\"]}', 0, NULL, '2019-09-19 11:02:42');
INSERT INTO `sys_oper_log` VALUES (387, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"17\"]}', 0, NULL, '2019-09-19 11:02:44');
INSERT INTO `sys_oper_log` VALUES (388, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"11,12,13,14,15,16,17,18,19,20\"]}', 0, NULL, '2019-09-19 11:07:13');
INSERT INTO `sys_oper_log` VALUES (389, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"35\"]}', 0, NULL, '2019-09-19 11:07:19');
INSERT INTO `sys_oper_log` VALUES (390, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"36\"]}', 0, NULL, '2019-09-19 11:07:21');
INSERT INTO `sys_oper_log` VALUES (391, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"37\"]}', 0, NULL, '2019-09-19 11:07:23');
INSERT INTO `sys_oper_log` VALUES (392, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"38\"]}', 0, NULL, '2019-09-19 11:07:24');
INSERT INTO `sys_oper_log` VALUES (393, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"39\"]}', 0, NULL, '2019-09-19 11:07:26');
INSERT INTO `sys_oper_log` VALUES (394, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"40\"]}', 0, NULL, '2019-09-19 11:07:28');
INSERT INTO `sys_oper_log` VALUES (395, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"41\"]}', 0, NULL, '2019-09-19 11:07:29');
INSERT INTO `sys_oper_log` VALUES (396, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"42\"]}', 0, NULL, '2019-09-19 11:07:31');
INSERT INTO `sys_oper_log` VALUES (397, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"43\"]}', 0, NULL, '2019-09-19 11:07:32');
INSERT INTO `sys_oper_log` VALUES (398, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"46\"]}', 0, NULL, '2019-09-19 11:07:34');
INSERT INTO `sys_oper_log` VALUES (399, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"10\"]}', 0, NULL, '2019-09-19 11:10:14');
INSERT INTO `sys_oper_log` VALUES (400, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"20\"]}', 0, NULL, '2019-09-19 11:10:16');
INSERT INTO `sys_oper_log` VALUES (401, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"21\"]}', 0, NULL, '2019-09-19 11:10:18');
INSERT INTO `sys_oper_log` VALUES (402, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"578526002522\"],\"categoryId\":[\"21;女装6\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=VyiYxPT5LnoNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0yRDzxHKk%2Bf%2FRXnoqz1jAuwqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.142.222.158_487_1568862702014&ptl=floorId:17741;app_pvid:59590_11.142.222.158_487_1568862702014;tpp_pvid:&union_lens=lensId%3AOPT%401568862697%400b092149_0e8f_16d4780f92e_443c%4001\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 11:11:50');
INSERT INTO `sys_oper_log` VALUES (403, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"11\"],\"categoryName\":[\"加绒加厚长裤\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 11:12:23');
INSERT INTO `sys_oper_log` VALUES (404, '时限管理', 2, 'com.ruoyi.taoke.term.controller.TermController.editSave()', 'POST', 1, 'admin', '管理组', '/taoke/term/edit', '119.123.70.25', 'XX XX', '{\"uId\":[\"104\"],\"availableTime\":[\"3196800000\"]}', 0, NULL, '2019-09-19 13:36:18');
INSERT INTO `sys_oper_log` VALUES (405, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'admin', '管理组', '/taoke/commodity/add', '119.123.70.25', 'XX XX', '{\"cId\":[\"578526002522\"],\"categoryId\":[\"9;测试添加分类\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=js6NDuXTc5gNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0O0rXGcDPvz7pRWwGGFgI2wqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.8.51.166_458_1568873641648&ptl=floorId:17741;app_pvid:59590_11.8.51.166_458_1568873641648;tpp_pvid:&union_lens=lensId%3AOPT%401568873634%400b0b7b11_0eaf_16d4827dc03_5486%4001\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 14:18:17');
INSERT INTO `sys_oper_log` VALUES (406, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '119.123.70.25', 'XX XX', '{\"cId\":[\"578526002522\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://uland.taobao.com/coupon/edetail?e=js6NDuXTc5gNfLV8niU3RxsUty%2FyJZUC03%2FX6oiB2V7F8WVlIJ68ABrSI%2FOabn6qNg4Gqf8CT4AKuDLwELihna3z869G6n1Bd6bPRilKcv1RqIIkFnQopX9z4KtNGdpDdzSBXfDo6f0O0rXGcDPvz7pRWwGGFgI2wqARbLv%2BPphB8z%2FhecILLfhb%2Fhit1appgg1XByTSlPLJTE40kLCuKW2nO759ufRuonv6QcvcARY%3D&&app_pvid=59590_11.8.51.166_458_1568873641648&ptl=floorId:17741;app_pvid:59590_11.8.51.166_458_1568873641648;tpp_pvid:&union_lens=lensId%3AOPT%401568873634%400b0b7b11_0eaf_16d4827dc03_5486%4001\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 14:18:59');
INSERT INTO `sys_oper_log` VALUES (407, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '119.123.70.25', 'XX XX', '{\"ids\":[\"22\"]}', 0, NULL, '2019-09-19 14:45:07');
INSERT INTO `sys_oper_log` VALUES (408, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '119.123.70.25', 'XX XX', '{\"ids\":[\"21\"]}', 0, NULL, '2019-09-19 14:45:09');
INSERT INTO `sys_oper_log` VALUES (409, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '119.123.70.25', 'XX XX', '{\"ids\":[\"60\"]}', 0, NULL, '2019-09-19 14:45:23');
INSERT INTO `sys_oper_log` VALUES (410, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '119.123.70.25', 'XX XX', '{\"ids\":[\"62\"]}', 0, NULL, '2019-09-19 14:45:26');
INSERT INTO `sys_oper_log` VALUES (411, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '119.123.70.25', 'XX XX', '{\"cId\":[\"578526002522\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/Mmr2b0w\"],\"couponPrice\":[\"20\"],\"label\":[\"直播间2号宝贝\"]}', 0, NULL, '2019-09-19 14:47:09');
INSERT INTO `sys_oper_log` VALUES (412, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"539689702244\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/X4Mqa0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:16:05');
INSERT INTO `sys_oper_log` VALUES (413, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"536777146177\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/NChpa0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:16:35');
INSERT INTO `sys_oper_log` VALUES (414, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"557935349623\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/f4Rpa0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:17:05');
INSERT INTO `sys_oper_log` VALUES (415, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"600656655471\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/9rCpa0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:17:29');
INSERT INTO `sys_oper_log` VALUES (416, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"555921345923\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/fp0pa0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:17:55');
INSERT INTO `sys_oper_log` VALUES (417, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"599756799577\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/OEsoa0w\"],\"couponPrice\":[\"35\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:18:18');
INSERT INTO `sys_oper_log` VALUES (418, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"589451618689\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/vDeoa0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:18:43');
INSERT INTO `sys_oper_log` VALUES (419, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"599370282932\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/k1Soa0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:19:06');
INSERT INTO `sys_oper_log` VALUES (420, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"538108725966\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/IxJoa0w\"],\"couponPrice\":[\"70\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:19:27');
INSERT INTO `sys_oper_log` VALUES (421, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"577469122036\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/EI9oa0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:19:51');
INSERT INTO `sys_oper_log` VALUES (422, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"590589971503\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/Rtzna0w\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:20:14');
INSERT INTO `sys_oper_log` VALUES (423, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"556641640851\"],\"categoryId\":[\"11;加绒加厚长裤\"],\"couponUrl\":[\"https://s.click.taobao.com/l0qna0w\"],\"couponPrice\":[\"3\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:20:35');
INSERT INTO `sys_oper_log` VALUES (424, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"11\"],\"categoryName\":[\"直播间2号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:21:25');
INSERT INTO `sys_oper_log` VALUES (425, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"12\"],\"categoryName\":[\"直播间3号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"0\"]}', 0, NULL, '2019-09-19 15:21:35');
INSERT INTO `sys_oper_log` VALUES (426, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"13\"],\"categoryName\":[\"直播间4号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:21:46');
INSERT INTO `sys_oper_log` VALUES (427, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"14\"],\"categoryName\":[\"直播间5号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:21:56');
INSERT INTO `sys_oper_log` VALUES (428, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"15\"],\"categoryName\":[\"直播间6号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:02');
INSERT INTO `sys_oper_log` VALUES (429, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"16\"],\"categoryName\":[\"直播间7号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:08');
INSERT INTO `sys_oper_log` VALUES (430, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"17\"],\"categoryName\":[\"直播间8号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:14');
INSERT INTO `sys_oper_log` VALUES (431, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"18\"],\"categoryName\":[\"直播间9号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:20');
INSERT INTO `sys_oper_log` VALUES (432, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"19\"],\"categoryName\":[\"直播间10号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:25');
INSERT INTO `sys_oper_log` VALUES (433, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/category/edit', '121.35.103.114', 'XX XX', '{\"id\":[\"20\"],\"categoryName\":[\"直播间11号\"],\"categoryRemarks\":[\"\"],\"userId\":[\"105\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 15:22:29');
INSERT INTO `sys_oper_log` VALUES (434, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '119.123.70.25', 'XX XX', '{\"title\":[\"1\"],\"imgUrl\":[\"\"],\"type\":[\"0\"]}', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'img_url\' doesn\'t have a default value\n### The error may involve com.ruoyi.taoke.poster.mapper.PosterMapper.insertPoster-Inline\n### The error occurred while setting parameters\n### SQL: insert into poster          ( u_id,             title,                          type )           values ( ?,             ?,                          ? )\n### Cause: java.sql.SQLException: Field \'img_url\' doesn\'t have a default value\n; Field \'img_url\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'img_url\' doesn\'t have a default value', '2019-09-19 15:23:02');
INSERT INTO `sys_oper_log` VALUES (435, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/poster/add', '119.123.70.25', 'XX XX', '{\"title\":[\"1\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/09e88c487ee44bb0bb1de9322416ed97.jpg\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-19 15:23:08');
INSERT INTO `sys_oper_log` VALUES (436, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.114', 'XX XX', '{\"cId\":[\"587397034464\"],\"categoryId\":[\"20;直播间11号\"],\"couponUrl\":[\"https://s.click.taobao.com/qGcma0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-19 15:23:35');
INSERT INTO `sys_oper_log` VALUES (437, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"11\"]}', 0, NULL, '2019-09-19 15:26:56');
INSERT INTO `sys_oper_log` VALUES (438, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"11,12,13,14,15,16,17,18,19,20\"]}', 0, NULL, '2019-09-19 15:26:59');
INSERT INTO `sys_oper_log` VALUES (439, '分类', 3, 'com.ruoyi.taoke.category.controller.CategoryController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/category/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"11,12,13,14,15,16,17,18,19,20\"]}', 0, NULL, '2019-09-19 15:28:06');
INSERT INTO `sys_oper_log` VALUES (440, '网页配置', 2, 'com.ruoyi.taoke.webset.controller.WebsetController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/webset/edit', '121.35.103.114', 'XX XX', '{\"uId\":[\"105\"],\"title\":[\"直播间宝宝们可收藏此网站哈，主播下播还可自行购买，不定期更新多重秒杀款！\"],\"videoImg\":[\"https://desk-fd.zol-img.com.cn/t_s1680x1050c5/g2/M00/0F/02/ChMlWV1mKP-IJK1xADAsyvvWhgUAAM1ygCTAywAMCzi994.jpg\"],\"videoUrl\":[\"\"]}', 0, NULL, '2019-09-19 15:33:42');
INSERT INTO `sys_oper_log` VALUES (441, '海报配置', 1, 'com.ruoyi.taoke.poster.controller.PosterController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/add', '121.35.103.114', 'XX XX', '{\"title\":[\"直播间粉丝福利\"],\"imgUrl\":[\"http://taoke-tool-plus.oss-cn-shenzhen.aliyuncs.com/f7a30d6efb8f473aa3345eaae439966a.JPG\"],\"type\":[\"0\"]}', 0, NULL, '2019-09-19 15:53:07');
INSERT INTO `sys_oper_log` VALUES (442, '海报配置', 3, 'com.ruoyi.taoke.poster.controller.PosterController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/poster/remove', '121.35.103.114', 'XX XX', '{\"ids\":[\"22\"]}', 0, NULL, '2019-09-19 15:53:09');
INSERT INTO `sys_oper_log` VALUES (443, '网页配置', 2, 'com.ruoyi.taoke.webset.controller.WebsetController.editSave()', 'POST', 1, 'mouse', '用户组', '/taoke/webset/edit', '121.35.103.114', 'XX XX', '{\"uId\":[\"105\"],\"title\":[\"直播间宝宝们可收藏此网站哈，可自行购买，不定期更新多重秒杀款！\"],\"videoImg\":[\"https://desk-fd.zol-img.com.cn/t_s1680x1050c5/g2/M00/0F/02/ChMlWV1mKP-IJK1xADAsyvvWhgUAAM1ygCTAywAMCzi994.jpg\"],\"videoUrl\":[\"\"]}', 0, NULL, '2019-09-19 15:53:29');
INSERT INTO `sys_oper_log` VALUES (444, '分类', 2, 'com.ruoyi.taoke.category.controller.CategoryController.editSave()', 'POST', 1, 'tomcat', '用户组', '/taoke/category/edit', '119.123.70.25', 'XX XX', '{\"id\":[\"10\"],\"categoryName\":[\"分类12\"],\"categoryRemarks\":[\"\"],\"userId\":[\"104\"],\"enable\":[\"1\"]}', 0, NULL, '2019-09-19 16:21:28');
INSERT INTO `sys_oper_log` VALUES (445, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"74\"]}', 0, NULL, '2019-09-20 14:44:17');
INSERT INTO `sys_oper_log` VALUES (446, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"597191165438\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/6nqgV0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:47:25');
INSERT INTO `sys_oper_log` VALUES (447, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"571206900479\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/FpYeV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:52:39');
INSERT INTO `sys_oper_log` VALUES (448, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"591413792897\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/DB3eV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:54:05');
INSERT INTO `sys_oper_log` VALUES (449, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"572824711576\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/8jYdV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:55:16');
INSERT INTO `sys_oper_log` VALUES (450, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"568512353743\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/qjGdV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:55:38');
INSERT INTO `sys_oper_log` VALUES (451, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"558715656220\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/zg3cV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 14:58:37');
INSERT INTO `sys_oper_log` VALUES (452, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"false\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ClHbV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:00:24');
INSERT INTO `sys_oper_log` VALUES (453, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"597724514435\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ClHbV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:00:33');
INSERT INTO `sys_oper_log` VALUES (454, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598925212738\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"秒杀直接拍\"],\"couponPrice\":[\"0\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:05:13');
INSERT INTO `sys_oper_log` VALUES (455, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"547792939977\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ylUYV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:06:47');
INSERT INTO `sys_oper_log` VALUES (456, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"534991628933\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/f8pXV0w\"],\"couponPrice\":[\"60\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:08:21');
INSERT INTO `sys_oper_log` VALUES (457, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"592768760893\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/oFZXV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:08:58');
INSERT INTO `sys_oper_log` VALUES (458, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"586920171375\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/YIrWV0w\"],\"couponPrice\":[\"50\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:10:27');
INSERT INTO `sys_oper_log` VALUES (459, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"595174151475\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/btZWV0w\"],\"couponPrice\":[\"110\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:10:58');
INSERT INTO `sys_oper_log` VALUES (460, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598145990948\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/FNCWV0w\"],\"couponPrice\":[\"70\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:11:38');
INSERT INTO `sys_oper_log` VALUES (461, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"575921516282\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/4W3WV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:11:59');
INSERT INTO `sys_oper_log` VALUES (462, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"526419773620\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/TppVV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:12:43');
INSERT INTO `sys_oper_log` VALUES (463, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"601636260553\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/bmGSV0w\"],\"couponPrice\":[\"60\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:20:49');
INSERT INTO `sys_oper_log` VALUES (464, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"557876369509\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/eL3SV0w\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:21:09');
INSERT INTO `sys_oper_log` VALUES (465, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"535520474828\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/MMNQV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:25:18');
INSERT INTO `sys_oper_log` VALUES (466, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"601236356232\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/VhyPV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:26:08');
INSERT INTO `sys_oper_log` VALUES (467, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"533663913423\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/iegPV0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:26:32');
INSERT INTO `sys_oper_log` VALUES (468, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"520248920282\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/KUYPV0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:27:01');
INSERT INTO `sys_oper_log` VALUES (469, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"601476061675\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/bDVPV0w\"],\"couponPrice\":[\"60\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:27:21');
INSERT INTO `sys_oper_log` VALUES (470, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"521946930054\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/o6MPV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:27:41');
INSERT INTO `sys_oper_log` VALUES (471, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"45888797366\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/Dy0PV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:28:14');
INSERT INTO `sys_oper_log` VALUES (472, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"573850389107\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/5hHOV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:29:58');
INSERT INTO `sys_oper_log` VALUES (473, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"565721924168\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/tVAOV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:30:25');
INSERT INTO `sys_oper_log` VALUES (474, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"15117325469\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/2jtNV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:30:53');
INSERT INTO `sys_oper_log` VALUES (475, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"17698893592\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ElkNV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:31:26');
INSERT INTO `sys_oper_log` VALUES (476, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"567701603212\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/YqTNV0w\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:32:00');
INSERT INTO `sys_oper_log` VALUES (477, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"17029781400\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/6iGNV0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:32:18');
INSERT INTO `sys_oper_log` VALUES (478, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"544216191834\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/yfwMV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:33:02');
INSERT INTO `sys_oper_log` VALUES (479, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"535864159100\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/6LZMV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:33:48');
INSERT INTO `sys_oper_log` VALUES (480, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"586517619194\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/i9vLV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:35:23');
INSERT INTO `sys_oper_log` VALUES (481, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"43592898892\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/s3ZLV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:36:10');
INSERT INTO `sys_oper_log` VALUES (482, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"38896089373\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/E5NLV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:36:36');
INSERT INTO `sys_oper_log` VALUES (483, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"600071997690\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/9ABLV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:36:58');
INSERT INTO `sys_oper_log` VALUES (484, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"589130080207\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/nI1LV0w\"],\"couponPrice\":[\"420\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:37:21');
INSERT INTO `sys_oper_log` VALUES (485, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"550898870326\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/G9kKV0w\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:37:59');
INSERT INTO `sys_oper_log` VALUES (486, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"601763797036\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/iSYKV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:38:22');
INSERT INTO `sys_oper_log` VALUES (487, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"21528411929\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/3E9KV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:39:12');
INSERT INTO `sys_oper_log` VALUES (488, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"527345722716\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/4SvJV0w\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:39:43');
INSERT INTO `sys_oper_log` VALUES (489, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"590361106017\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/DFjJV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:40:09');
INSERT INTO `sys_oper_log` VALUES (490, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"595146413119\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/uXjJV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:40:27');
INSERT INTO `sys_oper_log` VALUES (491, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"536556714506\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/zmLJV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:41:04');
INSERT INTO `sys_oper_log` VALUES (492, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"587470836820\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/auCJV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:41:27');
INSERT INTO `sys_oper_log` VALUES (493, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"559164427780\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/f3sIV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:42:16');
INSERT INTO `sys_oper_log` VALUES (494, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"594660875201\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/hyFIV0w\"],\"couponPrice\":[\"60\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:43:55');
INSERT INTO `sys_oper_log` VALUES (495, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"602413075860\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/9pnHV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:44:39');
INSERT INTO `sys_oper_log` VALUES (496, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"15578714504\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/vxdHV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:45:26');
INSERT INTO `sys_oper_log` VALUES (497, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"599618275831\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ULDHV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:46:04');
INSERT INTO `sys_oper_log` VALUES (498, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"123\"]}', 0, NULL, '2019-09-20 15:46:17');
INSERT INTO `sys_oper_log` VALUES (499, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"125\"]}', 0, NULL, '2019-09-20 15:46:25');
INSERT INTO `sys_oper_log` VALUES (500, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"602413075860\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/WXjGV0w\"],\"couponPrice\":[\"25\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:47:23');
INSERT INTO `sys_oper_log` VALUES (501, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"559164427780\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/VnPGV0w\"],\"couponPrice\":[\"13\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:48:04');
INSERT INTO `sys_oper_log` VALUES (502, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"596741326208\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/MS0GV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:48:47');
INSERT INTO `sys_oper_log` VALUES (503, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598587122122\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/DPtFV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:49:02');
INSERT INTO `sys_oper_log` VALUES (504, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"600713292475\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/WUiFV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:49:26');
INSERT INTO `sys_oper_log` VALUES (505, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598170746410\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/xL8FV0w\"],\"couponPrice\":[\"50\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:50:43');
INSERT INTO `sys_oper_log` VALUES (506, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"42896278235\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/MG4FV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:51:12');
INSERT INTO `sys_oper_log` VALUES (507, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"600352237353\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/Y6rEV0w\"],\"couponPrice\":[\"70\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:51:40');
INSERT INTO `sys_oper_log` VALUES (508, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"591537444761\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/oGZEV0w\"],\"couponPrice\":[\"30\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:52:02');
INSERT INTO `sys_oper_log` VALUES (509, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"602563630515\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/bTHEV0w\"],\"couponPrice\":[\"90\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:52:52');
INSERT INTO `sys_oper_log` VALUES (510, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"602157138713\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/nWTDV0w\"],\"couponPrice\":[\"60\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:54:45');
INSERT INTO `sys_oper_log` VALUES (511, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"595861550885\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/BhEDV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:55:13');
INSERT INTO `sys_oper_log` VALUES (512, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"560656428891\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/5D2DV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:55:41');
INSERT INTO `sys_oper_log` VALUES (513, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"548041337661\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/iAnCV0w\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:56:12');
INSERT INTO `sys_oper_log` VALUES (514, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"573309632803\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/QXGCV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:57:29');
INSERT INTO `sys_oper_log` VALUES (515, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"601013807046\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/8U9CV0w\"],\"couponPrice\":[\"80\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:57:49');
INSERT INTO `sys_oper_log` VALUES (516, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"590863741066\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/6UqBV0w\"],\"couponPrice\":[\"50\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:58:29');
INSERT INTO `sys_oper_log` VALUES (517, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"565068199347\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/WbeBV0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:58:46');
INSERT INTO `sys_oper_log` VALUES (518, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"557245030054\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/wvRBV0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:59:09');
INSERT INTO `sys_oper_log` VALUES (519, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"583058449549\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/v7DBV0w\"],\"couponPrice\":[\"50\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 15:59:40');
INSERT INTO `sys_oper_log` VALUES (520, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"575325660550\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/yv3BV0w\"],\"couponPrice\":[\"150\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:00:06');
INSERT INTO `sys_oper_log` VALUES (521, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"578484083325\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/EauAV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:00:26');
INSERT INTO `sys_oper_log` VALUES (522, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"546704087570\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/oAjAV0w\"],\"couponPrice\":[\"100\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:00:46');
INSERT INTO `sys_oper_log` VALUES (523, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"584431463623\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/CuPAV0w\"],\"couponPrice\":[\"10\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:01:29');
INSERT INTO `sys_oper_log` VALUES (524, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"600272483854\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/hsBAV0w\"],\"couponPrice\":[\"15\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:01:57');
INSERT INTO `sys_oper_log` VALUES (525, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"17701485165\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/CA0AV0w\"],\"couponPrice\":[\"335\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:02:26');
INSERT INTO `sys_oper_log` VALUES (526, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598451153816\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/1Hn9V0w\"],\"couponPrice\":[\"100\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:03:07');
INSERT INTO `sys_oper_log` VALUES (527, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"535577091231\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/7ra9V0w\"],\"couponPrice\":[\"100\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:03:27');
INSERT INTO `sys_oper_log` VALUES (528, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"598903651958\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/XpN9V0w\"],\"couponPrice\":[\"120\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:03:55');
INSERT INTO `sys_oper_log` VALUES (529, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"560400464482\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/ZPt8V0w\"],\"couponPrice\":[\"70\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:05:01');
INSERT INTO `sys_oper_log` VALUES (530, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"577847487673\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/z1A8V0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:06:54');
INSERT INTO `sys_oper_log` VALUES (531, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"538266341651\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/Cet7V0w\"],\"couponPrice\":[\"5\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:07:31');
INSERT INTO `sys_oper_log` VALUES (532, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"575369973035\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/XDY7V0w\"],\"couponPrice\":[\"3\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:08:03');
INSERT INTO `sys_oper_log` VALUES (533, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"578360787629\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/e5N7V0w\"],\"couponPrice\":[\"45\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:08:24');
INSERT INTO `sys_oper_log` VALUES (534, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"600795819978\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/GeI6V0w\"],\"couponPrice\":[\"20\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:10:54');
INSERT INTO `sys_oper_log` VALUES (535, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"597027174028\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/r426V0w\"],\"couponPrice\":[\"40\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:11:23');
INSERT INTO `sys_oper_log` VALUES (536, '商品信息', 1, 'com.ruoyi.taoke.commodity.controller.CommodityController.addSave()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/add', '121.35.103.47', 'XX XX', '{\"cId\":[\"526606584292\"],\"categoryId\":[\"11;直播间2号\"],\"couponUrl\":[\"https://s.click.taobao.com/z5p5V0w\"],\"couponPrice\":[\"2\"],\"label\":[\"\"]}', 0, NULL, '2019-09-20 16:11:47');
INSERT INTO `sys_oper_log` VALUES (537, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"69\"]}', 0, NULL, '2019-09-20 16:16:42');
INSERT INTO `sys_oper_log` VALUES (538, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"72\"]}', 0, NULL, '2019-09-20 16:16:49');
INSERT INTO `sys_oper_log` VALUES (539, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"162\"]}', 0, NULL, '2019-09-21 13:52:39');
INSERT INTO `sys_oper_log` VALUES (540, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"161\"]}', 0, NULL, '2019-09-21 13:52:41');
INSERT INTO `sys_oper_log` VALUES (541, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"159\"]}', 0, NULL, '2019-09-21 13:52:55');
INSERT INTO `sys_oper_log` VALUES (542, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"158\"]}', 0, NULL, '2019-09-21 13:52:57');
INSERT INTO `sys_oper_log` VALUES (543, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"148\"]}', 0, NULL, '2019-09-21 13:53:15');
INSERT INTO `sys_oper_log` VALUES (544, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"149\"]}', 0, NULL, '2019-09-21 13:53:17');
INSERT INTO `sys_oper_log` VALUES (545, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"150\"]}', 0, NULL, '2019-09-21 13:53:19');
INSERT INTO `sys_oper_log` VALUES (546, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"151\"]}', 0, NULL, '2019-09-21 13:53:21');
INSERT INTO `sys_oper_log` VALUES (547, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"152\"]}', 0, NULL, '2019-09-21 13:53:23');
INSERT INTO `sys_oper_log` VALUES (548, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"153\"]}', 0, NULL, '2019-09-21 13:53:26');
INSERT INTO `sys_oper_log` VALUES (549, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"154\"]}', 0, NULL, '2019-09-21 13:53:28');
INSERT INTO `sys_oper_log` VALUES (550, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"146\"]}', 0, NULL, '2019-09-21 13:53:58');
INSERT INTO `sys_oper_log` VALUES (551, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"147\"]}', 0, NULL, '2019-09-21 13:54:05');
INSERT INTO `sys_oper_log` VALUES (552, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"65\"]}', 0, NULL, '2019-09-21 13:54:18');
INSERT INTO `sys_oper_log` VALUES (553, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"66\"]}', 0, NULL, '2019-09-21 13:54:20');
INSERT INTO `sys_oper_log` VALUES (554, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"73\"]}', 0, NULL, '2019-09-21 13:54:26');
INSERT INTO `sys_oper_log` VALUES (555, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"70\"]}', 0, NULL, '2019-09-21 13:54:34');
INSERT INTO `sys_oper_log` VALUES (556, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"77\"]}', 0, NULL, '2019-09-21 13:54:43');
INSERT INTO `sys_oper_log` VALUES (557, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"84\"]}', 0, NULL, '2019-09-21 13:54:53');
INSERT INTO `sys_oper_log` VALUES (558, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"89\"]}', 0, NULL, '2019-09-21 13:55:03');
INSERT INTO `sys_oper_log` VALUES (559, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"90\"]}', 0, NULL, '2019-09-21 13:55:06');
INSERT INTO `sys_oper_log` VALUES (560, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"92\"]}', 0, NULL, '2019-09-21 13:55:14');
INSERT INTO `sys_oper_log` VALUES (561, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"96\"]}', 0, NULL, '2019-09-21 13:55:22');
INSERT INTO `sys_oper_log` VALUES (562, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"97\"]}', 0, NULL, '2019-09-21 13:55:26');
INSERT INTO `sys_oper_log` VALUES (563, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"105\"]}', 0, NULL, '2019-09-21 13:55:29');
INSERT INTO `sys_oper_log` VALUES (564, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"104\"]}', 0, NULL, '2019-09-21 13:55:31');
INSERT INTO `sys_oper_log` VALUES (565, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"103\"]}', 0, NULL, '2019-09-21 13:55:34');
INSERT INTO `sys_oper_log` VALUES (566, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"98\"]}', 0, NULL, '2019-09-21 13:55:39');
INSERT INTO `sys_oper_log` VALUES (567, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"99\"]}', 0, NULL, '2019-09-21 13:55:41');
INSERT INTO `sys_oper_log` VALUES (568, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"100\"]}', 0, NULL, '2019-09-21 13:55:44');
INSERT INTO `sys_oper_log` VALUES (569, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"101\"]}', 0, NULL, '2019-09-21 13:55:46');
INSERT INTO `sys_oper_log` VALUES (570, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"102\"]}', 0, NULL, '2019-09-21 13:55:48');
INSERT INTO `sys_oper_log` VALUES (571, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"106\"]}', 0, NULL, '2019-09-21 13:55:51');
INSERT INTO `sys_oper_log` VALUES (572, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"107\"]}', 0, NULL, '2019-09-21 13:55:53');
INSERT INTO `sys_oper_log` VALUES (573, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"108\"]}', 0, NULL, '2019-09-21 13:55:55');
INSERT INTO `sys_oper_log` VALUES (574, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"111\"]}', 0, NULL, '2019-09-21 13:56:01');
INSERT INTO `sys_oper_log` VALUES (575, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"112\"]}', 0, NULL, '2019-09-21 13:56:04');
INSERT INTO `sys_oper_log` VALUES (576, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"113\"]}', 0, NULL, '2019-09-21 13:56:06');
INSERT INTO `sys_oper_log` VALUES (577, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"115\"]}', 0, NULL, '2019-09-21 13:56:16');
INSERT INTO `sys_oper_log` VALUES (578, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"116\"]}', 0, NULL, '2019-09-21 13:56:19');
INSERT INTO `sys_oper_log` VALUES (579, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"117\"]}', 0, NULL, '2019-09-21 13:56:21');
INSERT INTO `sys_oper_log` VALUES (580, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"118\"]}', 0, NULL, '2019-09-21 13:56:23');
INSERT INTO `sys_oper_log` VALUES (581, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"119\"]}', 0, NULL, '2019-09-21 13:56:25');
INSERT INTO `sys_oper_log` VALUES (582, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"120\"]}', 0, NULL, '2019-09-21 13:56:28');
INSERT INTO `sys_oper_log` VALUES (583, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"121\"]}', 0, NULL, '2019-09-21 13:56:30');
INSERT INTO `sys_oper_log` VALUES (584, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"122\"]}', 0, NULL, '2019-09-21 13:56:33');
INSERT INTO `sys_oper_log` VALUES (585, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"124\"]}', 0, NULL, '2019-09-21 13:56:35');
INSERT INTO `sys_oper_log` VALUES (586, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"126\"]}', 0, NULL, '2019-09-21 13:56:38');
INSERT INTO `sys_oper_log` VALUES (587, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"127\"]}', 0, NULL, '2019-09-21 13:56:42');
INSERT INTO `sys_oper_log` VALUES (588, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"128\"]}', 0, NULL, '2019-09-21 13:56:44');
INSERT INTO `sys_oper_log` VALUES (589, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"129\"]}', 0, NULL, '2019-09-21 13:56:46');
INSERT INTO `sys_oper_log` VALUES (590, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"130\"]}', 0, NULL, '2019-09-21 13:56:49');
INSERT INTO `sys_oper_log` VALUES (591, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"131\"]}', 0, NULL, '2019-09-21 13:56:52');
INSERT INTO `sys_oper_log` VALUES (592, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"132\"]}', 0, NULL, '2019-09-21 13:56:55');
INSERT INTO `sys_oper_log` VALUES (593, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"136\"]}', 0, NULL, '2019-09-21 13:57:11');
INSERT INTO `sys_oper_log` VALUES (594, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"76\"]}', 0, NULL, '2019-09-21 13:57:33');
INSERT INTO `sys_oper_log` VALUES (595, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"93\"]}', 0, NULL, '2019-09-21 13:57:45');
INSERT INTO `sys_oper_log` VALUES (596, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"138\"]}', 0, NULL, '2019-09-21 13:57:55');
INSERT INTO `sys_oper_log` VALUES (597, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"140\"]}', 0, NULL, '2019-09-21 13:58:04');
INSERT INTO `sys_oper_log` VALUES (598, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"155\"]}', 0, NULL, '2019-09-21 13:58:28');
INSERT INTO `sys_oper_log` VALUES (599, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"71\"]}', 0, NULL, '2019-09-21 13:59:01');
INSERT INTO `sys_oper_log` VALUES (600, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"64\"]}', 0, NULL, '2019-09-21 13:59:12');
INSERT INTO `sys_oper_log` VALUES (601, '商品信息', 3, 'com.ruoyi.taoke.commodity.controller.CommodityController.remove()', 'POST', 1, 'mouse', '用户组', '/taoke/commodity/remove', '121.35.103.47', 'XX XX', '{\"ids\":[\"67\"]}', 0, NULL, '2019-09-21 13:59:18');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-10 16:03:02', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'Admin', '00', '397047234@qq.com', '13143098753', '0', '/profile/avatar/2019/09/13/020e59fa59cf07c1c4d5b9f4e72f4dc5.png', 'admin', 'a2f1f5', '0', '0', '119.123.70.25', '2019-09-19 15:31:57', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-19 15:31:57', '管理员');
INSERT INTO `sys_user` VALUES (104, 200, 'tomcat', 'tomcat', '00', '397047243@qq.com', '13143098755', '0', '/profile/avatar/2019/09/05/19c002672471b09f44d3ff8866b627a7.png', 'tomcat', '4f72f5', '0', '0', '119.123.70.25', '2019-09-19 16:21:13', 'admin', '2019-09-03 01:45:52', '', '2019-09-19 16:21:12', NULL);
INSERT INTO `sys_user` VALUES (105, 200, 'mouse', 'mouse', '00', '397047242@qq.com', '13143098756', '0', '', 'mouse', '6b4f0f', '0', '0', '119.123.70.25', '2019-09-20 15:45:30', 'admin', '2019-09-03 16:34:46', 'admin', '2019-09-20 15:45:30', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);
INSERT INTO `sys_user_post` VALUES (103, 4);
INSERT INTO `sys_user_post` VALUES (104, 4);
INSERT INTO `sys_user_post` VALUES (105, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (103, 2);
INSERT INTO `sys_user_role` VALUES (104, 2);
INSERT INTO `sys_user_role` VALUES (105, 2);

-- ----------------------------
-- Table structure for term
-- ----------------------------
DROP TABLE IF EXISTS `term`;
CREATE TABLE `term`  (
  `u_id` bigint(20) NOT NULL COMMENT '用户id',
  `available_time` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '604800000' COMMENT '可用时间，单位：毫秒（默认7天）',
  `created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of term
-- ----------------------------
INSERT INTO `term` VALUES (104, '3196800000', '2019-09-01 01:45:52', '2019-09-19 13:36:18');
INSERT INTO `term` VALUES (105, '3196800000', '2019-09-09 11:00:47', '2019-09-19 10:52:19');

-- ----------------------------
-- Table structure for webset
-- ----------------------------
DROP TABLE IF EXISTS `webset`;
CREATE TABLE `webset`  (
  `u_id` bigint(20) NOT NULL COMMENT '用户id',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网页标题',
  `video_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频封面',
  `video_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webset
-- ----------------------------
INSERT INTO `webset` VALUES (104, '欢迎来到tomcat的网站！', 'https://desk-fd.zol-img.com.cn/t_s1680x1050c5/g2/M00/0F/02/ChMlWV1mKP-IJK1xADAsyvvWhgUAAM1ygCTAywAMCzi994.jpg', '1', '2019-09-03 01:45:52', '2019-09-03 16:36:16');
INSERT INTO `webset` VALUES (105, '直播间宝宝们可收藏此网站哈，可自行购买，不定期更新多重秒杀款！', 'https://desk-fd.zol-img.com.cn/t_s1680x1050c5/g2/M00/0F/02/ChMlWV1mKP-IJK1xADAsyvvWhgUAAM1ygCTAywAMCzi994.jpg', NULL, '2019-09-03 16:34:47', '2019-09-19 15:53:29');

SET FOREIGN_KEY_CHECKS = 1;
