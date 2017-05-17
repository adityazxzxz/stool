# Host: localhost  (Version 5.5.5-10.1.13-MariaDB)
# Date: 2017-05-16 03:35:02
# Generator: MySQL-Front 5.4  (Build 4.83) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "report_master"
#

DROP TABLE IF EXISTS `report_master`;
CREATE TABLE `report_master` (
  `day` date DEFAULT NULL,
  `seller_type` varchar(50) DEFAULT NULL,
  `buying_currency` varchar(10) DEFAULT NULL,
  `selling_currency` varchar(10) DEFAULT NULL,
  `publisher_currency` varchar(10) DEFAULT NULL,
  `publisher_id` varchar(15) DEFAULT NULL,
  `publisher_name` varchar(50) DEFAULT NULL,
  `site_id` varchar(15) DEFAULT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `line_item_id` varchar(10) DEFAULT NULL,
  `line_item_name` varchar(50) DEFAULT NULL,
  `campaign_id` varchar(10) DEFAULT NULL,
  `campaign_name` varchar(50) DEFAULT NULL,
  `creative_id` varchar(15) DEFAULT NULL,
  `creative_name` varchar(50) DEFAULT NULL,
  `mediatype_id` varchar(10) DEFAULT NULL,
  `mediatype` varchar(20) DEFAULT NULL,
  `advertiser_currency` varchar(10) DEFAULT NULL,
  `imp_type_id` varchar(10) DEFAULT NULL,
  `imp_type` varchar(20) DEFAULT NULL,
  `pub_rule_id` varchar(15) DEFAULT NULL,
  `pub_rule_name` varchar(50) DEFAULT NULL,
  `revenue_type_id` varchar(15) DEFAULT NULL,
  `revenue_type` varchar(25) DEFAULT NULL,
  `payment_type` varchar(25) DEFAULT NULL,
  `billing_period_start_date` datetime DEFAULT NULL,
  `billing_period_end_date` datetime DEFAULT NULL,
  `deal_type` varchar(25) DEFAULT NULL,
  `deal_id` varchar(15) DEFAULT NULL,
  `deal_name` varchar(25) DEFAULT NULL,
  `insertion_order_id` varchar(15) DEFAULT NULL,
  `insertion_order_name` varchar(25) DEFAULT NULL,
  `buyer_member_id` varchar(15) DEFAULT NULL,
  `buyer_member_name` varchar(50) DEFAULT NULL,
  `campaign_priority` varchar(15) DEFAULT NULL,
  `imps` varchar(15) DEFAULT NULL,
  `clicks` varchar(15) DEFAULT NULL,
  `ctr` varchar(15) DEFAULT NULL,
  `total_convs` varchar(15) DEFAULT NULL,
  `convs_rate` varchar(15) DEFAULT NULL,
  `revenue` varchar(15) DEFAULT NULL,
  `revenue_selling_currency` varchar(25) DEFAULT NULL,
  `revenue_buying_currency` varchar(15) DEFAULT NULL,
  `rpm` varchar(15) DEFAULT NULL,
  `rpm_selling_currency` varchar(15) DEFAULT NULL,
  `rpm_buying_currency` varchar(15) DEFAULT NULL,
  `total_network_rpm` varchar(15) DEFAULT NULL,
  `total_network_rpm_sellling_currency` varchar(15) DEFAULT NULL,
  `total_network_rpm_buying_currency` varchar(15) DEFAULT NULL,
  `cost` varchar(15) DEFAULT NULL,
  `cost_selling_currency` varchar(15) DEFAULT NULL,
  `cost_buying_currency` varchar(15) DEFAULT NULL,
  `cpm` varchar(15) DEFAULT NULL,
  `cpm_selling_currency` varchar(15) DEFAULT NULL,
  `cpm_buying_currency` varchar(15) DEFAULT NULL,
  `profit` varchar(15) DEFAULT NULL,
  `profit_selling_currency` varchar(15) DEFAULT NULL,
  `profit_advertiser_currency` varchar(15) DEFAULT NULL,
  `ppm` varchar(15) DEFAULT NULL,
  `ppm_selling_currency` varchar(15) DEFAULT NULL,
  `ppm_buying_currency` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "report_master"
#

