-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-22 12:02:46
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amancms`
--

-- --------------------------------------------------------

--
-- 表的结构 `nx_access`
--

CREATE TABLE IF NOT EXISTS `nx_access` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `nx_access`
--

INSERT INTO `nx_access` (`id`, `role_id`, `node_id`, `level`, `pid`, `module`) VALUES
(1, 1, 1, 1, 0, NULL),
(2, 1, 2, 2, 1, NULL),
(3, 1, 3, 3, 2, NULL),
(4, 1, 4, 3, 2, NULL),
(5, 1, 5, 3, 2, NULL),
(6, 1, 6, 3, 2, NULL),
(7, 1, 7, 3, 2, NULL),
(8, 1, 8, 3, 2, NULL),
(9, 1, 9, 3, 2, NULL),
(10, 1, 10, 3, 2, NULL),
(11, 1, 11, 3, 2, NULL),
(12, 1, 12, 2, 1, NULL),
(13, 1, 13, 3, 12, NULL),
(14, 1, 14, 3, 12, NULL),
(15, 1, 15, 3, 12, NULL),
(16, 1, 16, 3, 12, NULL),
(17, 1, 17, 3, 12, NULL),
(18, 1, 18, 3, 12, NULL),
(19, 1, 19, 3, 12, NULL),
(20, 1, 20, 3, 12, NULL),
(21, 1, 21, 3, 12, NULL),
(22, 1, 22, 3, 12, NULL),
(23, 1, 23, 3, 2, NULL),
(24, 3, 1, 1, 0, NULL),
(25, 3, 2, 2, 1, NULL),
(26, 3, 3, 3, 12, NULL),
(27, 3, 4, 3, 12, NULL),
(28, 3, 5, 3, 12, NULL),
(29, 3, 6, 3, 12, NULL),
(30, 3, 8, 3, 12, NULL),
(31, 3, 10, 3, 12, NULL),
(32, 3, 11, 3, 12, NULL),
(33, 3, 12, 2, 1, NULL),
(34, 3, 13, 3, 12, NULL),
(35, 3, 14, 3, 12, NULL),
(36, 3, 18, 3, 12, NULL),
(37, 3, 19, 3, 12, NULL),
(38, 3, 22, 3, 12, NULL),
(39, 1, 24, 3, 2, NULL),
(40, 1, 25, 3, 2, NULL),
(41, 1, 26, 3, 2, NULL),
(42, 3, 23, 3, 2, NULL),
(43, 3, 24, 3, 2, NULL),
(44, 3, 25, 3, 2, NULL),
(45, 3, 26, 3, 2, NULL),
(46, 3, 27, 3, 2, NULL),
(47, 1, 27, 3, 2, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `nx_album`
--

CREATE TABLE IF NOT EXISTS `nx_album` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `album_pid` (`pid`),
  KEY `album_path` (`path`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `nx_album`
--

INSERT INTO `nx_album` (`id`, `pid`, `path`, `title`, `description`) VALUES
(1, 0, '0', '相册一', '相册一相册一'),
(2, 0, '0', '相册二', ''),
(3, 0, '0-1', '小1相册', ''),
(4, 0, '-3', '111', '');

-- --------------------------------------------------------

--
-- 表的结构 `nx_article`
--

CREATE TABLE IF NOT EXISTS `nx_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumbpic` text NOT NULL,
  `summary` varchar(200) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `comefrom` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `keyword` varchar(20) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `audit` smallint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` smallint(1) unsigned NOT NULL DEFAULT '0',
  `allow` smallint(1) unsigned NOT NULL DEFAULT '1',
  `views` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `article_title` (`title`),
  KEY `article_uid` (`uid`),
  KEY `article_pid` (`pid`),
  KEY `article_audit` (`audit`),
  KEY `article_recommend` (`recommend`),
  KEY `article_allow` (`allow`),
  KEY `article_keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- 转存表中的数据 `nx_article`
--

INSERT INTO `nx_article` (`id`, `title`, `thumbpic`, `summary`, `posttime`, `uid`, `comefrom`, `content`, `keyword`, `pid`, `audit`, `recommend`, `allow`, `views`) VALUES
(23, '隐形专业版分析仪', '/Public/goodsimages/danren/1/3.jpg', '隐形专业版分析仪', 1429841705, 1, '1', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/4.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/5.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/6.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/7.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/8.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/1/9.jpg&quot; /></p>\r\n<p>\r\n	<strong style=&quot;text-align: left;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>隐形专业版分析仪</strong><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>，专业牌具厂家研发推荐，采用AKK-K1升级版版，外观精美，体积更小，在原来的基础上大大的 缩小，火柴盒大小，携带更方便；功能更强大，超级扫描分析系统，超级技术，专业厂商，必赢的保证，顶级配置，性能提升一倍以上，全球最准，最快，最强的扫 描报牌系统，行业唯一具备每秒可完成十亿次的扫描运算和上千次的对比分析，卓越超前的设计理念工艺好，性能好，功能更强大，配备超强版MINI耳机感应 器，效果在行业汇总，绝对的第一。</span></p>\r\n', 'éšå½¢ä¸“ä¸šç‰ˆåˆ†', 5, 1, 0, 1, 3508),
(133, '普通扑克筒子牌九透视桌', '/Public/goodsimages/shipin/2016/1.png', '', 1450250875, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/1.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 853),
(24, '升级版分析仪', '/Public/goodsimages/danren/2/2.jpg', '这款升级版分析仪的出现超越了目前市场上其他款式的扑克分析仪，不仅在外观上进行了奢华的升级，携带更方便；更在功能上进行了扩展，使用起来也更加轻松方便。', 1429843054, 1, '这款升级版分析仪的出现超越了目前市场上其他款式的扑', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/2/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/2/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/2/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/2/4.jpg&quot; /></p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;</span><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);&quot;>这款升级版分析仪的出现超越了目前市场上其他款式的扑克分析仪，不仅在外观上进行了奢华的升级，</span><font size=&quot;2&quot; style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; line-height: 18px; background-color: rgb(255, 255, 255);&quot;>携带更方便；</font><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);&quot;>更在功能上进行了扩展，使用起来也更加轻松方便。</span></p>\r\n', '', 5, 1, 0, 1, 3271),
(25, '苹果手机智能一体机', '/Public/goodsimages/danren/3/2.jpg', '', 1429843294, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/3/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/3/1.jpg&quot;  /></p>\r\n<p style=&quot;margin: 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 15px; white-space: normal;&quot;>\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 12px;&quot;>1、具备普通手机的接打电话功能，短信功能以及影音娱乐播放功能。</span></p>\r\n<p style=&quot;margin: 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 15px; white-space: normal;&quot;>\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 12px;&quot;>2、可上网，可以配置内存卡，苹果E2一体机不仅仅是一款扫描镜头。</span></p>\r\n<p style=&quot;margin: 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 15px; white-space: normal;&quot;>\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 12px;&quot;>3、同时它也是一款智能手机，性价比最高，本站强烈推荐。</span></p>\r\n', '', 5, 1, 0, 1, 5434),
(26, '各种手机扫描仪', '/Public/goodsimages/danren/4/1.jpg', '', 1429843407, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/4.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/5.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/6.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/7.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/8.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/9.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/4/10.jpg&quot; /></p>\r\n', '', 5, 1, 0, 1, 3469),
(27, '最新一对一分析仪', '/Public/goodsimages/danren/5/1.jpg', '', 1429843597, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/5/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/5/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/5/3.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>最新一对一单人操作分析仪 广州诺信牌具公司有着人无我有，人有我优的发展理念，近期又推出一款一对一的单人操作，只有我的分析仪能够分析我的牌，市场上任何一款分析仪都无法检验牌的真伪，真正的做到了独一无二，安全可靠。&nbsp;</span></p>\r\n', '', 5, 1, 0, 1, 3236),
(28, '升级K20一体机', '/Public/goodsimages/danren/6/5.jpg', '', 1429845219, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/6/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/6/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/6/3.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/6/4.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/6/5.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>广州专业牌具厂家推出AKK-K2升级版，K20高性能版分析仪盛大上市，功能强大，性能稳定，采用黄金镶边，让您拿在手中更显高贵；成为行业的领先的佼佼 者，每秒可完成上千次的分析，为您推出最佳准确的结果；我们默默的为广大玩牌的朋友付出，我们不断研发，不断更新，为您提供更好的单人操作产品，K20高 性能版单人操作的上市，即将带领着单人操作行业进入一个全新的时代；</span><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>广州专业牌具厂家</span><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>一路伴随着您，我们一起走！一起赢！</span></p>\r\n', '', 5, 1, 0, 1, 4690),
(29, '三星智能一体机', '/Public/goodsimages/danren/7/1.jpg', '', 1429845574, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/7/1.jpg&quot;  /></span></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/7/2.jpg&quot;  /></p>\r\n<p>\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>最新</span><strong style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>三星智能一体机</strong><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>隆重推出，一体机中的战斗机；精美的三星超大屏幕外观，性能稳定，操作简单，智能手机外观，可打电话，发信息等一切手机具备的功能，玩家不错的选择；</span><br style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot; />\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>&nbsp;&nbsp;&nbsp;&nbsp; 1、三星全能型单人操作分析仪，全新仿三星9100外观，4.0大屏使用更舒坦，电话、短信无影响，快速准确报牌，实战更轻松！</span><br style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot; />\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>&nbsp;&nbsp;&nbsp;&nbsp; 2、拥有高清内置镜头，也可配高清外置镜头</span><br style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot; />\r\n	<span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);&quot;>&nbsp;&nbsp;&nbsp;&nbsp; 3、拥有湖南字牌、十三水、八怪、斗地主等多种地方性玩法，全国各地玩法均可开通。</span></p>\r\n', '', 5, 1, 0, 1, 3471),
(30, '最新顶级版智能主机', '/Public/goodsimages/danren/8/1.jpg', '', 1429845710, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/8/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/8/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/8/3.jpg&quot;  /></p>\r\n', '', 5, 1, 0, 1, 4267),
(31, '芯片感应扑克分析仪', '/Public/goodsimages/danren/9/1.jpg', '', 1429845804, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/9/1.jpg&quot;  /></p>\r\n', '', 5, 1, 0, 1, 3205),
(32, '无影追踪扫描仪', '/Public/goodsimages/danren/10/1.jpg', '', 1429845962, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/10/1.jpg&quot;  /></p>\r\n', '', 5, 1, 0, 1, 3106),
(33, '普通扑克知点仪', '/Public/goodsimages/danren/11/1.jpg', '', 1429846222, 1, '', '<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/11/1.jpg&quot;  /></p>\n', '', 5, 1, 0, 1, 4187),
(34, '麻将程序万能遥控', '/Public/goodsimages/danren/12/2.jpg', '', 1429846352, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/12/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/12/2.jpg&quot; /></p>\r\n', '', 5, 1, 0, 1, 3527),
(35, '普通扑克单人操作分析仪', '/Public/goodsimages/danren/13/2.jpg', '', 1429846802, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/13/2.jpg&quot;  /></p>\r\n', '', 5, 1, 0, 1, 4762),
(36, 'DK88智能分析仪', '/Public/goodsimages/danren/14/1.jpg', '', 1429847104, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/14/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/danren/14/3.png&quot;  /></p>\r\n', '', 5, 1, 0, 1, 3295),
(37, '药物感应器', '/Public/goodsimages/jingtou/1/1.jpg', '', 1429854050, 1, '', '\r\n<p style=&quot;text-align: center;&quot;>\r\n	<span style=&quot;text-align: left; color: rgb(68, 68, 68); font-size: 14px;&quot;><img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/1/1.jpg&quot; /></span></p>\r\n\r\n', '', 11, 1, 0, 1, 5486),
(38, '电波感应色子', '/Public/goodsimages/jingtou/2/1.jpg', '', 1429854174, 1, '', '<p>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/2/1.jpg&quot; /></p>\r\n', '', 11, 1, 0, 1, 5758),
(39, '广角四季衣服扫描仪', '/Public/goodsimages/jingtou/3/1.jpg', '', 1429856329, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/3/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/3/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/3/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/3/4.jpg&quot; /></p>\r\n<p>\r\n&nbsp;</p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68);  font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;</span><span style=&quot;color: rgb(68, 68, 68); font-family: 微软雅黑; font-size: 14px; line-height: 26px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>各种主机镜头都可以伪装于各种衣服任何一个部位上面，像夏季T恤、寸衫、秋季的夹克、西服、风衣冬天的大衣、棉袄、、、也可以根据客户要求定做。镜头伪装于衣服上比较隐蔽、不易被发现、实用性强！</span></p>\r\n', '', 7, 1, 0, 1, 5844),
(135, '六代密码色子', '/Public/goodsimages/shipin/2016/3.png', '', 1450252602, 1, '', '\r\n<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/3.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 936),
(40, '玻璃烟灰缸扫描仪', '/Public/goodsimages/jingtou/4/1.jpg', '', 1429859227, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; </span><img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/4/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/4/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/4/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/4/5.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/4/6.jpg&quot; /></p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>当越来越多的人知道手机是扑克看变镜头以后，很多牌场已经禁止把手机放在桌面上。对于使用手机单人操作镜头的玩家来说是一个沉重的打击。目前市场迫切需要 的不再是单人操作主机而是单人操作扑克扫描镜头。需要隐蔽性强，不会让人怀疑的单人操作高清镜头。在夏天，衣服袖口单人操作镜头已经不能再用，不过专业生 产单人操作镜头的厂家在这个夏天没有让大家失望，推出了几款隐蔽的扑克扫描镜头，其中玻璃烟灰缸镜头就是其中的一款。</span></p>\r\n', '', 7, 1, 0, 1, 5304),
(134, '普通牌远程飞飙后台', '/Public/goodsimages/shipin/2016/2.png', '', 1450251790, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/2.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 897),
(41, '真钱币变牌器', '/Public/goodsimages/jingtou/5/1.jpg', '', 1429859685, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/5/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/5/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/5/3.gif&quot; /></p>\r\n', '', 8, 1, 0, 1, 4791),
(42, '各种车钥匙镜头', '/Public/goodsimages/jingtou/6/1.jpg', '', 1429859788, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/6/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/6/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/6/3.jpg&quot; /></p>\r\n', '', 7, 1, 0, 1, 4808),
(43, '矿泉水镜头', '/Public/goodsimages/jingtou/7/1.jpg', '', 1429859887, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/7/1.jpg&quot; /></p>\r\n', '', 7, 1, 0, 1, 3967),
(44, '各种烟盒镜头', '/Public/goodsimages/jingtou/8/1.jpg', '', 1429860095, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/8/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/8/2.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 3551),
(45, '充电宝镜头', '/Public/goodsimages/jingtou/9/1.jpg', '', 1429860248, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/9/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/9/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/9/3.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 3448),
(46, '四镜皮带动态扫描镜头', '/Public/goodsimages/jingtou/10/1.jpg', '', 1429860442, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/10/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/10/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/10/3.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/10/4.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 4159),
(47, '隐形手表镜头', '/Public/goodsimages/jingtou/11/3.jpg', '', 1429860753, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/4.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/5.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/6.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/7.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/11/8.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n', '', 7, 1, 0, 1, 3803),
(48, '最新一次性水杯镜头', '/Public/goodsimages/jingtou/12/1.jpg', '', 1429860990, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/12/1.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 2951),
(49, '远距离壁画遥控镜头', '/Public/goodsimages/jingtou/13/1.jpg', '', 1429861616, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/13/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/13/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/13/3.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 2492),
(50, '水晶烟缸广角镜头', '/Public/goodsimages/jingtou/14/1.jpg', '', 1429861945, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/14/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/14/2.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 2037),
(51, '不限光眼镜', '/Public/goodsimages/jingtou/15/1.jpg', '', 1429862130, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/15/1.jpg&quot;  /></p>\r\n', '', 7, 1, 0, 1, 2187),
(52, '无影微控追踪 镜头', '/Public/goodsimages/jingtou/16/1.jpg', '', 1429862314, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/16/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/16/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/16/2.jpg&quot; /></p>\r\n<p>\r\n	<strong style=&quot;margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);&quot;><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: left; color: rgb(0, 0, 205);&quot;>无影微控追踪镜头：</span></strong><span style=&quot;margin: 0px; padding: 0px; border: 0px; text-align: center; white-space: normal; color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);&quot;>是目前一款单人操作分析仪最先进的前端配置镜头，不用摆在桌面、无需提前安装、穿短袖也一样轻松自如的使用，拆装一秒钟，夏季超强产品。拥有此产品，其它的前端配置镜头都是淘汰产品。此产品真正做到，隐蔽、简单、不限距离、360&deg;全方位无死角、不穿衣服也能上场，绝无夸大其词，欢迎前来免费体验效果。</span></p>\r\n', '', 7, 1, 0, 1, 2894),
(137, '金花梭哈感应桌', '/Public/goodsimages/shipin/2016/5.png', '', 1450252682, 1, '', '\r\n<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/5.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 790),
(54, '四季幻影变牌衣', '/Public/goodsimages/bianpai/2/2.jpg', '', 1429862976, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/2/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/2/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<span style=&quot;color: rgb(255, 0, 0); font-family: Verdana, Simsun, Helvetica, Arial, sans-serif; font-size: 18px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>不论高矮肥瘦，我们都有码数的！</span></p>\r\n', '', 8, 1, 0, 1, 9015),
(131, '远程4G网络后台分析', '/Public/goodsimages/jingtou/17/1.jpg', '', 1438657496, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/17/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/17/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/17/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/jingtou/17/4.jpg&quot; /></p>\r\n<p>\r\n	远程4G网络文字介绍： 一：没有距离限制，只要有手机信号的地方都可以接收； 二：无需再要人工计算结果，专业的分析软件一秒就可分析出大小输赢； 三：不怕专业人士验牌，一对一监控扫描，一对一接收发射，一对一传输结果数据；</p>\r\n', '', 7, 1, 0, 1, 2983),
(55, '各种实木无缝变牌桌', '/Public/goodsimages/bianpai/3/1.jpg', '', 1429863165, 1, '', '<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/3/1.jpg&quot; /></p>\n<p style=&quot;text-align: center;&quot;>\n	&nbsp;</p>\n\n<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/3/2.jpg&quot; /></p>\n<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/3/3.jpg&quot; /></p>', '', 8, 1, 0, 1, 6871),
(56, '感应变牌手机', '/Public/goodsimages/bianpai/4/1.jpg', '', 1429863279, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/4/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/4/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/4/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/4/4.jpg&quot; /></p>\r\n', '', 8, 1, 0, 1, 10686),
(57, '最新麻将变点原料', '/Public/goodsimages/bianpai/5/1.gif', '', 1429863405, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/5/1.gif&quot; /></p> \r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;</span><span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 18px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);&quot;>最新麻将变点王，最新神奇麻将变点王隐形感应变牌产品，不受光源与场地限制，普通麻将随意变化，筒子边万子，万子边条子，想变就变。带感应全自动 装置，变牌速度极快，只需0.1秒。百人观看无人破，实战实用。单人操作，不需手法。（一教就会，真正做到全程&ldquo;傻瓜&rdquo;式 操 作）.隐蔽性极强，解开衣服无人看破！</span></p>\r\n', '', 8, 1, 0, 1, 13511),
(58, '普通扑克麻将变点王', '/Public/goodsimages/bianpai/6/1.jpg', '', 1429863522, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/6/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/6/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/6/3.gif&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/6/4.gif&quot; /></p>\r\n<p>\r\n	<span style=&quot;font-family: Arial, Helvetica, sans-serif;&quot;><span style=&quot;font-size: 14px;&quot;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28.7999992370605px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>变点王也叫变牌原料，是本公司今年推出的一种最先进的变牌产品，针对市面上的任何普通扑克、麻将、筒子、牌九，不需偷换牌、也不用练习手法、普通牌轻轻一抹即变，当别人数牌、査牌的时候即可变回复原，保证整副牌不多不少不重牌的情况出现，非常的简单、方便、实用！欢迎有需要的朋友亲自带牌来本公司免费体验效果，确认产品的真实性后再购买。--温馨提示：目前市面上有些不良商家或个人以变点王的名义出售一些不实际的产品误导买家，在此提示大家一定要注意，因为本产品是本公司专利产品，市面上几乎没有我们的货源，详情请联系本网站客服人员！</span></p>\r\n', '', 8, 1, 0, 1, 12845),
(59, '进口白光显形镜', '/Public/goodsimages/bianpai/7/2.jpg', '', 1429864233, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/7/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/7/1.jpg&quot;  /></p>\r\n', '', 9, 1, 0, 1, 5353),
(60, '进口高清显形镜', '/Public/goodsimages/bianpai/8/2.jpg', '', 1429864311, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/8/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/8/1.jpg&quot;  /></p>\r\n', '', 9, 1, 0, 1, 5213),
(61, '进口纳米不限光显形镜', '/Public/goodsimages/bianpai/9/1.jpg', '', 1429864425, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/4.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/5.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/9/6.jpg&quot; /></p>\r\n', '', 9, 1, 0, 1, 6646),
(62, '常见扑克显形效果', '/Public/goodsimages/bianpai/10/1.jpg', '', 1429864471, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/10/1.jpg&quot; /></p>\r\n', '', 9, 1, 0, 1, 5133),
(63, '进口高清显形药水', '/Public/goodsimages/bianpai/11/1.jpg', '', 1429864597, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/11/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/11/2.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/11/3.jpg&quot; /></p>\r\n', '', 9, 1, 0, 1, 5925),
(130, '全能玩后台分析软件', '/Public/goodsimages/shipin/quannengwan.jpg', '', 1438656431, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/quannengwan.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2681),
(64, '各种扑克麻将显形效果', '/Public/goodsimages/bianpai/12/1.jpg', '', 1429864752, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/12/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/12/2.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/12/3.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/bianpai/12/4.jpg&quot;  /></p>\r\n', '', 9, 1, 0, 1, 4974),
(65, '单人扫描筒子牌九', '/Public/goodsimages/paijiu/1/1.jpg', '', 1429864903, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/1/1.jpg&quot; /></p><p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/1/2.jpg&quot; /></p>\r\n', '', 10, 1, 0, 1, 32479),
(66, '最新雷达扫描筒子', '/Public/goodsimages/paijiu/2/1.jpg', '', 1429865007, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/2/1.jpg&quot;  /></p>\r\n', '', 10, 1, 0, 1, 34832),
(67, '钓鱼神筒', '/Public/goodsimages/paijiu/3/1.gif', '', 1429865048, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/3/1.gif&quot; /></p>\r\n', '', 10, 1, 0, 1, 33160),
(68, '感应牌九分析仪', '/Public/goodsimages/paijiu/4/1.jpg', '', 1429865082, 1, '', '<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/4/1.jpg&quot; /></p>\n ', '', 10, 1, 0, 1, 32874),
(69, '最新语音筒子牌九', '/Public/goodsimages/paijiu/5/1.png', '', 1429865113, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/5/1.png&quot; /></p>\r\n', '', 10, 1, 0, 1, 33719),
(70, '麻将机万能遥控程序', '/Public/goodsimages/paijiu/6/2.jpg', '', 1429865233, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/6/1.jpg&quot;  /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	&nbsp;</p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/paijiu/6/2.jpg&quot;  /></p>\r\n', '', 10, 1, 0, 1, 4042),
(73, '万能无敌色子', '/Public/goodsimages/sezi/3/1.jpg', '', 1429865642, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/3/1.jpg&quot; /></p>\r\n', '', 11, 1, 0, 1, 6011),
(74, 'CT透视普通杯碗', '/Public/goodsimages/sezi/4/1.jpg', '', 1429865674, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/4/1.jpg&quot; /></p><p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/4/2.jpg&quot; /></p><p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/4/3.jpg&quot; /></p>\r\n', '', 11, 1, 0, 1, 5116),
(75, '微波感应色子', '/Public/goodsimages/sezi/5/1.jpg', '', 1429865710, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/5/1.jpg&quot; /></p>\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/5/2.jpg&quot; /></p>\r\n', '', 11, 1, 0, 1, 32440),
(76, '万能遥控色子', '/Public/goodsimages/sezi/6/1.jpg', '', 1429865733, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/sezi/6/1.jpg&quot;  /></p>\r\n', '', 11, 1, 0, 1, 4053),
(77, '全自动包赢麻将机', '/Public/goodsimages/majiang/1/1.jpg', '', 1429865842, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/1/1.jpg&quot;  /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/1/2.jpg&quot;  /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/1/3.jpg&quot;  /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp;娱乐包赢麻将机，最新研制成果真正有别于其它产品做到毫无破绽。直接在打色盘上控制，无需感应，更无需摇控，进牌口无选牌器。色子无磁性，上牌速度 快，洗牌无声音。任意程序麻将牌全部功能牌，程序想上什么牌就能上什么牌，精确度百分之百，想自摸就随时自摸。任意骰点 新版一体机可打出四个色点，同时兼容两个色点。蓝牙一对一开启整机配蓝牙一对一控制器，您买的就只有您拥有。高科技指纹触摸识别轻轻一触即可开启程序，免 去使用摇控器的苦恼。整机真正一体化设计体化，复位开关不用安装（硬复位），支架更隐藏，烧录程序更方便，真正的新版一体化程序机。配套电脑软件可个性化 任意修改。配套电脑软件更加人性化，功能更强大。</span></p>\r\n', '', 13, 1, 0, 1, 5865);
INSERT INTO `nx_article` (`id`, `title`, `thumbpic`, `summary`, `posttime`, `uid`, `comefrom`, `content`, `keyword`, `pid`, `audit`, `recommend`, `allow`, `views`) VALUES
(78, '四口程序麻将机', '/Public/goodsimages/majiang/2/2.jpg', '', 1429865912, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/2/1.jpg&quot;  /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/2/2.jpg&quot; /></p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp;</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);&quot;>&nbsp; &nbsp; &nbsp;</span><span style=&quot;color: rgb(68, 68, 68); font-family: Verdana, sans-serif; font-size: 14px; line-height: 26px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;>在麻将的时候你想上什么牌就上什么牌，想自摸就随时可以自摸吗？起手就能赢吗？清一色轻松搞定，诺信娱乐最新推出的万能四口程序麻将机，不仅能够起手好 牌，而且包自摸，是真正赢钱的麻将机，万能四口程序麻将机内置最新研制的麻将机程序，功能强大，更专业更先进，外观和普通四口麻将机一模一样，揭开面板也 看不见任何东西，真正做到毫无破绽;主板一体化，复位开关不用安装，支架更隐蔽，烧录程序更方便。配套电脑软件更加人性化，操作更简单，烧录更方便，兼容 所有电脑。</span></p>\r\n', '', 13, 1, 0, 1, 6427),
(79, '无缝变牌 麻将桌', '/Public/goodsimages/majiang/3/1.jpg', '', 1429866152, 1, '', '<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/3/1.jpg&quot;  /></p>\n<br />\n<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/3/2.jpg&quot;  /></p>\n<br />\n<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/majiang/3/3.jpg&quot;  /></p>', '', 13, 1, 0, 1, 4608),
(80, '三星至尊扫描镜头', '/Public/goodsimages/baijiale/6/1.jpg', '', 1429866306, 1, '', '<p style=&quot;text-align: center;&quot;>\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/6/1.jpg&quot;  /></p>', '', 14, 1, 0, 1, 37346),
(132, '苹果6普通牌扑克分析仪', '/Public/goodsimages/shipin/mffxy.jpg', '', 1444196597, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/mffxy.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '苹果6普通牌扑克分析仪', 6, 1, 0, 1, 2669),
(81, '百家乐遥控牌靴', '/Public/goodsimages/baijiale/2/1.jpg', '', 1429866487, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/2/1.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/2/2.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/2/3.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/2/4.jpg&quot; /></p>\r\n', '', 14, 1, 0, 1, 37989),
(82, '百家乐分析牌路桌', '/Public/goodsimages/baijiale/3/1.jpg', '', 1429866701, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/3/1.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/3/2.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/3/3.jpg&quot; /></p>\r\n<br />\r\n', '', 14, 1, 0, 1, 37790),
(83, '可控牌路透明靴', '/Public/goodsimages/baijiale/4/1.jpg', '', 1429866747, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/4/1.jpg&quot; /></p>\r\n', '', 14, 1, 0, 1, 12513),
(84, '百家乐普通牌分析仪', '/Public/goodsimages/baijiale/5/1.jpg', '', 1429866803, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/5/1.jpg&quot; /></p>\r\n', '', 14, 1, 0, 1, 10411),
(85, '百家乐光钎洗牌机分析仪', '/Public/goodsimages/baijiale/1/1.jpg', '', 1429866887, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/1/1.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/1/2.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/1/3.jpg&quot; /></p>\r\n<br />\r\n<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/1/4.jpg&quot; /></p>\r\n<h3 style=&quot;padding: 15px; margin: 0px; line-height: 18px; white-space: normal; border: 0px; font-size: 12px; font-family: arial, helvetica, sans-serif, &#039;arial narrow&#039;, &#039;times new roman&#039;; color: red; background-color: rgb(255, 255, 255);&quot;>\r\n	&nbsp;</h3>\r\n<h3 style=&quot;margin: 0px; padding: 15px; border: 0px; text-align: center; white-space: normal; line-height: 18px; font-size: 12px; font-family: arial, helvetica, sans-serif, &#039;arial narrow&#039;, &#039;times new roman&#039;; color: red; background-color: rgb(255, 255, 255);&quot;>\r\n	<b style=&quot;margin: 0px; padding: 0px; border: 0px; outline-style: none; font-family: &#039;&#039;; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(255, 237, 196);&quot;><span style=&quot;margin: 0px; padding: 0px; border: 0px; outline-style: none; font-family: Î¢ÈíÑÅºÚ; color: rgb(255, 0, 0);&quot;><font style=&quot;margin: 0px; padding: 0px; border: 0px; outline-style: none; font-family: 仿宋_GB2312, &#039;MS Sans Serif&#039;, sans-serif; font-size: 16pt;&quot;><span style=&quot;margin: 0px; padding: 0px; border: 0px; outline-style: none; font-family: Î¢ÈíÑÅºÚ; background-color: rgb(255, 255, 0);&quot;>此款洗牌机不管是从外表还是内部结构跟普通的百家乐洗牌机是一模一样，针对市面上的任何普通扑克；包括进口塑料牌、小蜜蜂牌等、、、、只要经过光纤洗牌机洗完牌后，可以让人家切牌、倒牌、在下注前就可以分析出庄大、闲大、还是和。单人操作，不受牌和场地及环境的限制，是目前玩百家乐最先进的产品之一。</span></font></span></b></h3>\r\n\r\n\r\n', '', 14, 1, 0, 1, 8883),
(86, '百家乐分析主机', '/Public/goodsimages/baijiale/7/1.jpg', '', 1429866931, 1, '', '<p style=&quot;text-align: center;&quot;>\r\n	<img alt=&quot;&quot; src=&quot;/Public/goodsimages/baijiale/7/1.jpg&quot;  /></p>\r\n', '', 14, 1, 0, 1, 9130),
(88, '一对一跟踪王', '/Public/goodsimages/shipin/20.jpg', '', 1429949600, 1, '', '<div class=&quot;video-js-box&quot;>\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/guangjiao.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 18421),
(89, '阿拉丁普通扑克分析仪', '/Public/goodsimages/shipin/8.jpg', '', 1429949825, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/alading.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 20047),
(90, '机王全能分析仪', '/Public/goodsimages/shipin/2.jpg', '', 1429949825, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/yingxingkongshou.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 11859),
(91, '最新一对一耳塞', '/Public/goodsimages/shipin/4.jpg', '', 1429953913, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/DK88.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 11651),
(92, '全方位动态镜头', '/Public/goodsimages/shipin/5.jpg', '', 1429953980, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/dongtaiwang_02sStart.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 11414),
(93, '发牌王软件', '/Public/goodsimages/shipin/6.jpg', '', 1429954058, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/doudizhu.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 11676),
(94, '普通扑克知点仪', '/Public/goodsimages/shipin/7.jpg', '', 1429954157, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/zhidianyi.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 12328),
(95, '普通筒子牌九后台分析', '/Public/goodsimages/shipin/9.jpg', '', 1429954270, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/houtaifenxi.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 10565),
(96, '最新麻将变点王', '/Public/goodsimages/shipin/10.jpg', '', 1429954332, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/majiangbiandian.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 14029),
(97, '普通扑克变点王', '/Public/goodsimages/shipin/11.jpg', '', 1429954584, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/biandian.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 14879),
(98, '神手变牌器', '/Public/goodsimages/shipin/12.jpg', '', 1429954697, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/shenshou.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 11340),
(99, '最新光纤感应牌九、筒子', '/Public/goodsimages/shipin/13.jpg', '', 1429954762, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/guangqian.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 9398),
(100, '牌九板九筒子分析仪', '/Public/goodsimages/shipin/14.jpg', '', 1429954924, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/yuyingpaijiu.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 6347),
(101, '普通杯碗监控仪', '/Public/goodsimages/shipin/15.jpg', '', 1429955000, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/jiankong.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 5283),
(102, '带遥控正反一体机', '/Public/goodsimages/shipin/16.jpg', '', 1429955264, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/iPhone5S_Yi_Ti_Ji.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 6938),
(104, '全能赢猜宝王', '/Public/goodsimages/shipin/18.jpg', '', 1430096772, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/caibaowang.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 7926),
(105, '单人语音扫描皮带', '/Public/goodsimages/shipin/19.jpg', '', 1430096845, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/2015niukou.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3197),
(106, '天衣无缝扫描镜头', '/Public/goodsimages/shipin/1.png', '', 1430097007, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/wuyingzuizhong.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 2703),
(107, '最新无缝变牌桌', '/Public/goodsimages/shipin/21.jpg', '', 1430097099, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/wufengzhuo.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2223),
(108, '高科技遥控色子', '/Public/goodsimages/shipin/22.jpg', '', 1430097163, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/yaokong.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3068),
(109, '万能密码色子', '/Public/goodsimages/shipin/23.jpg', '', 1430097217, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/wanneng.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\n', '', 6, 1, 0, 1, 1747),
(110, '牌九空手变牌', '/Public/goodsimages/shipin/24.jpg', '', 1430097277, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/paijiukongshou.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 1588),
(111, '任性手表扫描仪', '/Public/goodsimages/shipin/25.jpg', '', 1430097357, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/wugangshoubiao.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1808),
(112, '单人操作IC智能麻将', '/Public/goodsimages/shipin/26.jpg', '', 1430097408, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/ICzhineng.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1572),
(113, '必胜程序麻将机', '/Public/goodsimages/shipin/27.jpg', '', 1430097489, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/chengxu.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 1567),
(114, '最新变牌自摸视频演示', '/Public/goodsimages/shipin/28.jpg', '', 1430097591, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/bianpai.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 2170),
(115, '普通扑克筒子感光桌', '/Public/goodsimages/shipin/29.jpg', '', 1430097645, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/jinhuasuoha.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2264),
(116, '马来西亚变牌衣', '/Public/goodsimages/shipin/30.jpg', '', 1430097694, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/dingji.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 4088),
(117, '三星note4扑克分析仪', '/Public/goodsimages/shipin/31.jpg', '', 1430097783, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/wuyingjingt3.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 4163),
(118, '单人语音光控麻将', '/Public/goodsimages/shipin/32.gif', '', 1430097836, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/dongfangbubai.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2690),
(119, '三星S5(A版,B版,C版)', '/Public/goodsimages/shipin/33.jpg', '', 1430097922, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/yingxing1-5.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1913),
(120, '扑克小九变牌绝技', '/Public/goodsimages/shipin/34.jpg', '', 1430097981, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/xiaopaijiu.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2238),
(121, '扑克金花空手变牌', '/Public/goodsimages/shipin/35.jpg', '', 1430098051, 1, '', '<div class=&quot;video-js-box&quot;><video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/pukejinhua.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 3357),
(122, '扑克必胜绝技', '/Public/goodsimages/shipin/36.jpg', '', 1430098097, 1, '', '<div class=&quot;video-js-box&quot;>\r\n  <video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/doudizhu.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 3288),
(123, '最新变牌绝技', '/Public/goodsimages/shipin/37.jpg', '', 1430098135, 1, '', '<div class=&quot;video-js-box&quot;>\r\n  <video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/zuixinbianpai2014.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 5149),
(124, '高科技百家乐分析仪', '/Public/goodsimages/shipin/38.jpg', '', 1430098204, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/baijiale.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3215),
(125, '百家乐分析仪软件', '/Public/goodsimages/shipin/39.jpg', '', 1430098260, 1, '', '<div class=&quot;video-js-box&quot;>\r\n  <video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/baijialefenxi.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 2629),
(126, '百家乐认普通牌靴', '/Public/goodsimages/shipin/40.jpg', '', 1430098651, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/danrencaozuo.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2923),
(127, 'CVK超强分析仪', '/Public/goodsimages/shipin/41.jpg', '', 1430098699, 1, '', '<div class=&quot;video-js-box&quot;>\n  <video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/cvk.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 3130),
(128, '跑胡子{字牌、长牌}专用分析仪', '/Public/goodsimages/shipin/3.jpg', '', 1430100311, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/jinhua.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3993),
(129, 'X光透视桌面', '/Public/goodsimages/shipin/x.jpg', '', 1438135786, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/m/xguan.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3041),
(138, '普通扑克麻将密码笔', '/Public/goodsimages/shipin/2016/6.png', '', 1450252713, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/6.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1053),
(139, '普通扑克极速分析仪', '/Public/goodsimages/shipin/2016/7.png', '', 1450252765, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/7.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1176),
(140, '筒子牌九分析仪', '/Public/goodsimages/shipin/2016/8.png', '', 1450252794, 1, '', '\r\n<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/8.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 932),
(141, '百家乐可控牌路分析牌靴', '/Public/goodsimages/shipin/2016/9.png', '', 1450252820, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/9.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 678),
(166, '普通筒子牌九远程分析', '/Public/goodsimages/shipin/2016/32.png', '', 1450594015, 1, '', '<div class=&quot;video-js-box&quot;> <video class=&quot;video-js vjs-default-skin aman&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/32.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 3621),
(143, '高速动态扫描镜头', '/Public/goodsimages/shipin/2016/11.png', '', 1450252883, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/11.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 860),
(144, '三星变牌手机【真机】', '/Public/goodsimages/shipin/2016/12.png', '', 1450252909, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/12.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 873),
(145, '袖剑变牌', '/Public/goodsimages/shipin/2016/13.png', '', 1450252933, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/13.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 866),
(146, '超级扫描分析仪', '/Public/goodsimages/shipin/2016/14.png', '', 1450252965, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/14.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 786),
(147, '透视杯碗', '/Public/goodsimages/shipin/2016/16.png', '', 1450252991, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/16.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 884),
(148, '极品烟缸扫描', '/Public/goodsimages/shipin/2016/18.png', '', 1450253066, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/18.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 740),
(165, '知音震动手表', '/Public/goodsimages/shipin/2016/39.png', '', 1450402728, 1, '', '<div class=&quot;video-js-box&quot;> <video controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;           class=&quot;video-js vjs-default-skin aman&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/39.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 4007),
(150, '万能过牌色子', '/Public/goodsimages/shipin/2016/20.png', '', 1450253173, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/20.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1194),
(151, '十三张斗地主软件', '/Public/goodsimages/shipin/2016/21.png', '', 1450253199, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/21.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 901),
(152, '远程后台扫描监控', '/Public/goodsimages/shipin/2016/23.png', '', 1450253231, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/23.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 904),
(153, '领航者包赢麻将机', '/Public/goodsimages/shipin/2016/24.png', '', 1450253338, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/24.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1001),
(154, '苹果6大范围分析仪', '/Public/goodsimages/shipin/2016/25.png', '', 1450253361, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/25.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>', '', 6, 1, 0, 1, 1132),
(155, 'AK麻将分析仪', '/Public/goodsimages/shipin/2016/26.png', '', 1450253395, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/26.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1075),
(156, '单人猜宝王', '/Public/goodsimages/shipin/2016/27.png', '', 1450253417, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/27.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1141),
(157, '扑克王软价【任何手机】', '/Public/goodsimages/shipin/2016/28.png', '', 1450253442, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/28.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 1513),
(158, 'PK王分析仪', '/Public/goodsimages/shipin/2016/30.png', '', 1450253479, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/30.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2051),
(159, '普通扑克知点仪', '/Public/goodsimages/shipin/2016/31.png', '', 1450253507, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/31.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 4562),
(160, '麻将变牌新品', '/Public/goodsimages/shipin/2016/33.png', '', 1450253531, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/33.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 4143),
(161, '感应超级板', '/Public/goodsimages/shipin/2016/34.png', '', 1450253556, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/34.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2138),
(162, '三星S5分析仪', '/Public/goodsimages/shipin/2016/36.png', '', 1450253678, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/36.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2894),
(163, '跑胡子分析仪', '/Public/goodsimages/shipin/2016/37.png', '', 1450253708, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/37.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 2201),
(164, '单人语音麻将机', '/Public/goodsimages/shipin/2016/4.png', '', 1450254130, 1, '', '<div class=&quot;video-js-box&quot;>\r\n	<video class=&quot;video-js vjs-default-skin aman&quot; controls=&quot;controls&quot; autoplay=&quot;autoplay&quot;\r\n data-setup=&quot;{}&quot; height=&quot;auto&quot; id=&quot;example_video_1&quot; poster=&quot;/public/js/post.jpg&quot; preload=&quot;none&quot; width=&quot;auto&quot;> <source src=&quot;http://121.42.195.161/2016/4.mp4&quot; type=&quot;video/mp4&quot;></source></video></div>\r\n', '', 6, 1, 0, 1, 3224);

-- --------------------------------------------------------

--
-- 表的结构 `nx_chat`
--

CREATE TABLE IF NOT EXISTS `nx_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT 'null',
  `client_id` int(11) NOT NULL,
  `message` varchar(10000) NOT NULL DEFAULT '<span style="color:red;">系统提示:正在连接服务器...</span>',
  `fasttime` varchar(20) NOT NULL DEFAULT '1991',
  `lasttime` varchar(20) NOT NULL DEFAULT '2016',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=163 ;

