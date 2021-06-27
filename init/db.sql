create database apachelogs;
use apachelogs;
DROP TABLE IF EXISTS `scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoreboard` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `vhost` varchar(50) NOT NULL DEFAULT '',
  `bytes_sent` int(14) NOT NULL DEFAULT '0',
  `count_hosts` int(12) NOT NULL DEFAULT '0',
  `count_visits` int(12) NOT NULL DEFAULT '0',
  `count_status_200` int(12) NOT NULL DEFAULT '0',
  `count_status_404` int(12) NOT NULL DEFAULT '0',
  `count_impressions` int(18) NOT NULL DEFAULT '0',
  `last_run` int(14) NOT NULL DEFAULT '0',
  `month` int(4) NOT NULL DEFAULT '0',
  `year` int(4) NOT NULL DEFAULT '0',
  `domain` varchar(50) NOT NULL DEFAULT '',
  `bytes_receive` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vhost` (`vhost`,`month`,`year`,`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `web_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_access_log` (
  `id` char(50) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `bytes_sent` int(10) unsigned DEFAULT NULL,
  `child_pid` smallint(5) unsigned DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  `machine_id` varchar(25) DEFAULT NULL,
  `request_file` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `remote_host` varchar(50) DEFAULT NULL,
  `remote_logname` varchar(50) DEFAULT NULL,
  `remote_user` varchar(50) DEFAULT NULL,
  `request_duration` smallint(5) unsigned DEFAULT NULL,
  `request_line` varchar(255) DEFAULT NULL,
  `request_method` varchar(10) DEFAULT NULL,
  `request_protocol` varchar(10) DEFAULT NULL,
  `request_time` char(28) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `request_args` varchar(255) DEFAULT NULL,
  `server_port` smallint(5) unsigned DEFAULT NULL,
  `ssl_cipher` varchar(25) DEFAULT NULL,
  `ssl_keysize` smallint(5) unsigned DEFAULT NULL,
  `ssl_maxkeysize` smallint(5) unsigned DEFAULT NULL,
  `status` smallint(5) unsigned DEFAULT NULL,
  `time_stamp` int(10) unsigned DEFAULT NULL,
  `virtual_host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;