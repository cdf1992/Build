/*
Navicat MySQL Data Transfer

Source Server         : huifeng
Source Server Version : 50636
Source Host           : 10.0.1.162:3306
Source Database       : jes_hf

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-28 15:49:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vms_paper_invoice_stock
-- ----------------------------
DROP TABLE IF EXISTS `vms_paper_invoice_stock`;
CREATE TABLE `vms_paper_invoice_stock` (
  `PAPER_INVOICE_STOCK_ID` varchar(80) NOT NULL COMMENT '库存ID',
  `INST_ID` varchar(20) NOT NULL COMMENT '机构ID',
  `USER_ID` varchar(20) NOT NULL COMMENT '领购人员',
  `RECEIVE_INVOICE_TIME` datetime DEFAULT NULL COMMENT '领购日期',
  `MAX_MONEY` decimal(16,2) DEFAULT NULL COMMENT '单张发票开票金额限额',
  `INVOICE_TYPE` varchar(20) DEFAULT NULL COMMENT '发票类型',
  `DISTRIBUTE_FLAG` varchar(20) NOT NULL COMMENT '分发状态 0:否 1：是 2：部分分发',
  `CREATE_TIME` datetime NOT NULL COMMENT '操作时间（录入时间）',
  `CREATE_USER_ID` varchar(20) NOT NULL COMMENT '操作人ID（录入人）',
  `CREATE_INST_ID` varchar(20) NOT NULL COMMENT '操作机构ID（录入人所属机构）',
  `TAXPAYER_NO` varchar(20) DEFAULT NULL COMMENT '纳税人识别号',
  `TAX_DISK_NO` varchar(20) DEFAULT NULL COMMENT '税控盘号',
  `INVOICE_CODE` varchar(20) NOT NULL COMMENT '发票代码',
  `INVOICE_BEGIN_NO` varchar(20) NOT NULL COMMENT '发票起始号码',
  `INVOICE_END_NO` varchar(20) NOT NULL COMMENT '发票终止号码',
  `INVOICE_NUM` int(8) NOT NULL COMMENT '总张数',
  `USERD_NUM` int(8) NOT NULL COMMENT '已用张数',
  `HAS_DISTRIBUTE_NUM` int(8) NOT NULL COMMENT '已分发张数',
  `CURRENT_BILL_NO` varchar(20) DEFAULT NULL COMMENT '当前发发票号码',
  `NORMAL_MAKE_INVOICE` varchar(25) DEFAULT NULL COMMENT '正常开票数量',
  `BLANK_WASTE_CANCEL` varchar(25) DEFAULT NULL COMMENT '空白作废数量',
  `ISSUED_CANCEL` varchar(25) DEFAULT NULL COMMENT '开具作废数量',
  `RED_HEDGE` varchar(25) DEFAULT NULL COMMENT '红冲数量',
  `BALANCE_NUM` int(8) DEFAULT NULL,
  `HAS_RECEIVE_NUM` int(8) DEFAULT NULL COMMENT '已经领用的张数',
  `PAPER_INVOICE_DISTRIBUTE_ID` varchar(20) DEFAULT NULL,
  `TAX_BSPH_NO` varchar(20) DEFAULT NULL COMMENT '报税盘号',
  PRIMARY KEY (`PAPER_INVOICE_STOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