--
-- 转存表中的数据 `nx_chat`
--

INSERT INTO `nx_chat` (`id`, `username`, `client_id`, `message`, `fasttime`, `lasttime`, `status`) VALUES
(1, 'xiaomo', 1460188748, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(2, 'xiaomo', 1460194678, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(3, 'xiaogao', 1460341293, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(4, 'xiaogao', 1460341334, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(5, 'xiaogao', 1460341293, '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：186-1317-9758 ---高经理。', '1460341293', '1460342447', 0),
(6, 'xiaogao', 1460341293, '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：186-1317-9758--高经理。', '1460341293', '1460342454', 0),
(7, 'xiaogao', 1460341334, '您好：这里是广州众宜娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：186-1317-9758 高经理', '1460341334', '1460342467', 0),
(8, 'xinnuo', 1460354568, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(9, 'xinnuo', 1460354568, '在的', '1460354568', '1460354623', 0),
(10, 'xiaomo', 1460194678, '您好：这里是广州众宜娱乐用品有限公司，你有什么问题需要咨询的么？很高兴能为您解答！---莫小姐业务电话：132-6833-4858', '1460194678', '1460355700', 0),
(11, 'xiaomo', 1460194678, '广州市白云区远景路842号 （东江大酒店旁边）--- 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。', '1460194678', '1460355714', 0),
(12, 'xiaomo', 1460194678, '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：132-6833-4858--莫小姐。', '1460194678', '1460355730', 0),
(13, 'xiaomo', 1460194678, '常用短语。。。', '1460194678', '1460355740', 0),
(14, 'xinnuo', 1460354568, '您好：这里是广州诺信娱乐用品有限公司，你有什么问题需要咨询的么？很高兴能为您解答！---邱小姐业务电话：181-2426-7558', '1460354568', '1460356099', 0),
(15, 'xinnuo', 1460354568, '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：181-2426-7558--邱小姐。', '1460354568', '1460356141', 0),
(16, 'xinnuo', 1460354568, '广州市白云区远景路842号 （东江大酒店旁边） 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：181-2426-7558 ---邱小姐。', '1460354568', '1460356147', 0),
(17, 'xinnuo', 1460356193, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(18, 'xinnuo', 1460356193, '您好：这里是广州众宜娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1460356193', '1460356223', 0),
(19, 'xinnuo', 1460356193, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px -25px no-repeat;background-size:675px 175px;" alt=":yum:">', '1460356193', '1460356234', 0),
(20, 'xinnuo', 1460433394, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(21, 'xinnuo', 1460433394, '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；181-2426-7558.---邱小姐。', '1460433394', '1460433512', 0),
(22, 'xinnuo', 1460433519, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(23, 'xinnuo', 1460433501, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(24, 'xinnuo', 1460433519, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px 0px no-repeat;background-size:675px 175px;" alt=":blush:">您好：这里是广州娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1460433519', '1460433576', 0),
(25, 'xinnuo', 1460433501, '你哈', '1460433501', '1460433882', 0),
(26, 'xinnuo', 1460433501, '你好，想了解那方面的产品呢', '1460433501', '1460433908', 0),
(27, 'xinnuo', 1460510233, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(28, 'xinnuo', 1460596223, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(29, 'xiaogao', 1460605919, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(30, 'xiaogao', 1460605903, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(31, 'xiaogao', 1460605596, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(32, 'xiaogao', 1460605575, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(33, 'xiaogao', 1460605481, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(34, 'xiaogao', 1460711894, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(35, 'xiaogao', 1460711890, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(36, 'xiaogao', 1460711889, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(37, 'xinnuo', 1460712783, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(38, 'xiaogao', 1461045284, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(39, 'xinnuo', 1461297854, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(40, 'xinnuo', 1461297836, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(41, 'xiaomo', 1461315385, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(42, 'xiaomo', 1461315003, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(43, 'xiaomo', 1461204127, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(44, 'xiaomo', 1461204142, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(45, 'xiaomo', 1461204161, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(46, 'xiaomo', 1461314977, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(47, 'xiaomo', 1461204168, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(48, 'xiaomo', 1461314854, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(49, 'xiaomo', 1461203977, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(50, 'xiaomo', 1460690686, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(51, 'xiaomo', 1460690222, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(52, '', 1460525982, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(53, 'xiaomo', 1460525948, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(54, 'xiaomo', 1460525816, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(55, 'xinnuo', 1461297619, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(56, 'xiaomo', 1461315385, '您好', '1461315385', '1461315697', 0),
(58, 'xiaomo', 1461315385, '我们公司在广州市白云区远景路842号 （东江大酒店旁边）--- 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。', '1461315385', '1461315740', 0),
(59, 'xiaomo', 1461315857, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(57, 'xinnuo', 1461297854, '你好，请问有什么可以帮到你？', '1461297854', '1461315737', 0),
(60, 'xinnuo', 1461316577, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(61, 'xinnuo', 1461316577, '你是玩那方面的？', '1461316577', '1461316622', 0),
(62, 'xinnuo', 1461317226, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(63, 'xinnuo', 1461381206, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(64, 'xinnuo', 1461382578, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(65, 'xinnuo', 1461382578, 'nhjynj&nbsp;', '1461382578', '1461382725', 0),
(66, 'xinnuo', 1461396944, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(67, 'xinnuo', 1461382849, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(68, 'xinnuo', 1461381583, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(69, 'xinnuo', 1461381179, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(70, 'xinnuo', 1461380256, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(71, 'xinnuo', 1461315924, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(72, 'xinnuo', 1461316068, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(73, 'xinnuo', 1461397468, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(74, 'xinnuo', 1461397747, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(75, 'xinnuo', 1461397977, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(76, 'xinnuo', 1461397977, '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：181-2426-7558 ---邱小姐。', '1461397977', '1461398229', 0),
(77, 'xinnuo', 1461398150, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(78, 'xinnuo', 1461398121, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(79, 'xinnuo', 1461398106, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(80, 'xinnuo', 1461398322, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(81, 'xinnuo', 1461398358, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(82, 'xiaogao', 1461216519, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(83, 'xinnuo', 1461400736, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(84, 'xiaomo', 1461399741, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(85, 'xinnuo', 1461460624, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(86, 'xinnuo', 1461460856, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(87, 'xinnuo', 1461460856, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461460856', '1461460873', 0),
(88, 'xinnuo', 1461460856, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -600px -75px no-repeat;background-size:675px 175px;" alt=":+1:">', '1461460856', '1461460912', 0),
(89, 'xinnuo', 1461461137, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(90, 'xinnuo', 1461461137, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461461137', '1461461173', 0),
(91, 'xinnuo', 1461461287, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(92, 'xinnuo', 1461461287, '你好。', '1461461287', '1461461313', 0),
(93, 'xinnuo', 1461398134, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(94, 'xinnuo', 1461548471, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(96, 'xiaomo', 1461548653, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(95, 'xiaomo', 1461399741, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -125px -75px no-repeat;background-size:675px 175px;" alt=":speak_no_evil:">', '1461399741', '1461548804', 0),
(97, 'xinnuo', 1461548456, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(98, 'xiaomo', 1461548932, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(99, 'xiaomo', 1461548908, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(100, 'xiaomo', 1461548946, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(101, 'xinnuo', 1461548397, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(102, 'xinnuo', 1461548346, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(105, 'xinnuo', 1461549134, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(103, 'xinnuo', 1461548471, '早上好。', '1461548471', '1461549092', 0),
(104, 'xinnuo', 1461548456, '早上好。', '1461548456', '1461549106', 0),
(106, 'xinnuo', 1461549118, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(107, 'xinnuo', 1461549118, '在的', '1461549118', '1461549157', 0),
(108, 'xinnuo', 1461549118, '现在好了。', '1461549118', '1461549171', 0),
(109, 'xinnuo', 1461549118, '恩', '1461549118', '1461549233', 0),
(110, 'xinnuo', 1461549118, '好的', '1461549118', '1461549290', 0),
(111, 'xiaomo', 1461549407, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(112, 'xiaomo', 1461548892, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(113, 'xinnuo', 1461550788, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(114, 'xinnuo', 1461554524, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(118, 'xiaomo', 1461572563, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(115, 'xinnuo', 1461548456, '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1461548456', '1461554694', 0),
(116, 'xinnuo', 1461548471, '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1461548471', '1461554709', 0),
(117, 'xinnuo', 1461550788, '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1461550788', '1461554723', 0),
(119, 'xinnuo', 1461635803, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(120, 'xinnuo', 1461635803, '你好。', '1461635803', '1461635838', 0),
(122, 'xinnuo', 1461638773, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(121, 'xinnuo', 1461550788, '早上好。', '1461550788', '1461635860', 0),
(123, 'xinnuo', 1461562763, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(124, 'xinnuo', 1461719801, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(127, 'xiaomo', 1461894880, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(125, 'xiaomo', 1461548932, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px 0px no-repeat;background-size:675px 175px;" alt=":stuck_out_tongue_winking_eye:">', '1461548932', '1461893931', 0),
(126, 'xiaomo', 1461548932, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') 0px 0px no-repeat;background-size:675px 175px;" alt=":smile:">', '1461548932', '1461893939', 0),
(128, 'xiaomo', 1461894860, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(129, 'xinnuo', 1462504605, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(130, 'xinnuo', 1462340909, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(131, 'xinnuo', 1462324773, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(132, 'xinnuo', 1462324773, '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐', '1462324773', '1462504668', 0),
(133, 'xiaogao', 1461822029, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(136, 'xinnuo', 1462324773, '你好。', '1462324773', '1462863328', 0),
(134, 'xinnuo', 1462340909, '你好。', '1462340909', '1462863289', 0),
(135, 'xinnuo', 1462340909, '请问有什么可以帮到你？', '1462340909', '1462863311', 0),
(137, 'xinnuo', 1462430115, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(138, 'xinnuo', 1462430115, '你好。', '1462430115', '1462863357', 0),
(139, 'xiaomo', 1463039355, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(140, 'xiaomo', 1461894427, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(141, 'xiaomo', 1463457729, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(142, 'xiaomo', 1461315848, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(143, 'xinnuo', 1463468350, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(144, 'xinnuo', 1463467557, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(145, 'xinnuo', 1463468350, '周末愉快。', '1463468350', '1463905650', 0),
(146, 'xinnuo', 1463467557, '周末愉快。', '1463467557', '1463905660', 0),
(147, 'xinnuo', 1462324773, '周末愉快。', '1462324773', '1463905672', 0),
(148, 'xinnuo', 1461548471, '周末愉快。', '1461548471', '1463905684', 0),
(149, 'xinnuo', 1461548456, '周末愉快。', '1461548456', '1463905694', 0),
(150, 'xinnuo', 1463908870, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(157, 'xinnuo', 1464052459, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(151, 'xiaomo', 1461548892, '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：132-6833-4858 莫小姐', '1461548892', '1463924034', 0),
(152, 'xiaomo', 1461548892, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -150px 0px no-repeat;background-size:675px 175px;" alt=":heart_eyes:">', '1461548892', '1463924042', 0),
(153, 'xiaomo', 1461548892, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -625px -25px no-repeat;background-size:675px 175px;" alt=":confused:">', '1461548892', '1463924060', 0),
(154, 'xiaomo', 1461894427, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -150px 0px no-repeat;background-size:675px 175px;" alt=":heart_eyes:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -125px -25px no-repeat;background-size:675px 175px;" alt=":scream:">', '1461894427', '1463924082', 0),
(155, 'xiaomo', 1461894427, '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。', '1461894427', '1463924101', 0),
(156, 'xiaomo', 1461894427, '广州市白云区远景路842号 （东江大酒店旁边）--- 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。', '1461894427', '1463924107', 0),
(158, 'xinnuo', 1464052459, '早上好。', '1464052459', '1464052510', 0),
(159, 'xinnuo', 1464222738, '<span style="color:red;">系统提示:正在连接服务器...</span>', '1991', '2016', 0),
(160, 'xiaomo', 1461314854, '你好', '1461314854', '1464772919', 0),
(162, 'xiaomo', 1461572563, '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：132-6833-4858--莫小姐。', '1461572563', '1464772999', 0),
(161, 'xiaomo', 1461314854, '加微信13268334858', '1461314854', '1464772926', 0);

-- --------------------------------------------------------

--
-- 表的结构 `nx_client`
--

CREATE TABLE IF NOT EXISTS `nx_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT 'null',
  `session_id` int(11) NOT NULL,
  `message` varchar(10000) NOT NULL DEFAULT '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>',
  `fasttime` varchar(20) NOT NULL DEFAULT 'ture',
  `lasttime` varchar(20) NOT NULL DEFAULT '2016',
  `url` varchar(100) NOT NULL DEFAULT 'null',
  `title` varchar(100) NOT NULL DEFAULT 'null',
  `device` varchar(50) NOT NULL DEFAULT 'null',
  `browser` varchar(50) NOT NULL DEFAULT 'null',
  `adder` varchar(20) NOT NULL DEFAULT 'null',
  `referer` varchar(200) NOT NULL DEFAULT 'null',
  `ip` varchar(20) NOT NULL DEFAULT 'null',
  `isp` varchar(20) NOT NULL DEFAULT 'null',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- 转存表中的数据 `nx_client`
--

INSERT INTO `nx_client` (`id`, `username`, `session_id`, `message`, `fasttime`, `lasttime`, `url`, `title`, `device`, `browser`, `adder`, `referer`, `ip`, `isp`, `status`) VALUES
(1, 'xiaomo', 1460194678, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(4, 'xiaogao', 1460341293, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.nanxunpaiju.com/', 'null', '电信', 0),
(2, 'xiaomo', 1460194678, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -25px 0px no-repeat;background-size:675px 175px;" alt=":smiley:">', '1460194678', '1460194706', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(3, 'xiaomo', 1460194678, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -150px 0px no-repeat;background-size:675px 175px;" alt=":heart_eyes:">', '1460194678', '1460194756', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(6, 'xiaogao', 1460341334, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.nanxunpaiju.com/', 'null', '电信', 0),
(5, 'xiaogao', 1460341293, 'hello', '1460341293', '1460341302', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(9, 'xiaogao', 1460341334, '3', '1460341334', '1460341883', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(7, 'xiaogao', 1460341334, '1', '1460341334', '1460341878', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(8, 'xiaogao', 1460341334, '2', '1460341334', '1460341882', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(11, 'xiaogao', 1460341334, '5', '1460341334', '1460341888', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(10, 'xiaogao', 1460341334, '4', '1460341334', '1460341886', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(12, 'xiaogao', 1460341334, '6', '1460341334', '1460341889', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(13, 'xiaogao', 1460341334, '7', '1460341334', '1460341897', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(14, 'xinnuo', 1460354568, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(16, 'xinnuo', 1460356193, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(15, 'xinnuo', 1460354568, '你好。', '1460354568', '1460354593', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(17, 'xinnuo', 1460356193, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:">', '1460356193', '1460356211', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(18, 'xinnuo', 1460356193, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -650px -75px no-repeat;background-size:675px 175px;" alt=":ok_hand:">', '1460356193', '1460356243', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(19, 'xinnuo', 1460433394, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(22, 'xinnuo', 1460433501, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xinnuo', 'null', '电信', 0),
(20, 'xinnuo', 1460433394, '你好', '1460433394', '1460433403', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(21, 'xinnuo', 1460433394, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px 0px no-repeat;background-size:675px 175px;" alt=":blush:">', '1460433394', '1460433487', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(23, 'xinnuo', 1460433519, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(24, 'xinnuo', 1460510233, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(26, 'xiaomo', 1460525816, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(25, 'xinnuo', 1460510233, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -25px 0px no-repeat;background-size:675px 175px;" alt=":smiley:">', '1460510233', '1460510264', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(27, 'xiaomo', 1460525948, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo', 'null', '电信', 0),
(28, 'xiaomo', 1460525982, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(29, 'xinnuo', 1460596223, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(33, 'xiaomo', 1460596223, '<span style="color: rgb(56, 71, 108); font-size: 13px; line-height: 18.5714px; text-indent: 8px;">你好，有变牌原料吗？</span>', '1460596319', '1460596376', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(30, 'xinnuo', 1460596223, '你好，有透视麻将吗？', '1460596223', '1460596245', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(31, 'xinnuo', 1460596223, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px 0px no-repeat;background-size:675px 175px;" alt=":blush:">', '1460596223', '1460596265', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(32, 'xiaomo', 1460596223, '你好', '1460596319', '1460596326', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(34, 'xiaogao', 1460605481, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '台州市', 'http://www.nanxunpaiju.com/index.php/article/index/aid/25', 'null', '电信', 1),
(35, 'xiaogao', 1460605575, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaogao', 'null', '电信', 0),
(36, 'xiaogao', 1460605596, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(37, 'xiaogao', 1460605903, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(38, 'xiaogao', 1460605919, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 0),
(39, 'xiaomo', 1460690222, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(40, 'xiaomo', 1460690686, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(41, 'xiaogao', 1460711890, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '上海市', 'null', 'null', '电信', 0),
(42, 'xiaogao', 1460711889, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '郑州市', 'null', 'null', '电信', 0),
(43, 'xiaogao', 1460711894, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '上海市', 'null', 'null', '电信', 0),
(44, 'xinnuo', 1460712783, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/index.php/article/index/aid/64', 'null', '电信', 0),
(45, 'xiaogao', 1461045284, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '洛阳市', 'http://www.huanqiumil.com/', 'null', '电信', 0),
(46, 'xiaomo', 1461203977, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(47, 'xiaomo', 1461204127, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo', 'null', '电信', 0),
(48, 'xiaomo', 1461204142, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(49, 'xiaomo', 1461204161, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(50, 'xiaomo', 1461204168, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', '电信', 0),
(51, 'xiaogao', 1461216519, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '合肥市', 'http://www.nanxunpaiju.com/index.php/article/index/aid/88', 'null', '电信', 0),
(52, 'xinnuo', 1461297619, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(53, 'xinnuo', 1461297836, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xinnuo', 'null', '电信', 0),
(54, 'xinnuo', 1461297854, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(55, 'xiaomo', 1461314854, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/index.php/article/index/aid/160', 'null', '电信', 0),
(58, 'xiaomo', 1461314977, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo', 'null', '电信', 0),
(56, 'xiaomo', 1461314854, '你好：你那里的麻将室怎么变牌的？', '1461314855', '1461314881', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(57, 'xiaomo', 1461314854, '有人在吗？', '1461314855', '1461314976', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(59, 'xiaomo', 1461315003, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(60, 'xiaomo', 1461315385, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/index.php/article/index/aid/159', 'null', '电信', 0),
(63, 'xiaomo', 1461315848, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/index.php/article/index/aid/159', 'null', '电信', 0),
(61, 'xiaomo', 1461315385, '知点仪是什么产品？', '1461315386', '1461315402', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(62, 'xiaomo', 1461315385, '怎么用啊？', '1461315386', '1461315407', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(64, 'xiaomo', 1461315857, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/index.php/article/index/aid/159', 'null', '电信', 0),
(65, 'xinnuo', 1461315924, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(67, 'xinnuo', 1461316068, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(66, 'xinnuo', 1461315924, 'l,l,l', '1461315924', '1461315936', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(68, 'xinnuo', 1461316068, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -50px 0px no-repeat;background-size:675px 175px;" alt=":grinning:">', '1461316069', '1461316077', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(69, 'xinnuo', 1461316068, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px -25px no-repeat;background-size:675px 175px;" alt=":yum:">', '1461316069', '1461316108', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(70, 'xinnuo', 1461316167, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(72, 'xinnuo', 1461316262, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(71, 'xinnuo', 1461316167, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') 0px -25px no-repeat;background-size:675px 175px;" alt=":sweat_smile:">', '1461316167', '1461316174', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(73, 'xinnuo', 1461316262, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -475px 0px no-repeat;background-size:675px 175px;" alt=":disappointed:">', '1461316262', '1461316267', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(74, 'xinnuo', 1461316391, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(75, 'xinnuo', 1461316577, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(77, 'xinnuo', 1461317226, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(76, 'xinnuo', 1461316577, '麻将', '1461316577', '1461316591', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(78, 'xinnuo', 1461317226, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px 0px no-repeat;background-size:675px 175px;" alt=":blush:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px 0px no-repeat;background-size:675px 175px;" alt=":blush:">', '1461317232', '1461317249', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(79, 'xinnuo', 1461379817, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(80, 'xinnuo', 1461380005, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(81, 'xinnuo', 1461380256, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(82, 'xinnuo', 1461381179, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(83, 'xinnuo', 1461381206, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(84, 'xinnuo', 1461381206, 'asdf', '1461381206', '1461381210', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(86, 'xinnuo', 1461381583, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(85, 'xinnuo', 1461381206, 'sadfasdf', '1461381206', '1461381216', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(87, 'xinnuo', 1461381583, 'test', '1461381583', '1461381592', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(88, 'xinnuo', 1461382578, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(90, 'xinnuo', 1461382578, '你好', '1461382615', '1461382620', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(89, 'xiaomo', 1461382578, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -50px 0px no-repeat;background-size:675px 175px;" alt=":grinning:">你好', '1461382578', '1461382598', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(92, 'xinnuo', 1461382849, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(91, 'xinnuo', 1461382578, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px -25px no-repeat;background-size:675px 175px;" alt=":yum:">', '1461382615', '1461382703', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(93, 'xinnuo', 1461382849, 'test', '1461382849', '1461382854', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(94, 'xinnuo', 1461382849, '测试提示音', '1461382849', '1461382872', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(95, 'xinnuo', 1461396944, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(99, 'xinnuo', 1461396944, 'sdf', '1461396944', '1461397143', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(96, 'xinnuo', 1461396944, '测试声音提示', '1461396944', '1461396949', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(97, 'xinnuo', 1461396944, 'test', '1461396944', '1461397052', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(98, 'xinnuo', 1461396944, 'test2', '1461396944', '1461397077', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(101, 'xinnuo', 1461397468, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(100, 'xinnuo', 1461396944, 'asdf', '1461396944', '1461397161', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(102, 'xinnuo', 1461397468, '我是访客，测试消息提示音', '1461397468', '1461397520', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(103, 'xinnuo', 1461397724, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(104, 'xinnuo', 1461397747, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(107, 'xinnuo', 1461397977, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(105, 'xinnuo', 1461397747, 'mess', '1461397747', '1461397754', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(106, 'xinnuo', 1461397747, 'hello', '1461397747', '1461397780', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(108, 'xinnuo', 1461397977, '1', '1461397978', '1461397988', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(109, 'xinnuo', 1461397977, 'a&nbsp;', '1461398019', '1461398030', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(110, 'xinnuo', 1461397977, 'kkkkk', '1461398019', '1461398068', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(111, 'xinnuo', 1461398106, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xinnuo', 'null', '电信', 0),
(112, 'xinnuo', 1461398121, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(113, 'xinnuo', 1461398134, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(115, 'xinnuo', 1461398150, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(114, 'xinnuo', 1461398134, 'hmh', '1461398134', '1461398138', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(116, 'xinnuo', 1461398322, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(117, 'xinnuo', 1461398358, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(122, 'xiaomo', 1461399741, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(118, 'xinnuo', 1461398358, '阿满。', '1461398358', '1461398377', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(119, 'xinnuo', 1461398358, '测试语音消息提示', '1461398358', '1461398388', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(120, 'xinnuo', 1461398358, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:">', '1461398358', '1461398519', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(121, 'xinnuo', 1461398358, '已关闭窗口。', '1461398358', '1461398545', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(123, 'xinnuo', 1461400736, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(124, 'xiaomo', 1461400736, '你好', '1461400736', '1461400747', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(125, 'xinnuo', 1461460624, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(127, 'xinnuo', 1461460856, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(126, 'xinnuo', 1461460624, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461460624', '1461460653', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(128, 'xinnuo', 1461460856, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461460856', '1461460863', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(129, 'xinnuo', 1461461137, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(131, 'xinnuo', 1461461287, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(130, 'xinnuo', 1461461137, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -600px -75px no-repeat;background-size:675px 175px;" alt=":+1:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461461144', '1461461150', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(132, 'xinnuo', 1461461287, '你好。', '1461461288', '1461461300', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(133, 'xinnuo', 1461548346, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(134, 'xinnuo', 1461548397, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(136, 'xinnuo', 1461548456, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xinnuo', 'null', '电信', 0),
(135, 'xinnuo', 1461548397, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px 0px no-repeat;background-size:675px 175px;" alt=":stuck_out_tongue_winking_eye:">', '1461548397', '1461548407', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(137, 'xinnuo', 1461548471, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(138, 'xiaomo', 1461548653, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(143, 'xiaomo', 1461548653, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -25px 0px no-repeat;background-size:675px 175px;" alt=":smiley:">', '1461548758', '1461548763', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(139, 'xinnuo', 1461548653, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -25px 0px no-repeat;background-size:675px 175px;" alt=":smiley:">', '1461548653', '1461548659', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(140, 'xinnuo', 1461548397, '你好。', '1461548669', '1461548681', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(141, 'xinnuo', 1461548653, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px 0px no-repeat;background-size:675px 175px;" alt=":stuck_out_tongue_winking_eye:">', '1461548679', '1461548687', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(142, 'xinnuo', 1461548397, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1461548707', '1461548714', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(144, 'xiaomo', 1461548892, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo', 'null', '电信', 0),
(145, 'xiaomo', 1461548908, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(147, 'xiaomo', 1461548946, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', '电信', 1),
(146, 'xiaomo', 1461548932, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo###', 'null', '电信', 0),
(148, 'xinnuo', 1461549118, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(155, 'xiaomo', 1461549407, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(149, 'xinnuo', 1461549134, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(150, 'xinnuo', 1461549118, '我是吖满。在吗？', '1461549118', '1461549136', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(151, 'xinnuo', 1461549118, '哦哦。好', '1461549118', '1461549162', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(152, 'xinnuo', 1461549118, '嗯，有语音提示吧？ &nbsp;我发过来的信息，大约在延迟10秒内提示。', '1461549118', '1461549211', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(153, 'xinnuo', 1461549118, '嗯，我关闭窗口了。', '1461549118', '1461549279', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(154, 'xinnuo', 1461549118, 'end', '1461549118', '1461549285', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(158, 'xinnuo', 1461550788, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '长沙市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(156, 'xiaomo', 1461549407, '谁？', '1461549407', '1461549411', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(157, 'xiaomo', 1461549407, '测试语音。', '1461549407', '1461549432', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(159, 'xinnuo', 1461554524, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(161, 'xinnuo', 1461562763, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(160, 'xinnuo', 1461554524, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -600px -75px no-repeat;background-size:675px 175px;" alt=":+1:">', '1461554524', '1461554531', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(162, 'xiaomo', 1461572563, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(164, 'xinnuo', 1461635803, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(163, 'xiaomo', 1461572563, '你好，有扑克变牌衣吗', '1461572563', '1461572585', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(165, 'xinnuo', 1461635803, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px 0px no-repeat;background-size:675px 175px;" alt=":stuck_out_tongue_winking_eye:">', '1461635804', '1461635811', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(166, 'xinnuo', 1461638773, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(167, 'xinnuo', 1461638773, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -275px 0px no-repeat;background-size:675px 175px;" alt=":stuck_out_tongue_winking_eye:">', '1461638773', '1461638781', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(168, 'xinnuo', 1461719801, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(171, 'xiaogao', 1461822029, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '咸阳市', 'null', 'null', '电信', 0),
(169, 'xinnuo', 1461719801, '你好，在吗？', '1461719801', '1461719817', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(170, 'xinnuo', 1461719801, '有没有密码牌', '1461719801', '1461719833', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(172, 'xiaomo', 1461894427, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(175, 'xiaomo', 1461894427, '你', '1461894744', '1461894790', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(173, 'xinnuo', 1461894427, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -75px -75px no-repeat;background-size:675px 175px;" alt=":see_no_evil:">', '1461894427', '1461894433', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(174, 'xiaomo', 1461894427, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -475px -150px no-repeat;background-size:675px 175px;" alt=":kiss:">', '1461894744', '1461894751', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(176, 'xiaomo', 1461894860, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'http://www.gzknpj.com/aman.php/Public/client/username/xiaomo', 'null', '电信', 0),
(177, 'xiaomo', 1461894880, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '北京市', 'null', 'null', 'null', 1),
(178, 'xinnuo', 1462324773, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(180, 'xinnuo', 1462340909, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(179, 'xinnuo', 1462324773, '你好。有感应色子吗？', '1462324773', '1462324788', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(181, 'xinnuo', 1462430115, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(186, 'xinnuo', 1462504605, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(182, 'xinnuo', 1462430115, '你好', '1462430116', '1462430128', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(183, 'xinnuo', 1462430115, '您好', '1462430116', '1462430622', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(184, 'xinnuo', 1462430115, '在吗？', '1462430116', '1462430633', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(185, 'xinnuo', 1462430115, '在吗？', '1462430116', '1462430840', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(187, 'xinnuo', 1462504605, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:"><img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -600px -75px no-repeat;background-size:675px 175px;" alt=":+1:">', '1462504606', '1462504616', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(188, 'xiaomo', 1463039355, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://zy.gzknpj.com/', 'null', '电信', 0),
(189, 'xiaomo', 1463457729, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(190, 'xinnuo', 1463467557, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(191, 'xinnuo', 1463468350, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(192, 'xinnuo', 1463908870, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(195, 'xinnuo', 1463909182, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(193, 'xinnuo', 1463908870, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -250px -150px no-repeat;background-size:675px 175px;" alt=":heart:">', '1463908870', '1463908883', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(194, 'xinnuo', 1463908870, '你好。', '1463908934', '1463908947', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(196, 'xinnuo', 1463909182, '<img src="/Public/emoji-picker/lib/img//blank.gif" class="img" style="display:inline-block;width:25px;height:25px;background:url(''/Public/emoji-picker/lib/img//emoji_spritesheet_0.png'') -600px -75px no-repeat;background-size:675px 175px;" alt=":+1:">', '1463909182', '1463909192', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(197, 'xinnuo', 1463985337, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/', 'null', '电信', 0),
(198, 'xinnuo', 1464052459, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', '上海市', 'null', 'null', '电信', 0),
(199, 'xinnuo', 1464222738, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'ture', '2016', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 0),
(200, 'xinnuo', 1464748955, '<span style="color:red;">系统提示：对话建立成功！输入文字消息按回车键发送！</span>', 'false', '2016', 'null', 'null', 'null', 'null', '广州市', 'http://www.gzknpj.com/index.php/article/index/aid/151', 'null', '电信', 0);

-- --------------------------------------------------------

--
-- 表的结构 `nx_column`
--

CREATE TABLE IF NOT EXISTS `nx_column` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `picid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `audit` smallint(1) unsigned NOT NULL DEFAULT '1',
  `ord` smallint(3) unsigned NOT NULL DEFAULT '0',
  `display` smallint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `column_pid` (`pid`),
  KEY `column_path` (`path`),
  KEY `column_audit` (`audit`),
  KEY `column_ord` (`ord`),
  KEY `column_display` (`display`),
  KEY `column_picid` (`picid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `nx_column`
--

INSERT INTO `nx_column` (`id`, `pid`, `path`, `title`, `description`, `picid`, `audit`, `ord`, `display`) VALUES
(5, 0, '0', '单人操作', '', 7, 1, 0, 1),
(6, 0, '0', '视频演示', '', 6, 0, 0, 1),
(7, 0, '0', '镜头系列', '', 7, 1, 0, 1),
(8, 0, '0', '变牌系列', '', 3, 0, 0, 1),
(9, 0, '0', '穿透系列', '', 5, 0, 0, 1),
(10, 0, '0', '牌九筒子', '', 4, 0, 0, 1),
(11, 0, '0', '色子系列', '', 5, 0, 0, 1),
(13, 0, '0', '麻将桌类', '', 4, 0, 0, 1),
(14, 0, '0', '百家乐类', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `nx_comment`
--

CREATE TABLE IF NOT EXISTS `nx_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` int(11) unsigned NOT NULL DEFAULT '0',
  `ptime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `cmt` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comment_aid` (`aid`),
  KEY `comment_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `nx_dynamic`
--

CREATE TABLE IF NOT EXISTS `nx_dynamic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `otype` smallint(1) unsigned NOT NULL DEFAULT '0',
  `ptime` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dynamic_uid` (`uid`),
  KEY `dynamic_otype` (`otype`),
  KEY `dynamic_pid` (`pid`),
  KEY `dynamic_cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- 转存表中的数据 `nx_dynamic`
--

INSERT INTO `nx_dynamic` (`id`, `uid`, `otype`, `ptime`, `pid`, `cid`, `title`) VALUES
(22, 1, 1, 1429841705, 0, 23, 'éšå½¢ä¸“ä¸šç‰ˆåˆ†æžä»ª'),
(23, 1, 1, 1429843054, 0, 24, 'å‡çº§ç‰ˆåˆ†æžä»ª'),
(24, 1, 1, 1429843294, 0, 25, 'è‹¹æžœE2ä¸€ä½“æœº'),
(25, 1, 1, 1429843407, 0, 26, 'å„ç§æ‰‹æœºæ‰«æä»ª'),
(26, 1, 1, 1429843597, 0, 27, 'æœ€æ–°ä¸€å¯¹ä¸€åˆ†æžä»ª'),
(27, 1, 1, 1429845219, 0, 28, 'å‡çº§K20ä¸€ä½“æœº'),
(28, 1, 1, 1429845574, 0, 29, 'ä¸‰æ˜Ÿæ™ºèƒ½ä¸€ä½“æœº'),
(29, 1, 1, 1429845710, 0, 30, 'æœ€æ–°é¡¶çº§ç‰ˆæ™ºèƒ½ä¸»æœºã€ä¸‰æ˜ŸS4çœŸæœºã€‘'),
(30, 1, 1, 1429845804, 0, 31, 'èŠ¯ç‰‡æ„Ÿåº”æ‰‘å…‹åˆ†æžä»ª'),
(31, 1, 1, 1429845962, 0, 32, 'æ— å½±è¿½è¸ªæ‰«æä»ª'),
(32, 1, 1, 1429846222, 0, 33, 'æ™®é€šæ‰‘å…‹çŸ¥ç‚¹ä»ª'),
(33, 1, 1, 1429846352, 0, 34, 'éº»å°†ç¨‹åºä¸‡èƒ½é¥æŽ§'),
(34, 1, 1, 1429846802, 0, 35, 'æ™®é€šæ‰‘å…‹å•äººæ“ä½œåˆ†æžä»ª'),
(35, 1, 1, 1429847104, 0, 36, 'DK88æ™ºèƒ½åˆ†æžä»ª'),
(36, 1, 1, 1429854050, 0, 37, 'å„ç§æ‰‹é“¾ä½›ç æ‰«æä»ª'),
(37, 1, 1, 1429854174, 0, 38, 'å„ç§æ‰‹è¡¨å•äººä½¿ç”¨æ‰«æ'),
(38, 1, 1, 1429856329, 0, 39, 'å¹¿è§’å››å­£è¡£æœæ‰«æä»ª'),
(39, 1, 1, 1429859227, 0, 40, 'çŽ»ç’ƒçƒŸç°ç¼¸æ‰«æä»ª'),
(40, 1, 1, 1429859685, 0, 41, 'çœŸé’±å¸å˜ç‰Œå™¨'),
(41, 1, 1, 1429859788, 0, 42, 'å„ç§è½¦é’¥åŒ™é•œå¤´'),
(42, 1, 1, 1429859887, 0, 43, 'çŸ¿æ³‰æ°´é•œå¤´'),
(43, 1, 1, 1429860095, 0, 44, 'å„ç§çƒŸç›’é•œå¤´'),
(44, 1, 1, 1429860248, 0, 45, 'å……ç”µå®é•œå¤´'),
(45, 1, 1, 1429860442, 0, 46, 'å››é•œçš®å¸¦åŠ¨æ€æ‰«æé•œå¤´'),
(46, 1, 1, 1429860753, 0, 47, 'éšå½¢æ‰‹è¡¨é•œå¤´'),
(47, 1, 1, 1429860990, 0, 48, 'æœ€æ–°ä¸€æ¬¡æ€§æ°´æ¯é•œå¤´'),
(48, 1, 1, 1429861616, 0, 49, 'è¿œè·ç¦»å£ç”»é¥æŽ§é•œå¤´'),
(49, 1, 1, 1429861945, 0, 50, 'æ°´æ™¶çƒŸç¼¸å¹¿è§’é•œå¤´'),
(50, 1, 1, 1429862130, 0, 51, 'ä¸é™å…‰çœ¼é•œ'),
(51, 1, 1, 1429862314, 0, 52, 'æ— å½±å¾®æŽ§è¿½è¸ª é•œå¤´'),
(52, 1, 1, 1429862662, 0, 53, 'å„ç§å˜ç‰ŒåŒ…'),
(53, 1, 1, 1429862976, 0, 54, 'å››å­£å¹»å½±å˜ç‰Œè¡£'),
(54, 1, 1, 1429863165, 0, 55, 'å„ç§å®žæœ¨æ— ç¼å˜ç‰Œæ¡Œ'),
(55, 1, 1, 1429863279, 0, 56, 'æ–°åž‹ç”µå­æ„Ÿåº”å˜ç‰Œå™¨'),
(56, 1, 1, 1429863405, 0, 57, 'æœ€æ–°éº»å°†å˜ç‚¹åŽŸæ–™'),
(57, 1, 1, 1429863522, 0, 58, 'æ™®é€šæ‰‘å…‹éº»å°†å˜ç‚¹çŽ‹'),
(58, 1, 1, 1429864233, 0, 59, 'è¿›å£ç™½å…‰æ˜¾å½¢é•œ'),
(59, 1, 1, 1429864311, 0, 60, 'è¿›å£é«˜æ¸…æ˜¾å½¢é•œ'),
(60, 1, 1, 1429864425, 0, 61, 'è¿›å£çº³ç±³ä¸é™å…‰æ˜¾å½¢é•œ'),
(61, 1, 1, 1429864471, 0, 62, 'å¸¸è§æ‰‘å…‹æ˜¾å½¢æ•ˆæžœ'),
(62, 1, 1, 1429864597, 0, 63, 'è¿›å£é«˜æ¸…æ˜¾å½¢è¯æ°´'),
(63, 1, 1, 1429864752, 0, 64, 'å„ç§æ‰‘å…‹éº»å°†æ˜¾å½¢æ•ˆæžœ'),
(64, 1, 1, 1429864903, 0, 65, 'é‡‘èŠ±ç­’å­ç‰Œä¹æ„Ÿåº”åˆ†æžæ¡Œ'),
(65, 1, 1, 1429865007, 0, 66, 'æœ€æ–°é›·è¾¾æ‰«æç­’å­'),
(66, 1, 1, 1429865048, 0, 67, 'é’“é±¼ç¥žç­’'),
(67, 1, 1, 1429865082, 0, 68, 'æ•°ç æ„Ÿåº”ç‰Œä¹ç­’å­'),
(68, 1, 1, 1429865113, 0, 69, 'æœ€æ–°è¯­éŸ³ç­’å­ç‰Œä¹'),
(69, 1, 1, 1429865233, 0, 70, 'éº»å°†æœºä¸‡èƒ½é¥æŽ§ç¨‹åº'),
(70, 1, 1, 1429865548, 0, 71, 'è¯ç‰©æ„Ÿåº”åˆ†æžä»ª'),
(71, 1, 1, 1429865597, 0, 72, 'ç”µæ³¢æ„Ÿåº”è‰²å­åˆ†æžä»ª'),
(72, 1, 1, 1429865642, 0, 73, 'ä¸‡èƒ½é»„é‡‘å¯†ç è‰²å­'),
(73, 1, 1, 1429865674, 0, 74, 'å•äººç›‘æŽ§æ¯ç¢—'),
(74, 1, 1, 1429865710, 0, 75, 'ç”µæ³¢æ„Ÿåº”è‰²å­'),
(75, 1, 1, 1429865733, 0, 76, 'ä¸‡èƒ½é¥æŽ§è‰²å­'),
(76, 1, 1, 1429865842, 0, 77, 'å…¨è‡ªåŠ¨åŒ…èµ¢éº»å°†æœº'),
(77, 1, 1, 1429865912, 0, 78, 'å››å£ç¨‹åºéº»å°†æœº'),
(78, 1, 1, 1429866152, 0, 79, 'æ— ç¼å˜ç‰Œ éº»å°†æ¡Œ'),
(79, 1, 1, 1429866306, 0, 80, 'ç™¾å®¶ä¹å…‰çº¤æ´—ç‰Œæœº'),
(80, 1, 1, 1429866487, 0, 81, 'æ™®é€šç‰Œé´åˆ†æžä»ª'),
(81, 1, 1, 1429866701, 0, 82, 'é«˜æ¡£é˜²ä¼ªæ°´æ™¶ç­¹ç '),
(82, 1, 1, 1429866747, 0, 83, 'ç™¾å®¶ä¹åˆ†æžæ‰‹æœº'),
(83, 1, 1, 1429866803, 0, 84, 'ç™¾å®¶ä¹äº§å“'),
(84, 1, 1, 1429866887, 0, 85, 'ä¸‰æ˜Ÿè‡³å°Šæ‰«æé•œå¤´'),
(85, 1, 1, 1429866931, 0, 86, 'ç™¾å®¶ä¹åˆ†æžä¸»æœº'),
(87, 1, 1, 1429949600, 0, 88, 'å…¨èƒ½åˆ†æžä»ªå™¨'),
(88, 1, 1, 1429949825, 0, 89, 'é˜¿æ‹‰ä¸æ™®é€šæ‰‘å…‹åˆ†æžä»ª'),
(89, 1, 1, 1429953913, 0, 91, 'æœ€æ–°ä¸€å¯¹ä¸€è€³å¡ž'),
(90, 1, 1, 1429953980, 0, 92, 'é»„é‡‘ç‰ˆåŠ¨æ€çŽ‹é•œå¤´'),
(91, 1, 1, 1429954058, 0, 93, 'iphone6å‘ç‰Œè½¯ä»¶'),
(92, 1, 1, 1429954157, 0, 94, 'æ™®é€šæ‰‘å…‹çŸ¥ç‚¹ä»ª'),
(93, 1, 1, 1429954270, 0, 95, 'æ™®é€šç­’å­ç‰Œä¹åŽå°åˆ†æž'),
(94, 1, 1, 1429954332, 0, 96, 'æœ€æ–°éº»å°†å˜ç‚¹çŽ‹'),
(95, 1, 1, 1429954584, 0, 97, 'æ™®é€šæ‰‘å…‹å˜ç‚¹çŽ‹'),
(96, 1, 1, 1429954697, 0, 98, 'ç¥žæ‰‹å˜ç‰Œå™¨'),
(97, 1, 1, 1429954762, 0, 99, 'æœ€æ–°å…‰çº¤æ„Ÿåº”ç‰Œä¹ã€ç­’å­'),
(98, 1, 1, 1429954924, 0, 100, 'ç‰Œä¹æ¿ä¹ç­’å­åˆ†æžä»ª'),
(99, 1, 1, 1429955000, 0, 101, 'æ™®é€šæ¯ç¢—ç›‘æŽ§ä»ª'),
(100, 1, 1, 1429955264, 0, 102, 'iphone5sæ™ºèƒ½ä¸€ä½“æœº'),
(102, 1, 1, 1430096772, 0, 104, 'æœ€æ–°æ™®é€šç‰Œåˆ†æžä»ª'),
(103, 1, 1, 1430096845, 0, 105, 'AKKé…è‡ªåŠ¨å¯¹ç„¦é•œå¤´'),
(104, 1, 1, 1430097007, 0, 106, 'å¹¿è§’æ‰«æåˆ†æžäº§å“'),
(105, 1, 1, 1430097099, 0, 107, 'æœ€æ–°æ— ç¼å˜ç‰Œæ¡Œ'),
(106, 1, 1, 1430097163, 0, 108, 'é«˜ç§‘æŠ€é¥æŽ§è‰²å­'),
(107, 1, 1, 1430097217, 0, 109, 'ä¸‡èƒ½å¯†ç è‰²å­'),
(108, 1, 1, 1430097277, 0, 110, 'ç‰Œä¹ç©ºæ‰‹å˜ç‰Œ'),
(109, 1, 1, 1430097357, 0, 111, 'æœ€æ–°é’¨é’¢æ‰‹è¡¨åˆ†æžäº§å“'),
(110, 1, 1, 1430097408, 0, 112, 'å•äººæ“ä½œICæ™ºèƒ½éº»å°†'),
(111, 1, 1, 1430097489, 0, 113, 'å¿…èƒœç¨‹åºéº»å°†æœº'),
(112, 1, 1, 1430097591, 0, 114, 'æœ€æ–°å˜ç‰Œè‡ªæ‘¸è§†é¢‘æ¼”ç¤º'),
(113, 1, 1, 1430097645, 0, 115, 'é‡‘èŠ±æ¢­å“ˆæ„Ÿåº”åˆ†æžè§†é¢‘'),
(114, 1, 1, 1430097694, 0, 116, 'é¡¶çº§å˜ç‰Œè¡£è§†é¢‘'),
(115, 1, 1, 1430097783, 0, 117, 'æ‹å¼¯é•œå¤´è§†é¢‘æ¼”ç¤º'),
(116, 1, 1, 1430097836, 0, 118, 'ä¸œæ–¹ä¸è´¥ICæ™ºèƒ½éº»å°†æ¡Œ'),
(117, 1, 1, 1430097922, 0, 119, 'éšå½¢1-5å¼ åŒæ—¶å˜ç‰Œ'),
(118, 1, 1, 1430097981, 0, 120, 'æ‰‘å…‹å°ä¹å˜ç‰Œç»æŠ€è§†é¢‘æ¼”ç¤º'),
(119, 1, 1, 1430098051, 0, 121, 'æ‰‘å…‹é‡‘èŠ±ç©ºæ‰‹å˜ç‰Œ'),
(120, 1, 1, 1430098097, 0, 122, 'æ‰‘å…‹å¿…èƒœç»æŠ€è§†é¢‘æ¼”ç¤º'),
(121, 1, 1, 1430098135, 0, 123, 'æœ€æ–°å˜ç‰Œç»æŠ€'),
(122, 1, 1, 1430098204, 0, 124, 'é«˜ç§‘æŠ€ç™¾å®¶ä¹åˆ†æžä»ª'),
(123, 1, 1, 1430098260, 0, 125, 'ç™¾å®¶ä¹åˆ†æžä»ªè½¯ä»¶'),
(124, 1, 1, 1430098651, 0, 126, 'å•äººæ“ä½œåˆ†æžä»ª'),
(125, 1, 1, 1430098699, 0, 127, 'CVKè¶…å¼ºåˆ†æžä»ª'),
(126, 1, 1, 1430100311, 0, 128, 'é‡‘èŠ±ä¸“ç”¨æ„Ÿåº”å™¨'),
(127, 1, 1, 1438135786, 0, 129, 'Xå…‰é€è§†æ¡Œ'),
(128, 1, 1, 1438656431, 0, 130, '全能玩后台分析软件'),
(129, 1, 1, 1438657496, 0, 131, '远程4G网络后台分析'),
(130, 1, 1, 1444196597, 0, 132, '苹果6普通牌扑克分析仪');

-- --------------------------------------------------------

--
-- 表的结构 `nx_flink`
--

CREATE TABLE IF NOT EXISTS `nx_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `webname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `logo` varchar(60) NOT NULL DEFAULT '',
  `rname` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `dtime` int(10) NOT NULL DEFAULT '0',
  `msg` varchar(200) NOT NULL DEFAULT '',
  `list` smallint(1) unsigned NOT NULL,
  `audit` smallint(1) unsigned NOT NULL,
  `ord` smallint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flink_list` (`list`),
  KEY `flink_audit` (`audit`),
  KEY `flink_ord` (`ord`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `nx_group`
--

CREATE TABLE IF NOT EXISTS `nx_group` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `useradmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `webadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `articleadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendarticle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendcomment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendmessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `nx_group`
--

INSERT INTO `nx_group` (`id`, `groupname`, `description`, `useradmin`, `webadmin`, `articleadmin`, `sendarticle`, `sendcomment`, `sendmessage`) VALUES
(1, 'root', 'root', 1, 1, 1, 1, 1, 1),
(2, 'admin', 'admin', 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `nx_guest`
--

CREATE TABLE IF NOT EXISTS `nx_guest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '访客',
  `phone` varchar(11) NOT NULL DEFAULT '0',
  `weixin` varchar(30) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(1000) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT 'admin',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messgae_uid` (`phone`),
  KEY `message_revicename` (`weixin`),
  KEY `message_status` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `nx_guest`
--

INSERT INTO `nx_guest` (`id`, `name`, `phone`, `weixin`, `ctime`, `message`, `username`, `status`) VALUES
(1, '刘先生', '15817127888', '635549913', '2016-04-07 06:17:41', '测试的留言内容', 'xiaogao', 1),
(2, '陈先生', '15877777777', '77777777777', '2016-04-07 06:30:41', '测试留言', 'xiaogao', 1),
(3, '小关', '13076792088', '13076792088', '2016-04-07 06:32:56', '麻将 扑克', 'xiaogao', 1),
(4, '', '18122378829', '1732364856', '2016-04-07 06:34:21', '三公', 'xiaogao', 1),
(5, '小周', '10086100861', '10086', '2016-04-07 06:37:22', '发大幅度', 'xiaogao', 1),
(6, '360浏览器', '12345679812', '121212121212', '2016-04-07 06:37:57', '测试测测测测肥肠粉', 'admin', 1),
(7, '陈先生', '15817127899', '2458828007', '2016-04-12 02:20:03', '有出千的扑克变牌衣吗？', 'xinnuo', 1);

-- --------------------------------------------------------

--
-- 表的结构 `nx_image`
--

CREATE TABLE IF NOT EXISTS `nx_image` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(24) NOT NULL DEFAULT '',
  `water` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `image_pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `nx_image`
--

INSERT INTO `nx_image` (`id`, `pid`, `name`, `water`) VALUES
(3, 4, '20150422162820_544.jpg', 0),
(4, 4, '20150422162820_897.jpg', 0),
(5, 5, '20150422162923_902.jpg', 0),
(6, 5, '20150422162923_618.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `nx_node`
--

CREATE TABLE IF NOT EXISTS `nx_node` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `nx_node`
--

INSERT INTO `nx_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`) VALUES
(1, 'Admin', '后台模块', 1, NULL, '0', 0, 1),
(2, 'Index', '后台首页控制器', 1, NULL, '1-1', 1, 2),
(3, 'index', '显示后台首页模板', 1, NULL, '1-2', 2, 3),
(4, 'top', '显示后台顶部模板', 1, NULL, '1-3', 2, 3),
(5, 'footer', '显示后台底部信息栏', 1, NULL, '1-4', 2, 3),
(6, 'sysconfig', '显示系统设置模板', 1, NULL, '1-5', 2, 3),
(7, 'setConfig', '系统设置', 1, NULL, '1-6', 2, 3),
(8, 'showTables', '显示数据库替换模板', 1, NULL, '1-7', 2, 3),
(9, 'replaceData', '数据库替换', 1, NULL, '1-8', 2, 3),
(10, 'main', '后台主页右边区域内容', 1, NULL, '1-9', 2, 3),
(11, 'refresh', '一键更新网站', 1, NULL, '1-10', 2, 3),
(12, 'User', 'User用户管理控制器', 1, NULL, '2-1', 1, 2),
(13, 'index', '显示所有用户信息', 1, NULL, '2-2', 12, 3),
(14, 'add', '显示添加用户的界面', 1, NULL, '2-3', 12, 3),
(15, 'insert', '插入添加的用户数据', 1, NULL, '2-4', 12, 3),
(16, 'changeStatus', '改变用户状态', 1, NULL, '2-5', 12, 3),
(17, 'del', '删除用户', 1, NULL, '2-6', 12, 3),
(18, 'group', '显示用户组管理界面', 1, NULL, '2-7', 12, 3),
(19, 'addGroup', '显示添加用户组的界面', 1, NULL, '2-8', 12, 3),
(20, 'insertgroup', '插入添加的用户组数据', 1, NULL, '2-9', 12, 3),
(21, 'delGroup', '删除用户组', 1, NULL, '2-10', 12, 3),
(22, 'myNode', '显示我的权限情况', 1, NULL, '2-11', 12, 3),
(23, 'sysMenu', '显示系统管理菜单', 1, NULL, '1-11', 2, 3),
(24, 'siteMenu', '显示网站管理菜单', 1, NULL, '1-12', 2, 3),
(25, 'kefuMenu', '显示网站在线客服菜单', 1, NULL, '1-13', 2, 3),
(26, 'msgMenu', '显示网站留言系统菜单', 1, NULL, '1-14', 2, 3),
(27, 'menu', '显示菜单容器', 1, NULL, '1-15', 2, 3);

-- --------------------------------------------------------

--
-- 表的结构 `nx_notic`
--

CREATE TABLE IF NOT EXISTS `nx_notic` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `color` char(6) NOT NULL DEFAULT '000000',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `display` smallint(1) unsigned NOT NULL DEFAULT '1',
  `ord` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notice_starttime` (`starttime`),
  KEY `notice_endtime` (`endtime`),
  KEY `notice_display` (`display`),
  KEY `notice_ord` (`ord`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `nx_play`
--

CREATE TABLE IF NOT EXISTS `nx_play` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `picid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `display` smallint(1) unsigned NOT NULL DEFAULT '1',
  `ord` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `play_aid` (`aid`),
  KEY `play_picid` (`picid`),
  KEY `play_starttime` (`starttime`),
  KEY `play_endtime` (`endtime`),
  KEY `play_display` (`display`),
  KEY `play_ord` (`ord`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `nx_role`
--

CREATE TABLE IF NOT EXISTS `nx_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ctime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `nx_role`
--

INSERT INTO `nx_role` (`id`, `name`, `pid`, `status`, `remark`, `ctime`) VALUES
(1, 'admin', NULL, 1, '管理员', 1471509458),
(2, 'webadmin', NULL, 1, '网络编辑', 1471509483),
(3, 'kefu', NULL, 1, '客服', 1471509493);

-- --------------------------------------------------------

--
-- 表的结构 `nx_role_user`
--

CREATE TABLE IF NOT EXISTS `nx_role_user` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `nx_role_user`
--

INSERT INTO `nx_role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, '2'),
(2, 2, '3'),
(3, 3, '4'),
(4, 3, '5');

-- --------------------------------------------------------

--
-- 表的结构 `nx_user`
--

CREATE TABLE IF NOT EXISTS `nx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `groupid` varchar(50) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` tinyint(1) DEFAULT '1',
  `ctime` varchar(20) DEFAULT '1970-01-01',
  `last_time` varchar(20) NOT NULL DEFAULT '0',
  `last_ip` varchar(32) DEFAULT '本地局域网',
  `last_area` varchar(15) DEFAULT '广州诺信科技',
  `email` varchar(32) DEFAULT 'test@test.com',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `login_status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `nx_user`
--

INSERT INTO `nx_user` (`id`, `username`, `groupid`, `password`, `sex`, `ctime`, `last_time`, `last_ip`, `last_area`, `email`, `num`, `status`, `login_status`) VALUES
(1, 'admin', '1', '46f94c8de14fb36680850768ff1b7f2a', 1, '1970-01-01', '0', '本地局域网', '广州诺信科技', 'test@test.com', 0, 1, 0),
(2, 'liuman', '1', '46f94c8de14fb36680850768ff1b7f2a', 1, '1471509529', '0', '本地局域网', '广州诺信科技', 'liuman@qq.com', 0, 1, 0),
(3, '小周', '2', '46f94c8de14fb36680850768ff1b7f2a', 1, '1471509567', '0', '本地局域网', '广州诺信科技', 'xiaozhou@qq.com', 0, 1, 0),
(4, '众宜', '3', '46f94c8de14fb36680850768ff1b7f2a', 0, '1471509610', '0', '本地局域网', '广州诺信科技', 'zhongyi@qq.com', 0, 1, 0),
(5, '永胜', '3', 'd41d8cd98f00b204e9800998ecf8427e', 0, '1471509657', '0', '本地局域网', '广州诺信科技', 'yongsheng@qq.com', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `nx_video`
--

CREATE TABLE IF NOT EXISTS `nx_video` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `nx_video`
--

INSERT INTO `nx_video` (`id`, `title`, `url`) VALUES
(1, '一对一跟踪王', 'http://121.42.195.161/m/guangjiao.mp4'),
(2, '阿拉丁普通扑克分析仪', 'http://121.42.195.161/m/alading.mp4'),
(3, '机王全能分析仪', 'http://121.42.195.161/m/yingxingkongshou.mp4'),
(4, '最新一对一耳塞', 'http://121.42.195.161/m/DK88.mp4'),
(5, '全方位动态镜头', 'http://121.42.195.161/m/dongtaiwang_02sStart.mp4'),
(6, '发牌王软件', 'http://121.42.195.161/m/doudizhu.mp4'),
(7, '普通扑克知点仪', 'http://121.42.195.161/m/zhidianyi.mp4'),
(8, '普通筒子牌九后台分析', 'http://121.42.195.161/m/houtaifenxi.mp4'),
(9, '最新麻将变点王', 'http://121.42.195.161/m/majiangbiandian.mp4'),
(10, '普通扑克变点王', 'http://121.42.195.161/m/biandian.mp4'),
(11, '神手变牌器', 'http://121.42.195.161/m/shenshou.mp4'),
(12, '最新光纤感应牌九、筒子', 'http://121.42.195.161/m/guangqian.mp4'),
(13, '牌九板九筒子分析仪', 'http://121.42.195.161/m/yuyingpaijiu.mp4'),
(14, '普通杯碗监控仪', 'http://121.42.195.161/m/jiankong.mp4'),
(15, '带遥控正反一体机', 'http://121.42.195.161/m/iPhone5S_Yi_Ti_Ji.mp4'),
(16, '全能赢猜宝王', 'http://121.42.195.161/m/caibaowang.mp4'),
(17, '单人语音扫描皮带', 'http://121.42.195.161/m/2015niukou.mp4'),
(18, '天衣无缝扫描镜头', 'http://121.42.195.161/m/wuyingzuizhong.mp4'),
(19, '最新无缝变牌桌', 'http://121.42.195.161/m/wufengzhuo.mp4'),
(20, '高科技遥控色子', 'http://121.42.195.161/m/yaokong.mp4'),
(21, '万能密码色子', 'http://121.42.195.161/m/wanneng.mp4'),
(22, '牌九空手变牌', 'http://121.42.195.161/m/paijiukongshou.mp4'),
(23, '任性手表扫描仪', 'http://121.42.195.161/m/wugangshoubiao.mp4'),
(24, '单人操作IC智能麻将', 'http://121.42.195.161/m/ICzhineng.mp4'),
(25, '必胜程序麻将机', 'http://121.42.195.161/m/chengxu.mp4'),
(26, '最新变牌自摸视频演示', 'http://121.42.195.161/m/bianpai.mp4'),
(27, '普通扑克筒子感光桌', 'http://121.42.195.161/m/jinhuasuoha.mp4'),
(28, '马来西亚变牌衣', 'http://121.42.195.161/m/dingji.mp4'),
(29, '三星note4扑克分析仪', 'http://121.42.195.161/m/wuyingjingt3.mp4'),
(30, '单人语音光控麻将', 'http://121.42.195.161/m/dongfangbubai.mp4'),
(31, '三星S5(A版,B版,C版)', 'http://121.42.195.161/m/yingxing1-5.mp4'),
(32, '扑克小九变牌绝技', 'http://121.42.195.161/m/xiaopaijiu.mp4'),
(33, '扑克金花空手变牌', 'http://121.42.195.161/m/pukejinhua.mp4'),
(34, '扑克必胜绝技', 'http://121.42.195.161/m/doudizhu.mp4'),
(35, '最新变牌绝技', 'http://121.42.195.161/m/zuixinbianpai2014.mp4'),
(36, '高科技百家乐分析仪', 'http://121.42.195.161/m/baijiale.mp4'),
(37, '百家乐分析仪软件', 'http://121.42.195.161/m/baijialefenxi.mp4'),
(38, '百家乐认普通牌靴', 'http://121.42.195.161/m/danrencaozuo.mp4'),
(39, 'CVK超强分析仪', 'http://121.42.195.161/m/cvk.mp4'),
(40, '跑胡子{字牌、长牌}专用分析仪', 'http://121.42.195.161/m/jinhua.mp4'),
(41, 'X光透视桌面', 'http://121.42.195.161/m/xguan.mp4'),
(42, '普通扑克麻将密码笔', 'http://121.42.195.161/2016/6.mp4'),
(43, '普通扑克极速分析仪', 'http://121.42.195.161/2016/7.mp4'),
(44, '筒子牌九分析仪', 'http://121.42.195.161/2016/8.mp4'),
(45, '百家乐可控牌路分析牌靴', 'http://121.42.195.161/2016/9.mp4'),
(46, '普通筒子牌九远程分析', 'http://121.42.195.161/2016/32.mp4'),
(47, '高速动态扫描镜头', 'http://121.42.195.161/2016/11.mp4'),
(48, '三星变牌手机【真机】', 'http://121.42.195.161/2016/12.mp4'),
(49, '袖剑变牌', 'http://121.42.195.161/2016/13.mp4'),
(50, '超级扫描分析仪', 'http://121.42.195.161/2016/14.mp4'),
(51, '透视杯碗', 'http://121.42.195.161/2016/16.mp4'),
(52, '极品烟缸扫描', 'http://121.42.195.161/2016/18.mp4'),
(53, '知音震动手表', 'http://121.42.195.161/2016/39.mp4'),
(54, '万能过牌色子', 'http://121.42.195.161/2016/20.mp4'),
(55, '十三张斗地主软件', 'http://121.42.195.161/2016/21.mp4'),
(56, '远程后台扫描监控', 'http://121.42.195.161/2016/23.mp4'),
(57, '领航者包赢麻将机', 'http://121.42.195.161/2016/24.mp4'),
(58, '苹果6大范围分析仪', 'http://121.42.195.161/2016/25.mp4'),
(59, 'AK麻将分析仪', 'http://121.42.195.161/2016/26.mp4'),
(60, '单人猜宝王', 'http://121.42.195.161/2016/27.mp4'),
(61, '扑克王软价【任何手机】', 'http://121.42.195.161/2016/28.mp4'),
(62, 'PK王分析仪', 'http://121.42.195.161/2016/30.mp4'),
(63, '普通扑克知点仪', 'http://121.42.195.161/2016/31.mp4'),
(64, '麻将变牌新品', 'http://121.42.195.161/2016/33.mp4'),
(65, '感应超级板', 'http://121.42.195.161/2016/34.mp4'),
(66, '三星S5分析仪', 'http://121.42.195.161/2016/36.mp4'),
(67, '跑胡子分析仪', 'http://121.42.195.161/2016/37.mp4'),
(68, '单人语音麻将机', 'http://121.42.195.161/2016/4.mp4'),
(69, '普通扑克筒子牌九透视桌', 'http://121.42.195.161/2016/1.mp4'),
(70, '六代密码色子', 'http://121.42.195.161/2016/3.mp4'),
(71, '普通牌远程飞飙后台', 'http://121.42.195.161/2016/2.mp4'),
(72, '金花梭哈感应桌', 'http://121.42.195.161/2016/5.mp4'),
(73, '全能玩后台分析软件', 'http://121.42.195.161/m/quannengwan.mp4'),
(74, '苹果6普通牌扑克分析仪', 'http://121.42.195.161/m/mffxy.mp4'),
(75, '智能机变牌现场表演', 'http://121.42.195.161/20160420.mp4');

-- --------------------------------------------------------

--
-- 表的结构 `nx_weixinfile`
--

CREATE TABLE IF NOT EXISTS `nx_weixinfile` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(22) NOT NULL,
  `ctime` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '管理员',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=432 ;

--
-- 转存表中的数据 `nx_weixinfile`
--

INSERT INTO `nx_weixinfile` (`id`, `filename`, `title`, `ctime`, `username`, `status`) VALUES
(1, '1117_165354_0.html', '小明偷看美女洗澡!结果……', 1447722083, '管理员', 0),
(2, '1117_144729_0.html', '男女互相误认对方为网友,荒唐发生一夜情', 1447722083, '管理员', 0),
(3, '1117_141206_0.html', '不管男女,这里长毛,那你这辈子就倒霉了!', 1447722083, '管理员', 0),
(4, '1117_113346_0.html', 'ISIS是谁？聚焦震惊世界的砍头狂、极端恐怖', 1447722083, '管理员', 0),
(5, '1118_092255_0.html', '妹子这么大的黄瓜受的了吗?', 1447809775, '管理员', 0),
(6, '1118_094423_0.html', '揭秘人民币制造全过程,史上最详细!', 1447811064, '管理员', 0),
(7, '1118_164158_0.html', '她, 再干净也不能碰!千万注意!!!', 1447836118, '管理员', 0),
(8, '1118_165150_0.html', '骚不骚,看她腰;美不美,看大腿', 1447836710, '管理员', 0),
(9, '1118_173243_0.html', '实拍朝鲜医院内景,人间地狱!', 1447839163, '管理员', 0),
(79, '1204_120105_0.html', '5岁男童幼儿园午睡时死亡，原因让家长和老师崩', 1449201667, '邱丽娜', 0),
(12, '1119_142921_0.html', '那一刻,他穿过了她的身体...', 1447914562, '管理员', 0),
(13, '1119_143514_0.html', '街头卖的糖炒栗子有猫腻?爱吃栗子的你一定要看', 1447914914, '管理员', 0),
(14, '1119_143800_0.html', '喝啤酒时千万别吃4种菜 盘点喝酒不醉的九大技', 1447915083, '管理员', 0),
(15, '1119_144401_0.html', '漂亮空姐竟嫁给了没钱的男人,说了这段话,让所', 1447915442, '管理员', 0),
(16, '1119_144734_0.html', '预防冬病,让你安然过冬', 1447915655, '管理员', 0),
(17, '1119_171355_0.html', '美女竟敢穿这样逛超市看呆了!', 1447924435, '管理员', 0),
(18, '1119_172616_0.html', '面试时大胸美女，差点撑爆', 1447925176, '管理员', 0),
(19, '1120_100823_0.html', '一个借钱故事,看穿你的人际关系!', 1447985303, '管理员', 0),
(20, '1120_101319_0.html', '只要你“裸睡”,这些病自己就没了!', 1447985599, '管理员', 0),
(21, '1120_141340_0.html', '男人不能娶的12种女人', 1448000021, '管理员', 0),
(22, '1120_174704_0.html', '中国夜店 • 请封杀此人', 1448012826, '管理员', 0),
(23, '1121_091804_0.html', '韩国18禁电影,逼格远超岛国', 1448068685, '管理员', 0),
(24, '1121_092218_0.html', '剩菜到底能吃还是不能吃?专家用权威实验告诉你', 1448068938, '管理员', 0),
(25, '1123_104233_0.html', '把卫生纸放在冰箱里,不可思议的事情发生了…', 1448246554, '管理员', 0),
(26, '1123_104818_0.html', '四十后的醒悟', 1448246900, '管理员', 0),
(27, '1123_140636_0.html', '中国古代变态酷刑：把女犯衣服剥光骑木驴', 1448258796, '管理员', 0),
(28, '1123_141330_0.html', '全球最神奇的图片！看过让你怀疑自己', 1448259210, '管理员', 0),
(29, '1123_142103_0.html', '全球十大禁忌：筷子不能插入饭碗', 1448259664, '管理员', 0),
(30, '1127_144751_0.html', '请不要在最好的时间选择睡觉', 1448606872, '管理员', 0),
(31, '1127_145057_0.html', '很多人都不知道肯德基的这段历史', 1448607057, '管理员', 0),
(33, '1127_145803_0.html', '放下手机,不做失败的父母!', 1448607483, '管理员', 0),
(34, '1128_100337_0.html', '牌友必看!鸿运当头的八大征兆! ', 1448676217, '管理员', 0),
(78, '1203_175526_0.html', '很少接戏，与李冰冰暧昧22年，他却是娱乐圈的', 1449136528, '邱丽娜', 0),
(36, '1128_142328_0.html', '全球让你汗颜的神童排行榜-', 1448691808, '管理员', 0),
(77, '1203_174952_0.html', '为什么一夜之间，朋友圈都在疯转这组图？', 1449136193, '关洁萍', 0),
(38, '1128_144114_0.html', '东北艳照，刚流出！', 1448692874, '管理员', 0),
(39, '1128_144926_0.html', '论深蹲和性能力的关系及重要性', 1448693367, '管理员', 0),
(40, '1130_095718_0.html', '聪明人都在远离手机里虚假繁荣的&quot;人', 1448848638, '管理员', 0),
(41, '1130_095845_0.html', '十大最恐怖的毁车行为 你中招了吗？', 1448848725, '管理员', 0),
(42, '1201_094136_0.html', '2015年8大校园暴力事件、头条', 1448934096, '管理员', 0),
(43, '1201_094302_0.html', '余姚15岁女生遭多人凌辱 惨被用树枝侵犯下体', 1448934183, '管理员', 0),
(44, '1201_095038_0.html', '扁桃体反复发炎有办法没?有!', 1448934638, '管理员', 0),
(45, '1201_165503_0.html', '为了一张完美的自拍，他们……死了', 1448960104, '管理员', 0),
(46, '1201_165856_0.html', '人无所舍，必无所成！人生太短，懂得太晚……', 1448960336, '管理员', 0),
(47, '1202_090512_0.html', '女子4岁被拐，44年后养父临终告知真相，可怜', 1449018312, '管理员', 0),
(48, '1202_090818_0.html', '云在指尖等四家“微商”被工商总局认定为传销！', 1449018498, '管理员', 0),
(49, '1202_091120_0.html', '说说你听过的最寒心刺骨的话', 1449018680, '管理员', 0),
(50, '1202_102757_0.html', '这9种人，擦肩即可，无需深交', 1449023277, '管理员', 0),
(51, '1202_104007_0.html', '“反手摸肚脐”演变而成的“反手摸胸”！想知道', 1449024007, '管理员', 0),
(52, '1202_105031_0.html', '首页 &gt; 教育·励志 &gt; 知行互', 1449024631, '管理员', 0),
(53, '1202_105037_0.html', '首页 &gt; 教育·励志 &gt; 知行互', 1449024640, '管理员', 0),
(54, '1202_111632_0.html', '当我们老了，盆友圈会不会变成这样.....？', 1449026195, '管理员', 0),
(55, '1202_140906_0.html', ' 男人你工资5000元左右的，你就等着面对现', 1449036547, '管理员', 0),
(56, '1202_143110_0.html', '在中国做妈妈，你要比67个国家的妈妈更努力！', 1449037871, '管理员', 0),
(57, '1202_143754_0.html', ' 一对80后夫妻生完二胎后悔了！趁生二胎前，', 1449038274, '管理员', 0),
(58, '1202_144428_0.html', ' 一对80后夫妻生完二胎后悔了！趁生二胎前，', 1449038668, '管理员', 0),
(59, '1202_151003_0.html', ' 如何让孩子对学习上瘾，强烈建议收藏！', 1449040206, '管理员', 0),
(60, '1202_152050_0.html', '小学生心酸作文：“爸爸只爱玩手机！”……', 1449040852, '管理员', 0),
(61, '1202_162336_0.html', ' 一条再也无法发出的短信，一夜之间刷爆朋友圈', 1449044616, '管理员', 0),
(62, '1203_092447_0.html', '吸毒坠15楼后的突破人生', 1449105890, 'admin', 0),
(63, '1203_093823_0.html', '一辈子的夫妻，原来都在相互装傻 ！', 1449106706, '高升', 0),
(64, '1203_094150_0.html', '后悔药，你要吗？', 1449106913, '高升', 0),
(65, '1203_094555_0.html', '男人功成名就的资本,你具备多少？', 1449107156, '邱丽娜', 0),
(66, '1203_095044_0.html', '牛B、装B与傻B区别', 1449107445, '高升', 0),
(67, '1203_095206_0.html', '年轻妈妈地铁上哺乳照被人放上网 还被批“裸露', 1449107527, 'admin', 0),
(68, '1203_095620_0.html', '有人说，老婆是男人最熟悉的陌生人，真的很对！', 1449107782, '吴咏珍', 0),
(69, '1203_100321_0.html', '十一月，再见!十二月，你必须努力', 1449108202, '吴咏珍', 0),
(70, '1203_100749_0.html', '【生活常识】小时候做过的农活，你做过几样？', 1449108470, '吴咏珍', 0),
(71, '1203_101314_0.html', ' 你何必要补上那句刺人而又多余的话？', 1449108796, '关洁萍', 0),
(72, '1203_104032_0.html', '台湾获金奖的矿泉水广告，要笑死我了！~哈哈', 1449110434, '刘满', 0),
(73, '1203_110819_0.html', '美女洞房夜逼婚 ，最后爽飞了！', 1449112101, '刘满', 0),
(76, '1203_172844_0.html', '冬天你戴围巾了吗？千万别这么戴，可能有生命危', 1449134932, '关洁萍', 0),
(80, '1204_171049_0.html', '男孩带失明父亲吃牛肉面，他一个举动让所有人都', 1449220253, 'admin', 0),
(129, '1212_094646_0.html', '印度为何沦为强奸之国?', 1449884807, 'admin', 0),
(83, '1204_171314_0.html', '他养的金鱼永远都不会死', 1449220396, '邱丽娜', 0),
(84, '1205_143724_0.html', '马云的“豪华宝座”你见过吗？----太牛了！', 1449297445, 'admin', 0),
(85, '1207_135239_0.html', '骗子新花招，速看！', 1449467561, 'admin', 0),
(86, '1207_135742_0.html', '十年前，他借给兄弟300块，十年后兄弟衣锦还', 1449467864, 'admin', 0),
(87, '1207_140613_0.html', '♬ 致50多岁的四句话，看完大彻大悟！最好记', 1449468375, 'admin', 0),
(88, '1207_152559_0.html', '9个段子胜过你今年读的所有微信', 1449473161, '吴咏珍', 0),
(128, '1211_170933_0.html', '安全套测试员招聘实况（下集）', 1449824975, 'admin', 0),
(90, '1207_153507_0.html', '有车一族,收了它吧', 1449473709, '吴咏珍', 0),
(91, '1207_154239_0.html', '主要是看气质？朕不服！', 1449474161, '吴咏珍', 0),
(92, '1207_155530_0.html', '我的妻子“没有工作”……感动整个朋友圈', 1449474932, '吴咏珍', 0),
(93, '1208_134331_0.html', '马云、马化腾这些大佬的亲爹是…99%的人不知', 1449553412, 'admin', 0),
(94, '1208_134610_0.html', '开房300次的女人告诉你的秘密', 1449553571, 'admin', 0),
(95, '1208_134702_0.html', '麻将桌上看人品,一看一个准!', 1449553623, 'admin', 0),
(96, '1208_135109_0.html', '钱到底是什么东西?精辟!', 1449553870, 'admin', 0),
(97, '1208_140658_0.html', '中国有30个姓氏有皇室血统,有你吗?', 1449554824, 'admin', 0),
(98, '1208_141234_0.html', '你过度牺牲自己，不会带给任何人幸福', 1449555158, '高潘', 0),
(127, '1211_154351_0.html', '壮观！房顶融雪整片脱落像瀑布流下', 1449819832, 'admin', 0),
(100, '1208_145747_0.html', '【提醒】紧急！ATM机上如果看到这种标识，千', 1449557870, 'admin', 0),
(101, '1208_155159_0.html', '吸烟既然有害健康，国家为什么不禁烟？反而卖烟', 1449561120, 'admin', 0),
(102, '1208_155352_0.html', '丧心病狂！5岁小女孩正在上课，一男子闯入幼儿', 1449561234, '关洁萍', 0),
(103, '1209_091831_0.html', '儿子喝豆浆后身亡，妈妈肠子悔青了…这些食物比', 1449623913, 'admin', 0),
(104, '1209_101335_0.html', '流浪狗挡车位被踢，呼朋引伴毁车“复仇”', 1449627217, 'admin', 0),
(105, '1209_140206_0.html', '十种人类被动物传染的致命疾病', 1449640928, 'admin', 0),
(106, '1210_094921_0.html', 'ATT普.通.牌.十三水，斗地主软件', 1449712162, 'admin', 0),
(107, '1210_095110_0.html', '颠覆全球——史上最牛麻将机！', 1449712271, 'admin', 0),
(110, '1210_101753_0.html', '除夕火车票今开售 “黄牛”代抢一张收百元', 1449713875, '高潘', 0),
(126, '1211_153255_0.html', '视频: 安全套测试员招聘实况（上集）', 1449819176, 'admin', 0),
(114, '1210_102522_0.html', '论12306验证码的自我修养', 1449714324, 'admin', 0),
(125, '1211_152801_0.html', '暗拍女技师提供上门按摩服务 进门便脱衣换“制', 1449818883, 'admin', 0),
(117, '1210_103257_0.html', '纵欲过度会怎样？', 1449714778, 'admin', 0),
(118, '1210_103301_0.html', '除夕火车票今开售 “黄牛”代抢一张收百元', 1449714783, '高潘', 0),
(124, '1211_152002_0.html', '手机爆炸：手机使用注意安全,不看你后悔！', 1449818403, 'admin', 0),
(120, '1210_110047_0.html', '被野兽调戏的国外美女', 1449716448, 'admin', 0),
(121, '1210_110409_0.html', '最销魂的美女与汪 人狗情未了', 1449716650, 'admin', 0),
(122, '1210_164614_0.html', '宇宙级10大愚蠢人类 全程异能切勿模仿！', 1449737175, 'admin', 0),
(123, '1210_164910_0.html', '吓尿！史上最长舌头的 美女！你懂滴！', 1449737351, 'admin', 0),
(130, '1212_100152_0.html', '不敢赌 + 放不下 = 穷人', 1449885715, 'admin', 0),
(131, '1212_103206_0.html', '100年后别人看我们现在的朋友圈.大概就是这', 1449887549, 'admin', 0),
(132, '1212_103248_0.html', '100年后别人看我们现在的朋友圈.大概就是这', 1449887570, 'admin', 0),
(133, '1212_161433_0.html', '一名小偷的年终总结：你们的东西就是这样被我偷', 1449908077, 'admin', 0),
(134, '1214_140450_0.html', '一分钟教你春运抢火车票', 1450073092, 'admin', 0),
(135, '1214_140545_0.html', '碰瓷大妈腊月力作 隔着七八米远就地打滚！', 1450073147, 'admin', 0),
(136, '1214_141337_0.html', '妹纸有话说|你介意你对象看AV吗？', 1450073619, 'admin', 0),
(137, '1214_142802_0.html', '如何知道自己是否是别人的备胎?', 1450074488, 'admin', 0),
(138, '1215_134837_0.html', '中国男女在朋友圈乱晒娃时，国外夫妻竟然在晒这', 1450158518, 'admin', 0),
(139, '1215_140604_0.html', '梅艳芳文胸底裤被拍卖！明星好友愤怒了！', 1450159570, 'admin', 0),
(140, '1215_141616_0.html', '中国夫妻最缺什么？（几乎家家缺）', 1450160178, 'admin', 0),
(141, '1215_160533_0.html', '老王现场被捉奸，结局却令人大跌眼镜！', 1450166734, 'admin', 0),
(142, '1215_170641_0.html', '智能魔方普通扑克分析仪——魔方无边，决胜千里', 1450170402, 'admin', 0),
(143, '1216_115209_0.html', '说你胸小怎么反驳', 1450237931, 'admin', 0),
(144, '1216_171142_0.html', '吓死宝宝啦 巴西猛男1万英尺崖尖玩倒挂', 1450257105, 'admin', 0),
(145, '1217_153651_0.html', '美国小伙挑战跳崖磕到头 摔断14根肋骨', 1450337812, '刘满', 0),
(146, '1217_154615_0.html', '2015狂野妹子大盘点！', 1450338387, '刘满', 0),
(147, '1220_091641_0.html', '监拍奇葩女子骑摩托“后仰”通过停车杆 如玩杂', 1450574202, 'admin', 0),
(148, '1221_153425_0.html', '哈佛入学题！据说99%都答不上来！', 1450683270, 'admin', 0),
(149, '1222_135200_0.html', '让男生追得费力就更容易被珍惜吗？', 1450763522, 'admin', 0),
(150, '1222_135816_0.html', '为什么日本孩子没有自己的学习房间？原因值得中', 1450763898, 'admin', 0),
(151, '0120_172452_0.html', '图：主播你乳此叼！', 1453281893, 'admin', 0),
(152, '0121_094636_0.html', '北上广深二线嫩模联系方式汇总.xlsx', 1453340797, 'admin', 0),
(153, '0121_095018_0.html', '北上广深二线嫩模联系方式汇总.xlsx', 1453341019, 'admin', 0),
(154, '0121_095117_0.html', '北上广深二线嫩模联系方式汇总.xlsx', 1453341078, 'admin', 0),
(155, '0121_095156_0.html', '北上广深二线嫩模联系方式汇总.xlsx', 1453341118, 'admin', 0),
(156, '0125_142044_0.html', '一男子微信约炮，聊天记录被曝光！结果惨不忍睹', 1453702847, 'admin', 0),
(157, '0125_154211_0.html', '苹果iPhone6放入啤酒杯中.....', 1453707732, 'admin', 0),
(158, '0126_161622_0.html', '他为女儿整整折腾了18个月，这老爹有让全世界', 1453796184, 'admin', 0),
(159, '0126_165859_0.html', '刘强东与马云相约1999：那年奶茶六岁；阿里', 1453798740, 'admin', 0),
(160, '0129_104834_0.html', '春晚彩排泄秘没人care，30万的评论全在呼', 1454035724, '吴咏珍', 0),
(161, '0129_110608_0.html', '天一冷手机就没电，怎么办？看这里！', 1454036771, '吴咏珍', 0),
(162, '0129_112218_0.html', '春节自驾回家、出行 ？你一定要知道这些！', 1454037740, '吴咏珍', 0),
(163, '0223_150053_0.html', '30岁以上的人，请记住这些最重要！', 1456210912, '关洁萍', 0),
(164, '0223_150213_0.html', '30岁以上的人，请记住这些最重要！', 1456210973, '关洁萍', 0),
(165, '0223_151103_0.html', '人生5别,句句是精华!', 1456211465, '关洁萍', 0),
(166, '0223_152007_0.html', '国父孙中山名言名句', 1456212009, '关洁萍', 0),
(167, '0224_091433_0.html', '全国各省床上战斗力排名，快来看看你排第几！', 1456276475, 'admin', 0),
(168, '0224_091741_0.html', '人生路上有三看：一看远、二看宽、三看淡。', 1456276663, 'admin', 0),
(169, '0224_091832_0.html', '一家不知一家难（多么现实的话，值得一看）', 1456276716, 'admin', 0),
(170, '0224_092945_0.html', '一次性交多长时间才算男人呢？', 1456277387, 'admin', 0),
(171, '0226_092608_0.html', '太神奇了！这种水果竟能“甜”死癌 细胞，医生', 1456449970, 'admin', 0),
(172, '0226_093213_0.html', '挑媳妇-高层次女人8大特征', 1456450345, 'admin', 0),
(173, '0226_093401_0.html', '漂亮的人体艺术！', 1456450442, 'admin', 0),
(174, '0227_115629_0.html', '普通人不知道的40条医学常识', 1456545392, 'admin', 0),
(175, '0227_115806_0.html', '一个人成熟的标志是什么？', 1456545492, 'admin', 0),
(176, '0227_120020_0.html', '当你快输时，想想这几句话', 1456545625, 'admin', 0),
(177, '0227_120139_0.html', '人生如戏全靠演技 明星假唱出糗合集', 1456545706, 'admin', 0),
(178, '0229_095335_0.html', '交际圈小找不到对象怎么办', 1456710817, 'admin', 0),
(179, '0229_095442_0.html', '王♂之车技！！谜一样的红短裤', 1456710891, 'admin', 0),
(180, '0229_100307_0.html', '史上最强村会玩！农民小伙大秀逆天特技', 1456711394, 'admin', 0),
(181, '0229_100553_0.html', '晚睡害死人，长期晚睡的危害一览表，今天起拒绝', 1456711563, 'admin', 0),
(182, '0301_092726_0.html', '实拍巴基斯坦男子站在超长摩托车上平稳骑行', 1456795647, 'admin', 0),
(183, '0301_092914_0.html', '印度阅兵表演摩托车杂耍 奇葩造型无力吐槽', 1456795755, 'admin', 0),
(184, '0301_093004_0.html', '妹子人体瓦斯恶作剧 感觉一股蜜汁酸爽袭来！', 1456795806, 'admin', 0),
(185, '0301_093309_0.html', '两鸭一鸡成网红 被绑后备箱乘车上高速', 1456795990, 'admin', 0),
(186, '0301_093528_0.html', '男子过年期间天天打麻将 麻将桌不堪重负自燃', 1456796129, 'admin', 0),
(187, '0301_093745_0.html', '1岁男童生殖器被狗咬伤 下身血肉模糊', 1456796267, 'admin', 0),
(188, '0301_093914_0.html', '美国龙卷风肆虐 警局内摄像头拍下自己被吹毁过', 1456796355, 'admin', 0),
(189, '0302_095105_0.html', '实拍孩子从车上掉出 糊涂家长浑然不觉径直开走', 1456883466, 'admin', 0),
(190, '0302_101255_0.html', '揭秘昔日网红现状 犀利哥流浪凤姐美国生活', 1456884800, 'admin', 0),
(191, '0302_103737_0.html', '为什么汪涵突然就火了？', 1456886266, '吴咏珍', 0),
(192, '0302_114937_0.html', '纽约街头最厉害的悬空术 惊呆中国华人', 1456890579, 'admin', 0),
(193, '0302_115021_0.html', '赶紧把家里这些换掉，别说我没告诉你！', 1456890623, '关洁萍', 0),
(194, '0302_115154_0.html', '让男人Happy VS 让女人Happy', 1456890715, '吴咏珍', 0),
(195, '0302_150236_0.html', '中国男女在朋友圈乱晒娃时，国外夫妻竟然在晒这', 1456902160, '关洁萍', 0),
(196, '0302_150437_0.html', '北上广深二线嫩模联系方式汇总.xlsx', 1456902279, '关洁萍', 0),
(197, '0302_151903_0.html', '神技！实拍女子五指花样点钞 声音好似打字机', 1456903145, '关洁萍', 0),
(198, '0302_152507_0.html', '太刺激啦我也想玩！', 1456903511, 'admin', 0),
(199, '0302_152515_0.html', '不忍直视的PS党', 1456903519, '吴咏珍', 0),
(200, '0302_153046_0.html', '你介意你男(女)朋友看AV吗？', 1456903856, 'admin', 0),
(201, '0302_153157_0.html', '你介意你男(女)朋友看AV吗？', 1456903960, 'admin', 0),
(202, '0302_153252_0.html', '你介意你男(女)朋友看AV吗？', 1456903996, 'admin', 0),
(203, '0302_153336_0.html', '你介意你男(女)朋友看AV吗？', 1456904030, 'admin', 0),
(204, '0302_160611_0.html', '妹子假胸竟不是第一？男性最讨厌的女体造假排行', 1456905973, '关洁萍', 0),
(205, '0303_112525_0.html', '你的前任到底有多极品？', 1456975582, '关洁萍', 0),
(206, '0303_152543_0.html', '当女人穿得多和穿得少的时候...', 1456989950, '关洁萍', 0),
(207, '0303_152804_0.html', '燃烧吧iPhone 6s！从30米高扔到水池', 1456990087, 'admin', 0),
(208, '0303_153043_0.html', '老公为什么比老婆先去世..看完震惊了！', 1456990246, '关洁萍', 0),
(209, '0303_153208_0.html', '实拍祭祀过程中屠杀水牛现场 场面惊心动魄', 1456990329, 'admin', 0),
(210, '0303_153918_0.html', '全国最牛气的名字，亏他爸妈想得出来！', 1456990762, '吴咏珍', 0),
(211, '0303_153937_0.html', '3微克就能致死！很多人都把这东西当饰品佩戴！', 1456990778, 'admin', 0),
(212, '0303_154411_0.html', '死在嘴上，病在腿上，看一遍多活10年', 1456991057, '吴咏珍', 0),
(228, '20160304/0304_163509_0.html', '下班后两小时，决定你将会成为怎样的人', 1457080509, '吖满', 0),
(229, '20160304/0304_163814_0.html', '下班后两小时，决定你将会成为怎样的人', 1457080694, '吖满', 0),
(230, '20160304/0304_164018_0.html', '美女开房男子为何反悔', 1457080818, '吖满', 0),
(231, '20160304/0304_165324_0.html', '你意想不到的重口味饮料', 1457081604, '吖满', 0),
(232, '20160304/0304_165456_0.html', '麻将是怎么来的？', 1457081696, '吖满', 0),
(233, '20160305/0305_104057_0.html', '性感美女与大黄狗', 1457145657, '吖满', 0),
(234, '20160305/0305_104743_0.html', '男士拍证件照身后突现露胸美女 受宠若惊不知所', 1457146063, '吖满', 0),
(235, '20160305/0305_105005_0.html', '疯狂情侣球场中圈做爱 监控多机位实拍全过程', 1457146205, '吖满', 0),
(236, '20160305/0305_114208_0.html', '马里奥制造版真人跑酷 关卡设置人物特效都给满', 1457149328, '吖满', 0),
(237, '20160305/0305_114649_0.html', '马里奥制造版真人跑酷 关卡设置人物特效都给满', 1457149609, '吖满', 0),
(238, '20160307/0307_092251_0.html', '监拍司机驾车高速撞进汉堡店 飞跃而入撞伤六人', 1457313771, '吖满', 0),
(239, '20160307/0307_092627_0.html', '监拍小偷高超技法 手拿镊子瞬间夹走手机', 1457313987, '吖满', 0),
(240, '20160307/0307_092632_0.html', '监拍小偷高超技法 手拿镊子瞬间夹走手机', 1457313992, '吖满', 0),
(241, '20160308/0308_152548_0.html', '二货带处女老婆看病，笑抽了！！', 1457421948, '吖满', 0),
(242, '20160308/0308_152958_0.html', 'CCTV1一场由于路人拍照引起的风波', 1457422198, '吖满', 0),
(243, '20160309/0309_113123_0.html', '实拍男子将熔盐倒入鱼缸 缸体瞬间炸裂', 1457494283, '吖满', 0),
(244, '20160309/0309_113230_0.html', '厕所玩手机的巨大风险', 1457494350, '吖满', 0),
(245, '20160309/0309_113453_0.html', '北京女子拍写真遭强奸 摄影师放音乐掩盖呼救', 1457494493, '吖满', 0),
(246, '20160310/0310_101033_0.html', '高三女生被3名男同学下春药后竟……', 1457575833, '吖满', 0),
(247, '20160310/0310_102356_0.html', '美女主播被偷拍裸体视频曝光 获赔3.6亿元', 1457576636, '吖满', 0),
(248, '20160310/0310_143447_0.html', '看看什么叫神级狡辩！女子倒车刮擦后车 连珠炮', 1457591687, '吖满', 0),
(249, '20160311/0311_144700_0.html', '女性高潮时候的生理揭秘,你不知道的事', 1457678820, '吖满', 0),
(250, '20160311/0311_145305_0.html', '1招提升性爱质量小技巧', 1457679185, '吖满', 0),
(251, '20160311/0311_145855_0.html', '长期看色情片儿你就废了', 1457679535, '吖满', 0),
(252, '20160313/0313_103500_0.html', '美女约车遇到骚扰怎么办？', 1457836500, 'admin', 0),
(253, '20160315/0315_153141_0.html', '神秘女子偷拍ISIS世界 妇女背AK47接孩', 1458027101, 'admin', 0),
(254, '20160315/0315_153844_0.html', '常吃10种食物，提高身体免疫力', 1458027524, 'admin', 0),
(255, '20160315/0315_164935_0.html', '男人性功能保健的黄金期！错过就没有了', 1458031775, '小吴', 0),
(256, '20160315/0315_165113_0.html', '男人有病全都“写”在脸上，大家来对照下吧！', 1458031873, '小吴', 0),
(257, '20160315/0315_165314_0.html', '暖心的话，一句就够了', 1458031994, '小吴', 0),
(258, '20160316/0316_123754_0.html', '手机忘记密码后如何解锁？这个技能必须懂！', 1458103074, 'admin', 0),
(259, '20160316/0316_144737_0.html', '一元纸币逐渐退出流通市场，真实原因是什么？', 1458110857, '小吴', 0),
(260, '20160317/0317_142252_0.html', '麻将江湖水太深 老千手段堪比《赌王》', 1458195772, 'admin', 0),
(261, '20160318/0318_154500_0.html', '透过微信看人，很准！', 1458287100, '小关', 0),
(262, '20160320/0320_165324_0.html', '为什么有人不回你消息却在发朋友圈？', 1458464004, 'admin', 0),
(263, '20160320/0320_165512_0.html', '三十立什么、四十惑什么、五十知什么？这是我看', 1458464112, 'admin', 0),
(264, '20160322/0322_091520_0.html', '女生打架千万别穿裙子', 1458609320, 'admin', 0),
(265, '20160322/0322_091618_0.html', '实拍广东韶关两艘船撞上大桥 船身倾斜被洪流吞', 1458609378, 'admin', 0),
(266, '20160322/0322_092603_0.html', '承德城管暴力执法殴打 “退伍老兵”', 1458609963, 'admin', 0),
(267, '20160322/0322_161648_0.html', ' 若曦终于嫁给四爷了，木兰花为证，这一定是最', 1458634608, '小吴', 0),
(268, '20160322/0322_164745_0.html', ' 买车就要买省心的 这些国产车就很好', 1458636465, '小吴', 0),
(269, '20160322/0322_164750_0.html', ' 买车就要买省心的 这些国产车就很好', 1458636470, '小吴', 0),
(270, '20160323/0323_093005_0.html', '为孩子的健康必转！数亿元疫苗未冷藏流入18省', 1458696605, 'admin', 0),
(271, '20160323/0323_093144_0.html', '成都奥迪变道撞上特警车 特警提枪围观', 1458696704, 'admin', 0),
(272, '20160323/0323_093800_0.html', '日本北海道为一个女孩保留的车站', 1458697080, 'admin', 0),
(273, '20160323/0323_094100_0.html', '为什么顶尖女性棋手那么少？', 1458697260, 'admin', 0),
(274, '20160323/0323_095352_0.html', '钟南山：最大的成功就是健康地活着', 1458698032, 'admin', 0),
(275, '20160324/0324_154947_0.html', '给中国家长们浇盆冷水：你被这三碗“鸡汤”骗过', 1458805787, '小关', 0),
(276, '20160324/0324_161404_0.html', '最新报道|山东公布涉失效疫苗案24省份及买卖', 1458807244, '小关', 0),
(277, '20160324/0324_171302_0.html', '性欲望强的女人面相，有你吗？', 1458810782, '小关', 0),
(278, '20160325/0325_145913_0.html', '埃塞俄比亚火山区域奇特地貌 宛如地外星球', 1458889153, 'admin', 0),
(279, '20160325/0325_150018_0.html', '如果患者问疫苗的问题，给他们看这篇就够了', 1458889218, 'admin', 0),
(280, '20160327/0327_161804_0.html', '刷爆美国朋友圈的21幅哲理漫画', 1459066684, '小关', 0),
(281, '20160327/0327_162602_0.html', '', 1459067162, '小关', 0),
(282, '20160327/0327_162817_0.html', '愚人节娱（zuo）乐（si）指南', 1459067297, '小关', 0),
(283, '20160328/0328_153246_0.html', '月薪多少才能撑起一个家？对照一下！', 1459150366, '小吴', 0),
(284, '20160329/0329_175130_0.html', '给1岁宝宝洗澡母子触电身亡，罪魁祸首你家也可', 1459245090, '小关', 0),
(285, '20160329/0329_175549_0.html', '全国各公司单身女设计师联系方式及胸围表...', 1459245349, '小关', 0),
(286, '20160330/0330_120207_0.html', '惨！厦门一挂车侧翻，边上小车被压成&quot', 1459310527, '小吴', 0),
(287, '20160331/0331_115700_0.html', '孕妇头部被卡护栏身亡监控曝光 事发时无人照看', 1459396620, 'xiaoguan', 0),
(288, '20160406/0406_101907_0.html', '监拍妙龄女在北京和颐酒店遇袭 强遭陌生男拖拽', 1459909147, 'admin', 0),
(289, '20160406/0406_101933_0.html', '监拍妙龄女在北京和颐酒店遇袭 强遭陌生男拖拽', 1459909173, 'admin', 0),
(290, '20160406/0406_102141_0.html', '监拍妙龄女在北京和颐酒店遇袭 强遭陌生男拖拽', 1459909301, 'admin', 0),
(291, '20160406/0406_102238_0.html', '监拍妙龄女在北京和颐酒店遇袭 强遭陌生男拖拽', 1459909358, 'admin', 0),
(292, '20160406/0406_102313_0.html', '监拍妙龄女在北京和颐酒店遇袭 强遭陌生男拖拽', 1459909393, 'admin', 0),
(293, '20160406/0406_134330_0.html', '百家乐', 1459921410, 'xiaoguan', 0),
(294, '20160406/0406_140225_0.html', '网上百家乐操作效果', 1459922545, 'xiaoguan', 0),
(295, '20160406/0406_141115_0.html', '最新AK麻将实力登场', 1459923075, 'xiaoguan', 0),
(296, '20160406/0406_145427_0.html', '​福利来啦', 1459925667, 'xiaoguan', 0),
(297, '20160406/0406_154119_0.html', 'AK', 1459928479, 'xiaoguan', 0),
(298, '20160408/0408_091051_0.html', '女子狗嘴下救女童 自己四肢被狗啃完', 1460077851, 'admin', 0),
(299, '20160408/0408_091510_0.html', '疯狂球迷全裸滑跪 握手致敬球员笑翻全场', 1460078110, 'admin', 0),
(300, '20160408/0408_091735_0.html', '夫妇登山发现五千年前干尸 保存完好面目清晰', 1460078255, 'admin', 0),
(301, '20160408/0408_163914_0.html', '通过麻将看人品，太准了！你中了几条？', 1460104754, 'xiaowu', 0),
(302, '20160408/0408_164721_0.html', ' 真心喜欢一个人是什么体验？', 1460105241, 'xiaowu', 0),
(303, '20160411/0411_103941_0.html', '监拍男子ATM机上做手脚 摄像头插卡器大“换', 1460342381, 'xiaogao', 0),
(304, '20160411/0411_144525_0.html', '单人语音光控', 1460357125, 'xinnuo', 0),
(305, '20160411/0411_151050_0.html', '最新麻将变点王', 1460358650, 'xinnuo', 0),
(306, '20160412/0412_102916_0.html', '看着都觉得疼！19岁西班牙斗牛仔被公牛“爆菊', 1460428156, 'xiaogao', 0),
(307, '20160412/0412_102927_0.html', '看着都觉得疼！19岁西班牙斗牛仔被公牛“爆菊', 1460428167, 'xiaogao', 0),
(308, '20160412/0412_103112_0.html', '退役军官教你如何一招制敌', 1460428272, 'xiaogao', 0),
(309, '20160412/0412_105803_0.html', '少女铁轨自拍被火车撞死 大批游客仍冒险拍照', 1460429883, 'xiaowu', 0),
(310, '20160412/0412_110029_0.html', '搞笑:冲动是魔鬼-男子输钱后遭遇', 1460430029, 'xiaogao', 0),
(311, '20160412/0412_110603_0.html', '搞笑:冲动是魔鬼-男子输钱后遭遇', 1460430363, 'xiaogao', 0),
(312, '20160412/0412_111038_0.html', '', 1460430638, 'xiaowu', 0),
(313, '20160412/0412_111109_0.html', '街头男子全裸躺地碰瓷 吓傻奔驰女司机', 1460430669, 'xiaowu', 0),
(314, '20160412/0412_112636_0.html', '中国足球定下目标：2030年国足跻身世界强队', 1460431596, 'xiaowu', 0),
(315, '20160412/0412_112908_0.html', '天价茶”部分涉案人员已被警方控制', 1460431748, 'xiaowu', 0),
(316, '20160412/0412_114811_0.html', '风水忌讳，这些房子的设计最“不聚财”，会让你', 1460432891, 'xiaowu', 0),
(317, '20160412/0412_130026_0.html', '当NBA遇上动漫 NCAA最残酷绝杀至北卡球', 1460437226, 'admin', 0),
(318, '20160414/0414_144320_0.html', '天衣无缝扫描镜头', 1460616200, 'xinnuo', 0),
(319, '20160414/0414_144906_0.html', 'CVK超强版分析仪', 1460616546, 'xinnuo', 0),
(320, '20160414/0414_144906_0.html', 'CVK超强版分析仪', 1460616546, 'xinnuo', 0),
(321, '20160414/0414_145337_0.html', '透视杯碗', 1460616817, 'xinnuo', 0),
(322, '20160414/0414_152310_0.html', '全程泪点！虐心大片重现科比传奇20年', 1460618590, 'admin', 0),
(323, '20160414/0414_152449_0.html', '同学聚会和班花疯狂做了两小时', 1460618689, 'admin', 0),
(324, '20160414/0414_153628_0.html', '单人语音光控麻将', 1460619388, 'xinnuo', 0),
(325, '20160414/0414_164205_0.html', '这七辆车被称为马路”杀手“，能躲多远躲多远吧', 1460623325, 'xiaoguan', 0),
(326, '20160414/0414_164513_0.html', '', 1460623513, 'xiaoguan', 0),
(327, '20160414/0414_164720_0.html', '发牌速度秒报', 1460623640, 'xiaoguan', 0),
(328, '20160415/0415_180017_0.html', '', 1460714417, 'xiaoguan', 0),
(329, '20160418/0418_103753_0.html', '【提醒】住酒店时看到这种镜子，请立刻逃离并报', 1460947073, 'xiaogao', 0),
(330, '20160418/0418_104721_0.html', '牛仔裤不穿了，千万不要丢掉！你可以这样…', 1460947641, 'xiaogao', 0),
(331, '20160418/0418_105936_0.html', '支付宝、银行卡被洗劫一空！只因做了这件事', 1460948376, 'xiaogao', 0),
(332, '20160418/0418_110627_0.html', '苹果6普通扑克分析仪', 1460948787, 'xinnuo', 0),
(333, '20160418/0418_111137_0.html', '一对一跟踪王', 1460949097, 'xinnuo', 0),
(334, '20160418/0418_111533_0.html', 'PK王分析仪', 1460949333, 'xinnuo', 0),
(335, '20160418/0418_112210_0.html', '最新光纤感应筒子,牌九', 1460949730, 'xiaowu', 0),
(336, '20160418/0418_172947_0.html', '5岁女孩血压高达170，竟是由于家长的这个行', 1460971787, 'xiaoguan', 0),
(337, '20160419/0419_135957_0.html', '手机被偷，一个短信让小偷跑步送回！（妙招）', 1461045597, 'xiaowu', 0),
(338, '20160419/0419_155623_0.html', '', 1461052583, 'xiaoguan', 0),
(339, '20160419/0419_160623_0.html', '找不出东西的变牌', 1461053183, 'xiaoguan', 0),
(340, '20160420/0420_114715_0.html', '', 1461124035, 'xiaoguan', 0),
(341, '20160420/0420_114743_0.html', '', 1461124063, 'xiaoguan', 0),
(342, '20160420/0420_120104_0.html', '', 1461124864, 'xiaoguan', 0),
(343, '20160420/0420_175422_0.html', '顺丰总裁肯为无名快递小哥出头的真正原因是……', 1461146062, 'admin', 0),
(344, '20160420/0420_175619_0.html', '【无奈】女子失恋后患上性瘾症，每天&quot', 1461146179, 'admin', 0),
(345, '20160420/0420_175837_0.html', '11岁女孩长期遭家暴身亡 同居女友素颜震惊男', 1461146317, 'admin', 0),
(346, '20160420/0420_180019_0.html', '', 1461146419, 'xiaoguan', 0),
(347, '20160420/0420_180247_0.html', '真苹果六', 1461146567, 'xiaoguan', 0),
(348, '20160420/0420_180428_0.html', '穆斯林女子在街头礼拜 祈祷，他们竟然....', 1461146668, 'xiaoguan', 0),
(349, '20160420/0420_180922_0.html', '宽容，原来那么美', 1461146962, 'xinnuo', 0),
(350, '20160421/0421_090919_0.html', '梁启超最小儿子逝世。看梁家一门三院士，九子皆', 1461200959, 'xinnuo', 0),
(351, '20160421/0421_092143_0.html', '甘肃超强龙卷风席卷小学运动场 1名学生被卷起', 1461201703, 'admin', 0),
(352, '20160421/0421_094437_0.html', '给我的自行车打个分 太拉风了', 1461203077, 'admin', 0),
(353, '20160422/0422_112646_0.html', '这个与马云睡过的女人，说了一段话，让无数女人', 1461295606, 'admin', 0),
(354, '20160422/0422_112833_0.html', '真假蜂蜜鉴别技巧你知道多少？', 1461295713, 'admin', 0),
(355, '20160422/0422_113036_0.html', '千万别买这样的鱼 买这种鱼等于把病带回家', 1461295836, 'admin', 0),
(356, '20160422/0422_114254_0.html', ' 如果有人欠你钱不还，就把这个放到朋友圈', 1461296574, 'xiaowu', 0),
(357, '20160422/0422_114517_0.html', '银行卡太可怕了，全國警惕！', 1461296717, 'admin', 0),
(358, '20160422/0422_161741_0.html', '金星：我一直是女人，只是在男人的世界卧底28', 1461313061, 'xiaoguan', 0),
(359, '20160422/0422_164415_0.html', '【提醒】4岁还不会叫爸爸！只因爸妈玩手机太多', 1461314655, 'xiaoguan', 0),
(360, '20160423/0423_173135_0.html', '你知道吗，你的头像会“出卖”你！', 1461403895, 'xiaowu', 0),
(361, '20160423/0423_174822_0.html', '【提醒】4岁还不会叫爸爸！只因爸妈玩手机太多', 1461404902, 'xiaoguan', 0),
(362, '20160424/0424_165512_0.html', '', 1461488112, 'xiaoguan', 0),
(363, '20160424/0424_165710_0.html', '', 1461488230, 'xiaoguan', 0),
(364, '20160425/0425_090940_0.html', '\\', 1461546580, 'xiaoguan', 0),
(365, '20160425/0425_091023_0.html', '阿拉丁普通扑克分析仪', 1461546623, 'xiaoguan', 0),
(366, '20160425/0425_100703_0.html', '最新光纤感应牌九、筒子', 1461550023, 'xiaoguan', 0),
(367, '20160426/0426_101039_0.html', '女科学家勇闯切尔诺贝利无人区 吃核辐射“毒苹', 1461636639, 'xiaogao', 0),
(368, '20160426/0426_112809_0.html', '女子银行卡3天异地盗刷32次。', 1461641289, 'xinnuo', 0),
(369, '20160426/0426_113821_0.html', '每年高考都有新鲜事 盘点那些奇葩事件', 1461641901, 'xinnuo', 0),
(370, '20160427/0427_170836_0.html', '警察枪走火吓坏路人', 1461748116, 'admin', 0),
(371, '20160427/0427_171319_0.html', '性感女交警真敬业 人体红绿灯维秩序！', 1461748399, 'admin', 0),
(372, '20160427/0427_171627_0.html', '美女街头吃黄瓜调戏路人 看完我真的醉倒了', 1461748587, 'admin', 0),
(373, '20160429/0429_114548_0.html', '监拍三车连环相撞 “幸运哥”跳车狂奔躲过一劫', 1461901548, 'admin', 0),
(374, '20160429/0429_114722_0.html', '三名和尚打架视频曝光 住持: 开除 宁缺毋滥', 1461901642, 'admin', 0),
(375, '20160501/0501_151248_0.html', '老婆说：你敢晚上不回来，我就开着大门睡觉，结', 1462086768, 'xinnuo', 0),
(376, '20160502/0502_102919_0.html', '', 1462156159, 'xiaoguan', 0),
(377, '20160502/0502_102945_0.html', '', 1462156185, 'xiaoguan', 0),
(378, '20160502/0502_112539_0.html', '实拍海口联防队员持棍暴力执法 被打女子不停哀', 1462159539, 'admin', 0),
(379, '20160503/0503_134055_0.html', '为什么谷歌不会发生“魏则西事件”？', 1462254055, 'admin', 0),
(380, '20160504/0504_103405_0.html', '魏则西事件追踪#多名患者及家属到武警二院要求', 1462329245, 'admin', 0),
(381, '20160505/0505_092131_0.html', '跑胡子专用', 1462411291, 'xiaoguan', 0),
(382, '20160505/0505_092309_0.html', '无缝变牌桌', 1462411389, 'xiaoguan', 0),
(383, '20160505/0505_145558_0.html', '你有多胖，多半在娘胎里就已决定了', 1462431358, 'xiaowu', 0),
(384, '20160505/0505_150201_0.html', '史上最尴尬的网恋', 1462431721, 'xiaowu', 0),
(385, '20160506/0506_100524_0.html', '普通筒子专业后台分析', 1462500324, 'xiaoguan', 0),
(386, '20160506/0506_115606_0.html', '一个死在百度和部队医院之手的年轻人', 1462506966, 'admin', 0),
(387, '20160507/0507_160756_0.html', '母亲是一份无薪水的事业，祝愿全天下母亲永远健', 1462608476, 'xiaoguan', 0),
(388, '20160507/0507_162538_0.html', '沙画:献给母亲节。太美太感动！', 1462609538, 'xiaoguan', 0),
(389, '20160507/0507_163241_0.html', '沙画:献给母亲节。太美太感动！', 1462609961, 'xiaoguan', 0),
(390, '20160507/0507_164415_0.html', '沙画:献给母亲节。太美太感动！', 1462610655, 'xiaoguan', 0),
(391, '20160508/0508_105330_0.html', '广东省人民医院被砍30多刀医生抢救无效去世', 1462676010, 'xiaowu', 0),
(392, '20160508/0508_111349_0.html', '广州退休医生被25年前病人砍30多刀离世 行', 1462677229, 'xinnuo', 0),
(393, '20160508/0508_112724_0.html', '广州一实习护士从医院阳台坠亡 下月才满20岁', 1462678044, 'xinnuo', 0),
(394, '20160508/0508_154415_0.html', '男子广州讨债被忽悠 丢了房子还进局子', 1462693455, 'xinnuo', 0),
(395, '20160509/0509_092129_0.html', '广州仔用20年从端盘子做到马云接班人', 1462756889, 'xinnuo', 0),
(396, '20160509/0509_093033_0.html', '女孩离奇怀孕肚中竟有3条长蛇', 1462757433, 'xinnuo', 0),
(397, '20160509/0509_102651_0.html', '遥控色子', 1462760811, 'xiaoguan', 0),
(398, '20160509/0509_110448_0.html', '最新麻将变牌', 1462763088, 'xiaoguan', 0),
(399, '20160509/0509_151916_0.html', '神手变牌器', 1462778356, 'xiaoguan', 0),
(400, '20160509/0509_151946_0.html', '神手高速变牌器', 1462778386, 'xiaoguan', 0),
(401, '20160510/0510_175518_0.html', '最新麻将变牌', 1462874118, 'xiaoguan', 0),
(402, '20160511/0511_175617_0.html', '考驾照是一种什么样的体验？', 1462960577, 'xiaowu', 0),
(403, '20160511/0511_180131_0.html', '李彦宏：百度离破产就真的只有30天！', 1462960891, 'xiaowu', 0),
(404, '20160512/0512_161520_0.html', '网上百家乐分析软件', 1463040920, 'xiaoguan', 0),
(405, '20160513/0513_093548_0.html', '百家乐网上投注专业分析软件', 1463103348, 'xiaoguan', 0),
(406, '20160513/0513_103916_0.html', '最新实战麻将变牌', 1463107156, 'xiaoguan', 0),
(407, '20160514/0514_134053_0.html', '', 1463204453, 'xiaowu', 0),
(408, '20160515/0515_104612_0.html', '', 1463280372, 'xiaoguan', 0),
(409, '20160515/0515_104756_0.html', '普通筒子', 1463280476, 'xiaoguan', 0),
(410, '20160515/0515_104950_0.html', '', 1463280590, 'xiaoguan', 0),
(411, '20160515/0515_142519_0.html', '', 1463293519, 'xiaoguan', 0),
(412, '20160518/0518_130434_0.html', ' 女孩被亲生父亲刀刺处决 一头母牛竟然出手相', 1463547874, 'admin', 0),
(413, '20160519/0519_173320_0.html', '男子为挽留女友躺地抱大腿 苦苦哀求把丝袜拽掉', 1463650400, 'admin', 0),
(414, '20160522/0522_144912_0.html', '最新版专用牌分析仪', 1463899752, 'xiaoguan', 0),
(415, '20160524/0524_094001_0.html', '身上变牌', 1464054001, 'xiaoguan', 0),
(416, '20160524/0524_094001_0.html', '身变牌', 1464054001, 'xiaoguan', 0),
(417, '20160524/0524_094055_0.html', '神手变牌', 1464054055, 'xiaoguan', 0),
(418, '20160528/0528_145613_0.html', '50个提升自己情商的社交技巧', 1464418573, 'xiaowu', 0),
(419, '20160528/0528_164544_0.html', '一女子非要去迪拜捡垃圾，家人拦都拦不住！结果', 1464425144, 'xiaowu', 0),
(420, '20160529/0529_180234_0.html', '妈妈请注意，这几种食物伤孩子大脑！扔掉它！', 1464516154, 'xiaoguan', 0),
(421, '20160530/0530_163402_0.html', '普通麻将变牌', 1464597242, 'xiaoguan', 0),
(422, '20160531/0531_165623_0.html', '普通筒子牌九远程分析', 1464684983, 'xiaoguan', 0),
(423, '20160531/0531_173704_0.html', '网上百家乐专业投注软件', 1464687424, 'xiaoguan', 0),
(424, '20160601/0601_135233_0.html', '', 1464760353, 'xiaoguan', 0),
(425, '20160601/0601_135302_0.html', '报牌准确率百分百', 1464760382, 'xiaoguan', 0),
(426, '20160601/0601_154356_0.html', '纯手法打牌杀庄拿最大牌', 1464767036, 'xiaoguan', 0),
(427, '20160601/0601_154540_0.html', '', 1464767140, 'xiaoguan', 0),
(428, '20160602/0602_100803_0.html', '神手变牌器', 1464833283, 'xiaoguan', 0),
(429, '20160602/0602_101610_0.html', '网上投注百家乐专业分析', 1464833770, 'xiaoguan', 0),
(430, '20160602/0602_150405_0.html', '简单直接操作', 1464851045, 'xiaoguan', 0),
(431, '20160602/0602_170223_0.html', '普通扑克变电王', 1464858143, 'admin', 0);

-- --------------------------------------------------------

--
-- 表的结构 `nx_weixinkefu`
--

CREATE TABLE IF NOT EXISTS `nx_weixinkefu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT 'null',
  `kefuname` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL,
  `siteurl` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '0',
  `weixin` varchar(20) NOT NULL,
  `weixinimg` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `nx_weixinkefu`
--

INSERT INTO `nx_weixinkefu` (`id`, `username`, `kefuname`, `phone`, `author`, `siteurl`, `qq`, `weixin`, `weixinimg`) VALUES
(1, 'xiaogao', '诚信网站', '18613179758', '广州诚信牌具', 'm.gznxpj.com', '1330327971', '1330327971', 'xiaogao.jpg'),
(2, 'dagao', '永胜网站', '13360001557', '广州永胜牌具', 'm.gzyspj.com', '2283243398', '2283243398', 'dagao.jpg'),
(3, 'xiaowu', '盈科网站', '18122378829', '广州盈科牌具', 'www.nuoxinsj1.com', '1732364856', '18122378829', 'xiaowu.jpg'),
(4, 'guangxin', '广信网站', '13268335258', '广州广信牌具', 'm.nxpjcj.com', '553965881', 'gxpaiju168', 'xiaoyu.jpg'),
(5, 'xiaoguan', '科讯网站', '13076792088', '广州科讯牌具', 'm.gzkxpj.com', '2095157992', '13076792088', 'xiaoguan.jpg'),
(6, 'xiaoyang', '永盈网站', '18124267558', '广州永盈牌具', 'm.gzylpj.com', '2444243586', '18124267558', 'xiaoqiu.jpg'),
(8, 'xinnuo', '信诺网站', '18127835272', '广州信诺牌具', 'www.gzknpj.com', '3217422376', 'GZKXPAIJU', 'xinnuo.jpg'),
(10, 'xiaomo', '众宜网站', '13268334858', '广州众宜牌具', 'zy.gzknpj.com', '2458828007', 'A168paiju', 'xiaomo.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `nx_weixintoken`
--

CREATE TABLE IF NOT EXISTS `nx_weixintoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(512) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `nx_weixintoken`
--

INSERT INTO `nx_weixintoken` (`id`, `token`, `time`) VALUES
(1, 'y71n21WVRjNMGQT73AYhy8SQtwqqdg1MMNPO-NMKMdbWNsd35ie1mD3x_gMAqAAGQSq5jzFg0a3hP2AgXWnnDFJN1AWsQJmrcTsRmiQRbSJ7bxd1TBb9cWgJj6sen98hXUTcAGABYX', '1470716962'),
(3, 'r1zjYwimfdosCf-XZk5R5Yam2fatPA2poz24fwfinVnYLTUpYb3914T7irrWcxHtKP3VBscYbtTaYmTvGMsAxXWSPZ74oQFlqfx7wXDlijfCCtzOnK-xl6we0u6y5TwCIRXhAIAOXD', '1470726525'),
(4, 'TULSoxkczlJkLV2bVrePd4_YykMBC8KGJbvwsMMv1syLTSTVIvpI51ac9yKLTtdXYilGsd22bFxQEvzp__cNNV3MsZKsIVwVd3-wYVrlyKHUK1lHEBG-Md15E2Qjm5-EXDBhAEATZX', '1470796829');

-- --------------------------------------------------------

--
-- 表的结构 `nx_words`
--

CREATE TABLE IF NOT EXISTS `nx_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `nx_words`
--

INSERT INTO `nx_words` (`id`, `username`, `title`) VALUES
(1, 'xiaomo', '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：132-6833-4858 莫小姐'),
(2, 'xiaomo', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；132-6833-4858.---莫小姐。'),
(3, 'xiaomo', '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。'),
(4, 'xiaomo', '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：132-6833-4858--莫小姐。'),
(5, 'xiaomo', '价格方面你不需要担心，我们是厂家直销的，同样的产品比市场价要低20%到30%的，具体详情你可以直接电话咨询：132-6833-4858--莫小姐。'),
(6, 'xiaomo', '您好：这里是广州专业娱乐用品有限公司，你有什么问题需要咨询的么？很高兴能为您解答！---莫小姐业务电话：132-6833-4858'),
(7, 'xiaomo', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；132-6833-4858.---莫小姐。'),
(8, 'xiaomo', '广州市白云区远景路842号 （东江大酒店旁边）--- 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：132-6833-4858；020-29830078.---莫小姐。'),
(9, 'xinnuo', '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：181-2426-7558 ---邱小姐。'),
(10, 'xinnuo', '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：181-2426-7558--邱小姐。'),
(11, 'xinnuo', '价格方面你不需要担心，我们是厂家直销的，同样的产品比市场价要低20%到30%的，具体详情你可以直接电话咨询：181-2426-7558--邱小姐。'),
(12, 'xinnuo', '您好：这里是广州诺信娱乐用品有限公司，你有什么问题需要咨询的么？很高兴能为您解答！---邱小姐业务电话：181-2426-7558'),
(13, 'xinnuo', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；181-2426-7558.---邱小姐。'),
(14, 'xinnuo', '广州市白云区远景路842号 （东江大酒店旁边） 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：181-2426-7558 ---邱小姐。'),
(15, 'xinnuo', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；181-2426-7558.---邱小姐。'),
(16, 'xinnuo', '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：181-2426-7558 邱小姐'),
(17, 'xiaogao', '如果您路途遥远不能前来本公司的话我们公司可以为您办理货到付款业务，详情电话咨询了解：186-1317-9758 ---高经理。'),
(18, 'xiaogao', '亲：您方便留下电话么，到时公司有活动或者新产品上市我可以提前通知您，您要是有什么需要也可以给我电话：186-1317-9758--高经理。'),
(19, 'xiaogao', '价格方面你不需要担心，我们是厂家直销的，同样的产品比市场价要低20%到30%的，具体详情你可以直接电话咨询：186-1317-9758--高经理。'),
(20, 'xiaogao', '您好：这里是广州诺信娱乐用品有限公司，你有什么问题需要咨询的么？很高兴能为您解答！---高经理业务电话：186-1317-9758'),
(21, 'xiaogao', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；186-1317-9758.---高经理。'),
(22, 'xiaogao', '广州市白云区远景路842号 （东江大酒店旁边） 广州火车站坐公交车840路、广州东站坐185、罗冲围客运站坐198、芳村客运站坐26路到“棠下①”站下过红绿灯斜对面即到、高铁南站可以坐地铁2号线“三元里站”C1出口、机场打的二十分钟到、市内“打的”广州市内任何地方打的来本公司可以凭票可报销车费。详情电话咨询了解：186-1317-9758 ---高经理。'),
(23, 'xiaogao', '亲：如果您对技术感兴趣的话，您可以来我们公司先看专业老师现场为您演示技术效果、满意再学，包教包会、不会不收学费。价格是根据您所学的技术来收费，价格有几百至几千不等、详情您可以电话咨询了解：020-29830078；186-1317-9758.---高经理。'),
(24, 'xiaogao', '您好：这里是广州专业娱乐牌具用品开发有限公司，您需要了解哪方面?很高兴为您解答 24小时咨询热线：186-1317-9758 高经理');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
