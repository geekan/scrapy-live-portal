-- MySQL dump 10.13  Distrib 5.6.21, for osx10.10 (x86_64)
--
-- Host: localhost    Database: live_portal
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `live_rooms`
--

DROP TABLE IF EXISTS `live_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_rooms` (
  `anchor` varchar(128) NOT NULL,
  `tag` varchar(32) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `audience_count` varchar(64) DEFAULT NULL,
  `platform` varchar(64) DEFAULT NULL,
  `platform_prefix_url` varchar(128) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `modification_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`anchor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_rooms`
--

LOCK TABLES `live_rooms` WRITE;
/*!40000 ALTER TABLE `live_rooms` DISABLE KEYS */;
INSERT INTO `live_rooms` VALUES ('7师傅','女团','清晨醒脑！T-ara根本停不下来！','/iseven','17000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Assassin_CHN','魔兽世界','为了艾泽拉斯！','/16769','4267','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('AZRAE11','CS:GO','极限之地ELBOOTvsHG','/393152','4150','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('BlueTV02','DOTA2','第二届上海DOTA2公开赛','/77659','132686','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('CHENG2S','户外直播','大师教你们做油焖大虾','/349196','5476','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('Cherry一阵雨','地下城与勇士','今天又点虚，左手乏力按不动键盘！','/284059','4519','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('Comm','炉石传说','痛定思痛,还是必须信仰圣光!!','/10011','4528','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('CSGO赛事专用直播间','CS:GO','D-Fire职业联赛 职业组循环赛','/601514','16000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('DK闻闻','战争游戏','直播福利！每1个小时抽1个金币礼包！','/373087','4773','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('dnf冷寨主','地下城与勇士','【冷寨主】我为女漫代言！嘿嘿！','/107053','105000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('DNF圣龙骑士','地下城与勇士','电竞周星驰','/221693','21018','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('dnf袁磊','地下城与勇士','国服匹配走起','/10888','10672','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('DNF跨7TT','地下城与勇士','信TT得荒古 带老板','/347810','3920','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('doterhhh','娱乐联萌','调戏外国人 搞起！','/341994','3674','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('DouyuTV冬瓜','魔兽世界','WoW魔兽影院WoW','/DongGua2016','14000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('DouyuTV华建','跑跑卡丁车','跑跑卡丁车华建 粉红灯下的眼神','/zy52099','15000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Douyu翔凯','我的世界','【翔凯】神奇宝贝！¯^¯ )','/34076','13000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Dream秀秀','金融','体验山村生活，支付宝红包发不停','/518340','272000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Ehome丶kaka','DOTA2','8300单排冲国服第一ING！~','/kashifu','68000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('estellecang','守望先锋','小苍：要来守望车队吗？～','/xiaocang','255000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('FC老弊','怀旧游戏','肥肠：逗比的一天又开始了','/60651','14000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('FunOuBa','英雄联盟','D1王者机油:日常直播下路教学','/20645','4276','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('Gordony','第九放映室','（提莫）爱情公寓 欢迎吐槽','/55955','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('HaNi九','全民星秀','【伪娘】小九没事，感谢大家关心！','/446748','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('hanmingming','鱼行天下','韩国美女主播MingMing♥','/Mingvely','61000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('hayabusa_7','DOTA2','nada: 长得帅的人才能进の直播间','/hayabusa','41000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('ice秋风','火影忍者手游','[秋风]火影忍者，今天的风有点喧嚣啊~','/iceqiufeng','36000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('IGL国际游戏联盟','CS:GO','统一冰红茶IGL春季赛CSGO选拔赛','/393180','9698','pandatv','http://www.panda.tv/','2016-06-19 18:27:23','2016-06-19 18:29:17'),('ImbaTV频道1','DOTA2','19点SL i联赛CDECY vs NB','/imba','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('ImbaTV频道3','炉石传说','正在直播 中国区决赛','/imbahs','9446','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('JamLee','守望先锋','玩什么都被削，好烦啊！','/99217','114686','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('KeyTV','DOTA2','南洋杯EH.L vs FTD.C','/430265','5870','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('kibbo','元气领域','夜行少女一只手速琦','/kibbo','10000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('LCSEU熊猫直播间','英雄联盟','英雄联盟LCS.EU夏季赛直播','/252618','15734','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('LGDimppp','英雄联盟','imppppp的直播间','/522387','88000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Lin_X','守望先锋','老叉：入我叉门，源氏翱翔╭∩╮','/416996','30549','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('ll小六ll','主机游戏','【六神】黎明杀机！人皇的幸福生活！开搞！','/534740','114000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('LOT29','体育竞技','香蕉球,图卢兹战斗民族追踪之旅','/10247','10339','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('LoveAcFun包子','英雄联盟','不识包子你玩劫？我的操作不需要标题~','/52','158000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('LPL熊猫TV官方直播','英雄联盟','lpl夏季赛 SS vs WE','/7000','1777428','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('MarsTV-1','DOTA2','DPL主舞台','/408548','13165','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('marstv2015','DOTA2','DPL主舞台 DAY 15','/465140','174000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Nearly1','英雄联盟','QYQX的直播间','/qyqx','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Nostalie','风暴英雄','No:坚定不移的渡劫','/Nostalie','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Paduma','英雄联盟','王者800点千珏 银河魔装机神','/376909','2076','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('pandaTV丶First love','主机游戏','【兔纸】 不暴力的女屠夫~','/10333','24308','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('PandaTv小铭','跑跑卡丁车','小铭~练车练车~','/341093','2380','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('Panda丶可樂','娱乐联萌','❤ 你像是为我着了魔❤','/416911','1940','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('PGL2016','CS:GO','PGL夏季赛CS:GO八强小组赛','/373162','30056','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('PGL传奇大师赛','CS:GO','PGL夏季赛CS:GO八强小组赛','/640774','10000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('prick丶sky','元气领域','串，父亲节，请爸吃馆子','/tanxiangzi','72000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Qbaby丶娜小咪','炉石传说','Nami：今天朕要翻传说的牌！','/131420','30000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('QQ游戏活动直播间','棋牌娱乐','QQ游戏斗地主线下直通赛','/533882','21000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('QQ游戏街机','格斗游戏','今晚7点02UM线上8进4','/qqarc','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('RG嘉宾','战争游戏','《坦克世界》用双手成就你们的梦想','/14827','2370','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('Riot丶LCS','英雄联盟','2016年LCS.EU夏季赛','/LCS','17000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Riot拳头','英雄联盟','LPL夏季赛SNAKEvsWE','/lpl','673000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('riot赛事二','英雄联盟','LPL夏季赛 SNAKEvsWE','/424559','1300000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('RocketBoy','守望先锋','「 孟阳 - RocketBoy 」','/100130','35600','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('RRRRRare','户外直播','美女心碎蛋裂','/418239','12287','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('s1134','第九放映室','【s1134】经典 科幻 动作 灾难！~','/s1134','8282','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('SanSheng','DOTA2','早起的虫儿.!','/16789','1890','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('scboy','星际争霸','SPL2016第三赛季直播','/scboy','130000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('solofeng解说丶','英雄联盟','SoloFeng 大师252点冲分','/lolff','99000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('SuperLiar狼人杀','娱乐联萌','SuperLiar每周六晚8点开杀','/430909','15850','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('UnaDirezione','第九放映室','【林正英】 僵尸 女鬼 弹幕 护体','/LZY520','9138','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('VG丶Easyhoon','英雄联盟','VG.Easyhoon RANK','/547739','16000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('WEYouLove','炉石传说','WE优容爱-这是硬汉电影，屠戮一切！','/10017','8963','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('yangyueclot','元气领域','网瘾美少女的世界美食之旅','/yuezai','3379','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('YaphetS丶666','DOTA2','Pis直播间:黑暗神殿。','/pis','149000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('yg可见影子','英雄联盟','化石打野，单轮车起飞！','/257223','9614','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('YJblue','皇室战争','【YJ】胖球全程屠杀世界榜，疯狂送房管','/YJYJYJ','16000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('YM贪睡之萨满','炉石传说','牛不养了，我们去养马了！','/600878','178000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('zeewong','企鹅直播','【老吉直播】新浪3X3篮球黄金联赛南京站','/xiaoxiaoxian','78','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('Zhou陈尧','DOTA2','休息好了，开战！','/99999','7876','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('ZSMJ727974758','DOTA2','ZSMJ直播间 对黑','/ZSMJ','26000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('_子阳','DOTA2','子阳~ 训练 跟书神他们打！。','/292334','10365','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('_肖璐','DOTA2','打到比赛开始~','/359075','3789','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('一Eiji一','地下城与勇士','【Eiji】：8周年了啊！','/eiji','36000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('一夜好梦','英雄联盟','巫妖王 青铜最强大嘴','/409130','1965','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('一脸想要的样子','户外直播','敞篷老司机 我在人民广场吃着炸机','/213329','39764','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('东二梦想','地下城与勇士','担架队们！今天有活','/396572','13306','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('两仪未娜丶','炉石传说','21带你溜达上海迪斯尼','/214786','35000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('丨Abang阿帮丨','格斗游戏','先玩KOF13!晚点锦标赛抽签分组!','/232794','3705','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('中二晚期普朗东','英雄联盟','东东：一只来自联盟的匪头子','/10086','72077','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('中憬私人订制现场雕刻','巧手工艺','心中无码自然不卡','/569349','949','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('临沂音乐广播','元气领域','临沂音乐广播FM104.5','/614741','36000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('主播少囧','主机游戏','黎明杀机:誓死要当人皇 直播上分','/404055','47238','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('主播阿郎','元气领域','《校园行南医》南京站','/320155','159000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('主播飞飞','穿越火线','个竞刀不上一百二不下线了。','/315124','4308','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('九天_童话','剑网3','【童话】霸道鲸鱼狗丐帮！','/374994','3952','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('九天_黑人','剑网3','【黑洲非人】我就想赢一把切磋！','/427085','2239','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('九艺然然','全民星秀','父亲节，一只穿云箭姑爷女婿来拜见。','/459279','8470','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('乡嘎嘎儿的男人','元气领域','湘西小胖，祝所有兄弟姐妹父亲节日快乐','/519996','14000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('二进制丨冷血','体育竞技','最悲惨的事：当抢7遇上考试~','/308172','2646','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('伟大的小杰丶','第九放映室','【小杰】香港经典电影！','/288073','8823','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('你们的LEE哥哥','地下城与勇士','开始拯救魔枪计划！暗帝3拖17！','/341319','22656','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('侯哥户外','户外直播','什么恶劣天气也阻挡不了我们下河捕鱼捕','/409021','6386','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('傲天皇妃sama','第九放映室','装逼嘴炮神剧-李狗嗨vs大和田','/Princess','44000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('光头主播','户外直播','直播◆FIBA3X3巡回赛成都站决赛','/377328','3237','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('全能王拉拉拉拉拉拉哥','穿越火线','全能王拉哥：激情嗨嗨嗨~','/lage','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('冰蓝飞狐','炉石传说','奇迹猎肆虐天梯，超神般的杀戮','/10025','13881','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('凉风有兴','英雄联盟','斗鱼最强亚索教学，教你EQ闪杀人~','/68172','147000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('凛子凛子酱','二次元','凛子凛子酱的直播间','/662017','2471','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('刘尔逊','暗黑破坏神3','今天总计1000+地狱火，看到你爽','/200598','2769','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('刘杀鸡','英雄联盟','各位当爸爸的父亲节快乐','/66666','179645','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('刘老根赵四','英雄联盟','狗儿：给二姐打定级赛','/31973','2715','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('刘青是二龙','炉石传说','刘二龙 前来拜访！今天送10个328元！','/Liu2long','34000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('功夫鱼','主机游戏','【功夫鱼】方舟起源咸鱼村快乐生活','/31875','2973','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('励志成为狗','企鹅直播','欧洲杯-土耳其巡礼','/328173','11','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('十三月儿','户外直播','别低头假发会掉','/60006','2078','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('单车比DC讲道理','DOTA2','DBOY-DPL燃烧军团','/dcboys','205000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('可无聊','企鹅直播','新浪3v3全国黄金联赛 天津站','/533580','398','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('台灣肌霸哥','娱乐联萌','肌哥健身-大重量腿部','/10371','5169','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('君克解说','英雄联盟','君克锐雯：白金段疯狂1V5掌控雷电~','/10953','137581','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('周龍丶','英雄联盟','国服第一时光，熟练4万4，不服来伤害','/85013','9759','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('咸鱼超人小D','主机游戏','Dの盛宴（心脏病慎入！）','/216315','23000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('哦棒','主机游戏','网瘾少年大战变态狂魔','/11797','2134','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('喜欢就坚持吧','英雄联盟','EDG胜SKT大魔王夺冠~','/xh520','13000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('囚徒','炉石传说','蓝白卡组上传说~','/10091','48275','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('国米德隆','企鹅直播','两个大叔的欧洲杯','/nerazzurri','10','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('坑丶young','青青校园','毕业季：深大','/556512','939','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('城市逃离计划','元气领域','上海田子坊转转哟','/chengshi','14000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('大奶强','英雄联盟','AD无尽寡妇无限偷人','/10009','81473','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('大连猴哥','户外直播','熊猫怼海第一人，怼大海的领导者','/388249','3272','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('妹子杯官方直播间','英雄联盟','京东游戏妹子杯全明星周末 精彩回放','/21089','70286','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('娜娜_Sweet','娱乐联萌','娜是一个小逗比~~','/868686','2076','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('子檬','娱乐联萌','两天没见。我来了~','/370239','2030','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('安妮大魔王','英雄联盟','Am安妮！一区回大师，加油。','/103713','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('安晓Lilynn','鱼教鱼乐','菜菜日语，周末就是懒懒洋洋','/ancaicai','1657','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('完美OBAndy','英雄联盟','完美OB：RNG组排韩服','/XYW','25000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('宝强233','我的世界','嗓子疼，最近要短小了','/344168','5537','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('寅子','主机游戏','斗鱼NO.1声优-我是屠夫小帮手','/yinzitv','263000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('小QIMBA','王者荣耀','大Q神：无限欢乐的直播间^_^','/134000','8966','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('小儿郎丶丶','梦幻西游手游','梦幻西游手游！~','/221869','48000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('小包Ceryo','魔兽争霸','imba小包包老湿外出听课同学自羞','/557748','214','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('小甜猩','青青校园','寝室小胖妹儿的日常','/beeing','1878','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('小绵羊Summer','怀旧经典','毁童年：风云记录已诞生！','/281574','1821','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('小菜粥','炉石传说','天梯冲排名','/353301','3076','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('小贼贼','娱乐联萌','只想你来听听歌','/148932','9817','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('小飞Lcr ','DOTA2','Fish小飞 找下手感七点比赛','/356213','20187','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('小马Oo','英雄联盟','小马.国服前十.小号日常冲分','/441868','120000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('少帮主','炉石传说','下午魔兽234，晚上水友赛加魔兽战场','/10455','45862','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('帅气老杨','元气领域','星期一下午2点吃生化武器鲱鱼罐头','/65937','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('帅花丶','无尽战区','花花：卧槽！下暴雨了。','/377315','1889','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('开心果111','英雄联盟','电1钻石 悲哀的安妮','/150245','2681','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('彡彡九户外','元气领域','极限生存第五天 美杜莎女王现身','/485503','188000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('我就是无尽','元气领域','无尽：深夜放毒《吃吃吃吃吃》','/340032','45000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('我想叫花花','时尚制造','我今天要变性！！！','/635071','3340','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('我是小艾米','鱼秀','新人 十八线的小小小主播','/558246','2204','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('我的歌声里啊','足球竞技','合卡答疑推荐球员~EP180起','/79101','8183','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('户外小强','户外直播','抽干河摸鱼！求大巨物！','/26669','5157','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('所有人都在装','第九放映室','【周星驰】一代喜剧之王 24h星爷','/OOOOOOOOOOO','9646','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('抽象工作室upupup','英雄联盟','电竞研究生劳根','/6324','50000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('抽风Crazy','主机游戏','抽风:层层恐惧是个恐怖游戏？','/414362','8419','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('斗鱼丶华仔','英雄联盟','OB青铜5：场均100人头教你用闪现','/AZW','16000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('新晋女刺WildCat','娱乐联萌','一只野生妹抖求疼爱=w=','/367390','2161','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('无敌海绵哥哥','英雄联盟','版本最强挖掘机野区毒龙钻','/381416','7999','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('无风启航全凭浪','英雄联盟','【国国】穿甲流女枪上分ing....','/421552','4869','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('星鱼传说娜爷','全民星秀','斗鱼娜娜 灵魂铁嗓。','/656346','17000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('星鱼传说模特大王','元气领域','斗鱼大王，你们快乐之所以我快乐。','/631322','22000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('晨小柏','户外直播','6：30播户外','/283715','14179','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('暴雪游戏频道','风暴英雄','风暴夏季世界锦标赛（直播）','/97513','24047','pandatv','http://www.panda.tv/','2016-06-19 18:27:23','2016-06-19 18:29:17'),('暴雪脑残粉QQQ','守望先锋','QQQ，先单排 后开黑','/3q3q','199000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('木叶v剑心','地下城与勇士','魔枪有巨魂了 迪迦基柔 肝肝肝','/341317','5930','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('李雨潼','英雄联盟','从此不再做猥琐的脆皮❤','/liyutong','18000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('森璐','娱乐联萌','我喜欢温暖 而你恰好是阳光','/359927','2596','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('椰子zon','主机游戏','数码宝贝数码宝贝数码宝贝数码宝贝数码','/197439','2312','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('沐沐sss','娱乐联萌','两耳不闻窗外事，一心只唱我的歌~','/374309','3066','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('泛白白帝','穿越火线','泛白：我玩枪王能踢人你们慌不慌！！!','/340917','3500','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('洋气黄','户外直播','911保养一下','/403249','41504','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('流芳儿','娱乐联萌','祝；天下做爸爸的，父亲节快乐。','/415614','7418','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('浪味还是仙','元气领域','婧婧带你环游湖北之-宜昌站！','/472680','3162','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('涵涵丶丶','英雄联盟','【涵涵】火影女瞎亚索手速惊人秀翻全场','/90921','71136','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('炉石丶啦啦啦','炉石传说','啦啦啦：冲榜or素材？！','/lslalala','143000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('炉石传说频道','炉石传说','中美大学生对抗赛-中国小组赛','/260872','275000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('然心然心丶','英雄联盟','炫酷颜值流凤凰，无敌是多么寂寞呀','/361753','2208','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊丶猫TV小新','英雄联盟','新号冲分百分百胜率！','/27337','140913','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊猫Tv丶狮子汪','英雄联盟','狮子汪：不知道什么标题','/88911','90587','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊猫tv包拯','英雄联盟','上饶第一光头 流浪法师的屠杀','/325708','2132','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊猫TV音乐现场','音乐专区','熊猫TV往期音乐现场回放','/5000','2625','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊猫娱乐直播频道','娱乐联萌','《星赛歌》天生歌姬—海选','/4000','2124','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('熊猫崽儿','户外直播','飞翔的哈士奇','/392132','19938','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('爽口大青椒丶','女团','【24h】韩国超清人气女团现场精选','/daqingjiao','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('狗哥直播','元气领域','父亲节女仆咖啡厅','/601774','113000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('猴哥户外','户外直播','父亲节和老爸摸鱼，父子档打野','/317675','10533','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('玩家国度ROG3号房间','数码','玩家国度ROG3号房间的直播间','/622787','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('琳宝大魔王OvO','英雄联盟','琳宝宝：不送人头都不好意思玩lol','/365774','4298','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('瓦莉拉的小伙伴','炉石传说','瓦莉拉：3级暗牧也要上传说妹纸了！','/10027','197377','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('盛世朝歌','主机游戏','方舟胖魔人','/204749','2865','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('社会你杜哥','地下城与勇士','带你装b带你灰，强化依然很给力！','/152977','3750','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('科比pp','企鹅直播','竞彩猫','/442078','13','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('竹内條條','主机游戏','迷你四驱车2016亚洲杯香港总决赛','/hinako','154000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('米耶若一','企鹅直播','国内小朋友们的橄榄球联赛','/582061','153','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('红唇','主机游戏','黎明杀机~','/10369','2710','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('纳苏坡','企鹅直播','2016羽毛球尤伯杯高清重播','/ymq','6','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('终究会释然','企鹅直播','2016成都3X3国际对抗赛','/223448','468','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('老戴在此','主机游戏','老戴 黎明杀机','/laodaizaici','39000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('肉肉儿儿','娱乐联萌','来我直播间的 我都祝你们父亲节快乐','/398636','3965','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('肥皂侠','炉石传说','信仰爆牌贼上传说','/85513','9813','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('胜哥002','地下城与勇士','胜哥:周末毕业秀，第五期！','/414818','217000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('苏C皮蛋','户外直播','全国首台法拉利488天蝎排气装车','/408604','86907','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('茶稚丝力','主机游戏','老茶：黎明杀机汉化会封号慎用','/11299','7581','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('荣耀手机','数码','【送手机】荣耀5C人机耐力大PK','/658031','49000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('萌小八C','穿越火线','无限子弹开启中 ：)','/393190','3632','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('萌面酥','英雄联盟','酥酥：电竞痴汉千千万。。。。','/266055','142000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('蓝若恬','主机游戏','【蓝胖胖】这个天忒闷热了','/11855','2086','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('蛋塔秀Infi000','魔兽争霸','灵魂解说+录制视频测试','/TH000','27000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('蠢萌教主Bulldog','元气领域','蠢萌の英国斗牛犬-给猪洗澡','/Bulldogs','10000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('衣锦夜行','炉石传说','衣锦夜行：不服不登顶不罢休','/youyichuiyi','81000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('解说大炮','拳皇97','VS胖龙！开枪！替天行道！','/336200','3564','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('誓约中二约','英雄联盟','誓约 为什么我每盘都先幽梦？','/dushuren','286000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('词穷丶3','企鹅直播','词穷篮球：NBA经典比赛球星纪录片','/508053','224','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('谜之声被抢注了','主机游戏','谜之空间','/426346','12045','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('豆豆是逗逗','娱乐联萌','生日快乐','/298501','2778','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('赤炎之瞳','娱乐联萌','赤炎之瞳的直播间','/214271','16437','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('走黯','主机游戏','[ZA]-鬼玩多了晚上做噩梦！','/zouan','9590','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('超神的小海','地下城与勇士','海导：Day 4. 看赵云满级','/94313','10000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('邪教发哥','地下城与勇士','★发哥★：五百年前的老公','/fg888','11000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('酷酷炫炫','第九放映室','【星爷】周星驰 一生所爱！24H','/kkkk','16000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('锁骨上的伤痕','守望先锋','座山雕的锁骨直播间','/429368','1905','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('阿夏夏','DOTA2','Axx，大魔王变淑女赢只是小case','/45449','2780','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('阿祖君王命','穿越火线','主播18岁、18cm','/313231','8986','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('陈吉强','时尚制造','主播嗓子报废了，徒弟稀饭专场！','/643037','2043','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('陈阳洋','我的世界','咸鱼过家家','/37401','17008','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('隐者丶','我的世界','极度沉迷守望 五点半换我的世界','/27403','6404','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('雙一','娱乐联萌','炸耳表妹','/24935','13707','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('零刺青','怀旧游戏','小华:这游戏真好玩','/ciqing','9536','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('雷疯小叔','棋牌娱乐','雷疯讲棋：体验一个象棋疯子给你带来的乐趣','/291514','12000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('风中追风Fzz1','英雄联盟','毛家村灵魂歌手！~','/fzz1','233000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('飞不起来的五花肉','英雄联盟','熊猫第一女 烬 胜率80%','/299275','1999','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('饺子炮泡','娱乐联萌','饺子猴猴：好久不见嘤嘤嘤嘤','/380332','1907','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('马哲MZiN','穿越火线','嫂子带我征战黑区 ~.~','/315107','9612','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('马马马特','DOTA2','打会枪 晚上看比赛','/300729','2454','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL),('魅力生活i','元气领域','魅力：继续抓鼠第二集！','/468241','70000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('魔音糯米','主机游戏','【糯米】老屠夫变人皇 老夫又回来啦！','/61372','46000','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('麻辣基米线','守望先锋','【麻辣基】真男人从不回头看爆头，米哥躺赢','/598775','1341','douyu','http://www.douyu.com/','2016-06-19 18:27:23',NULL),('鼠大王','DOTA2','先单排几盘，晚上开黑','/11110','40164','pandatv','http://www.panda.tv/','2016-06-19 18:29:17',NULL);
/*!40000 ALTER TABLE `live_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-19 18:30:13