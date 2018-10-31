-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ttms1.0
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `play`
--

DROP TABLE IF EXISTS `play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play` (
  `pid` varchar(32) NOT NULL,
  `showName` varchar(45) NOT NULL,
  `poster` longtext NOT NULL,
  `score` varchar(10) DEFAULT NULL,
  `director` varchar(20) NOT NULL,
  `starring` longtext,
  `plot` varchar(45) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `introduction` longtext,
  `picture` longtext,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play`
--

LOCK TABLES `play` WRITE;
/*!40000 ALTER TABLE `play` DISABLE KEYS */;
INSERT INTO `play` VALUES ('1216222','因果启示录','https://img.alicdn.com/bao/uploaded/i2/TB1KY5aogmTBuNjy1XbXXaMrVXa_.jpg_160x240.jpg','','王陆涛','王姬,庹宗华,英壮,常索妮,傅冲,牛犇','剧情','中国大陆','汉语普通话','90分钟','剧情介绍：多个看似毫无关联的社会各阶层众生，卷在一个又一个负能量传递的漩涡里而浑然不知，从身边小事的损人利己，到相互间利欲熏心的你死我活，故事最终要警醒的是那些处在道德边缘上的人们。','https://img.alicdn.com/bao/uploaded/i2/TB1VQ1KokOWBuNjSsppXXXPgpXa_.jpg_160x160.jpg',0,25,'2018-01-08'),('1235272','时间监狱','https://img.alicdn.com/bao/uploaded/4/TB1IH_UkqmWBuNjy1XaXXXCbXXa_.jpg_160x240.jpg','','丁文','刘默飞,白茹','爱情,悬疑,动作','中国大陆','汉语普通话','98','剧情介绍：老家要拆迁了，张居然来拿走最后的一点东西，却发现意外失踪的父亲曾经戴过的一块手表。伤心的张居然戴上这块手表却被突然出现的日本人绑架，一同被绑架的还有好友吉吉和陆一一。日本人逼问张居然“时间监狱”在哪里，张居然无意间开启手表的特殊功能，来到了神秘的空间“时间监狱”。就这样张居然回到了1988年，摇身一变成为了自己的父亲—张姚，并看到了自己素未谋面的亲生母亲—马丹。 于是在一次次的穿越轮回中，张居然知道了一段尘封在历史的神奇故事和上一辈之间的爱恨情仇。在穿越中，神秘空间“时间监狱”一次次的崩塌，对张居然的威胁越来越大，最终，张居然要在现实和过去中做出选择……','https://img.alicdn.com/bao/uploaded/3/TB1FW_xkuOSBuNjy0FdXXbDnVXa_.jpg_160x160.jpg',0,46,'2018-01-15'),('1241588','泄密者','https://img.alicdn.com/bao/uploaded/i4/TB10klVvA9WBuNjSspeXXaz5VXa_.jpg_160x240.jpg','','邱礼涛','吴镇宇,张智霖,佘诗曼,周秀娜,郑则仕,刘浩龙,张继聪,李璨琛','动作,悬疑,犯罪','中国香港','粤语','102','剧情介绍：马来西亚发生高危的变种传染病，医生大胆给自愿病人使用未经官方测试认可的新药。当地一新闻记者突然堕楼身亡，接连药业公司AMANAH的创办人兼董事长的儿子离奇自杀后，其妻急赴香港，警长李永勤（张智霖 饰）与香港警察王大伟（吴镇宇 饰）合作追查。 王大伟收到一条视频，里面自称「泄密者」的神秘组织透露了药业界的黑幕，更指控AMANAH藉着瘟疫大发灾难财。 「泄密者」邀约香港日报记者阮嘉岚（佘诗曼 饰）会面。李永勤和王大伟追踪到阮嘉岚与洩密者的见面地点⋯⋯','https://img.alicdn.com/bao/uploaded/i2/TB17GTvsFuWBuNjSszbXXcS7FXa_.jpg_160x160.jpg',0,47,'2018-01-15'),('1249501','盯上小偷的贼','https://img.alicdn.com/bao/uploaded/i4/TB1396PqxGYBuNjy0FnXXX5lpXa_.jpg_160x240.jpg','','成宇兴','孙海洋,彭波,刚毅','喜剧','中国大陆','汉语普通话','92','剧情介绍：郑耀坤以蒙蔽手段与文物贩朱老五非法交易被警察围捕，逃窜时文物意外落入设计师李俊之手。从此展开了郑耀坤找李俊，朱老五找郑耀坤，李俊协助警察办案的螳螂捕蝉黄雀在后的疯狂游戏。','https://img.alicdn.com/bao/uploaded/i2/TB1qYewqxSYBuNjSsphXXbGvVXa_.jpg_160x160.jpg',0,37,'2018-01-08'),('1271442','家','https://img.alicdn.com/bao/uploaded/i3/TB1lPVXgnXYBeNkHFrdXXciuVXa_.jpg_160x240.jpg','','刘红梅','何弘宇,李梦珂,田依凡,李京旭','爱情,剧情,音乐','中国大陆','汉语普通话','99','剧情介绍：影片根据巴金的小说《家》改编，它描写了五四时期四川成都一个封建大家庭的罪恶及腐朽，通过觉新、觉慧、觉民三位主人公的不同命运，控诉了封建制度对生命的摧残，歌颂青年一代的反封建斗争及民主主义的觉醒。','https://img.alicdn.com/bao/uploaded/i2/TB1oWz0nbSYBuNjSspfXXcZCpXa_.jpg_160x160.jpg',0,48,'2018-01-15'),('1273154','潜艇总动员：海底两万里','https://img.alicdn.com/bao/uploaded/i3/TB1BkNfu21TBuNjy0FjXXajyXXa_.jpg_160x240.jpg','8.1','申宇','范楚绒,洪海天,李晔,谭满堂','冒险,科幻,成长','中国大陆','汉语普通话','75分钟','剧情介绍：世界各地接连出现神秘海怪毁坏商船事件，引发恐慌，传言海洋面临 灾难。潜艇阿力决定集结伙伴追踪“海怪”，却发现“海怪”是 一 艘 以 “环保”为借口来开展邪恶计划的科技潜艇。为了解开这些 谜团，阿力和朋友们利用所学知识，开始了海底两万里的漫游探险。','https://img.alicdn.com/bao/uploaded/i3/TB13eDnoruWBuNjSszgXXb8jVXa_.jpg_160x160.jpg',1,8,'2018-01-01'),('1275062','魔镜奇缘2','https://img.alicdn.com/bao/uploaded/i1/TB16PMlrxGYBuNjy0FnXXX5lpXa_.jpg_160x240.jpg','7.3','陈设','','动画,冒险,家庭','中国大陆','汉语普通话','77分钟','剧情介绍：影片改编自经典童话故事，很久以前，在戈加海的深处，生长着一颗友谊树，友谊树每隔千年才会结出一颗果实。小美人鱼爱丽儿公主维护着戈加海并且拥有整个海洋无穷的宝藏，却因通往友谊树的路途艰难万分而没能得到一颗友谊果......美丽的小女孩塞拉住在戈加海海边，为了获得白雪公主的一滴血来医治重病的母亲，途中塞拉通过一面神奇的魔镜，来到奇幻神秘的海底世界，因此认识了小美人鱼爱丽儿公主，并和寻找时光宝石的辛西娅成为了好朋友，在小人鱼精灵卡珊和小海虾凯莉的陪伴下，展开了一段寻找友谊果和时光宝石的海底奇幻的冒险旅程。','https://img.alicdn.com/bao/uploaded/i3/TB1L..ScYGYBuNjy0FoXXciBFXa_.jpg_160x160.jpg',1,14,'2018-01-01'),('1275343','亲爱的，我要和别人结婚了','https://img.alicdn.com/bao/uploaded/i1/TB1Osshh_XYBeNkHFrdXXciuVXa_.jpg_160x240.jpg','8.0','覃杰','保剑锋,戚砚笛,徐一娢,曹祎诺','爱情,灾难','中国大陆','汉语普通话','92分钟','剧情介绍：电影《亲爱的，我要和别人结婚了》是一个真实发生在地震中的感天动地的爱情故事。它的重点不是放在地震带来了何等惨状或是救援人员的英勇无畏上，而是通过一个真实的爱情故事，再现了在地震来临前后的所见、所闻、所感，以及体现中国人顽强不息的精神，在任何困难面前都能战胜的毅力。影片具有较高的教育价值，同时也向社会和政府发出了必须高度重视地震预报和预防工作的呼吁。','https://img.alicdn.com/bao/uploaded/i4/TB1_8NHcAUmBKNjSZFOXXab2XXa_.jpg_160x160.jpg',1,29,'2018-01-12'),('1278029','疯狂这一年','https://img.alicdn.com/bao/uploaded/i1/TB1HayYg98YBeNkSnb4XXaevFXa_.jpg_160x240.jpg','','丁仕昀','吴耀汉,朱咪咪,陈峰,林静','剧情,喜剧','中国大陆','汉语普通话','86','剧情介绍：离家出走多年的梁歌，在春节期间回到家乡后发现父亲犯了老年痴呆，母亲已离家出走，家里多出一个趁虚而入想骗父亲钱财的女骗子。为了解决家庭危机，化解父母矛盾，梁歌在左邻右舍的帮助下，与女骗子及其团伙之间发生了一系列疯狂、幽默、而又值得让人深思、感人的喜剧故事。','https://img.alicdn.com/bao/uploaded/i3/TB1wUuRo3vD8KJjSsplXXaIEFXa_.jpg_160x160.jpg',0,49,'2018-01-15'),('1278784','暗夜良人','https://img.alicdn.com/bao/uploaded/i3/TB1w8urrCBYBeNjy0FeXXbnmFXa_.jpg_160x240.jpg','','王俊潾','何乙轩,周舟,孔庆三,李运佳','剧情,悬疑','中国大陆','汉语普通话','90分钟','剧情介绍：该片讲述民国年间，白秀英为新婚丈夫张千月之死申冤，挖出一层层罗生门般的人性丑恶，最终协同青年义士钟丰祥逃离是非之地。','https://img.alicdn.com/bao/uploaded/i2/TB1oQWRfH3nBKNjSZFMXXaUSFXa_.jpg_160x160.jpg',0,15,'2018-01-06'),('1278936','毛骨悚然之红衣男孩','https://img.alicdn.com/bao/uploaded/i3/TB1xUVEtYGYBuNjy0FoXXciBFXa_.jpg_160x240.jpg','5.1','孙杰','孙丹丹,陈奕鸣,孙家文,许喵喵','惊悚,悬疑','中国大陆','汉语普通话','86分钟','剧情介绍：一场聚会上，众人兴致勃勃地讨论了红衣男孩的事件。而就在当天晚上辛雅的儿子竟然遭受了“红衣男孩”的诅咒——七日之内必会死亡。辛雅踏上了艰难的解救孩子之路，然而在寻找解救方法的路上关联人一个接一个死去，事情被笼罩上了诡异的阴影。辛雅似乎在一步步接近真相，但更大的危机却降临在她身上。最终，她能破除红衣男孩的诅咒吗？','https://img.alicdn.com/bao/uploaded/i1/TB1vR4CpN1YBuNjy1zcXXbNcXXa_.jpg_160x160.jpg',1,19,'2018-01-01'),('1278975','我的宠物恐龙','https://img.alicdn.com/bao/uploaded/i1/TB1KWdzsh9YBuNjy0FfXXXIsVXa_.jpg_160x240.jpg','7.4','Matt Drummond','Jordan Dulieu,Christopher Gabardi,Tom Rooney,Sam·Winspear-Schillings,Tiriel Mora,大卫·罗伯茨,琼妮·萨缪尔','动作,冒险,家庭','澳大利亚','英语','88分钟','剧情介绍：杰克和他的朋友查尔斯、阿贝等人痴迷于UFO，经常到森林“狩猎UFO”，遗憾的是他们并没有找到任何外星生物的痕迹，却意外收集了一些奇怪的粘质物，并将其带回了家。机缘巧合之下，杰克用粘质物创造出了一只恐龙，一只十分可爱的、充满好奇心、形似剑龙的变色恐龙，并取名 “马格纳斯”。为了避免马格纳斯人们被发现，杰克决心要把它藏起来，但是随着小恐龙的身体呈指数增长，杰克和他的小伙伴们再也无法向军方和岌岌可危的小镇隐瞒这个秘密……','https://img.alicdn.com/bao/uploaded/i1/TB1nwT4sY1YBuNjSszeXXablFXa_.jpg_160x160.jpg',1,16,'2018-01-31'),('1279009','恐怖浴室','https://img.alicdn.com/bao/uploaded/i4/TB1KVNspqSWBuNjSsrbXXa0mVXa_.jpg_160x240.jpg','','陆诗雨','张星阑,刘国光,吴洋,宋天湙','恐怖,惊悚','中国大陆','汉语普通话','90分钟','剧情介绍：富家少女崔淼在浴室遭遇“水鬼”袭击，惊慌失措，心力憔悴。别墅内不时有诡异暗影飘过，窗棂处传来令人不安的声音，浴室更成了家人望而却步的场所。是母亲自杀的灵魂归来制造麻烦，还是父亲忏悔的心理导致变态行为，抑或只是梦境作祟？经过众人多方调查，这一切，竟然与美少女父亲曾经的狐朋狗友有关……是逝者的复仇，还是活人的诅咒，声声尖叫中，浴室谜团期待终极答案。','http://g.alicdn.com/alipay-movie-client/movie-cdn/svgfiles/taobao-movie1.svg',0,30,'2018-01-08'),('1279140','蓝色金鱼','https://img.alicdn.com/bao/uploaded/i1/TB1tCO9uhGYBuNjy0FnXXX5lpXa_.jpg_160x240.jpg','','唐明智','朱孝天,蓝燕,曲木古火·秋风 QuMuGuHuo QiuFeng,闫鹿杨','爱情,冒险','中国大陆','汉语普通话','87分钟','剧情介绍：以中国草海为背景、国家非物质文化保护遗产古彝文化为线索，讲述主人公姿果（蓝燕饰演）失忆后，来到时光照相馆希望借由替人拍照来帮助自己恢复留住记忆，如同鱼缸里的金鱼一样被困在自己残缺的记忆里而不能自拔，姿果在找寻记忆线索的过程中邂逅了前来寻找丧妻留下‘神秘礼物’的于林峰（朱孝天饰演），在于林峰帮助姿果恢复记忆的同时两人也收获了一份爱情的清新浪漫文艺故事。','https://img.alicdn.com/bao/uploaded/i3/TB1Fq8yf8jTBKNjSZFwXXcG4XXa_.jpg_160x160.jpg',1,28,'2018-01-04'),('1279145','一个人的江湖','https://img.alicdn.com/bao/uploaded/i3/TB1iwhPaoz.BuNjt_bXXXcQmpXa_.jpg_160x240.jpg','','喻亢, 黄建业','梁恩,魏宗万,屠育玮,喻亢,张佳熙','动作,剧情','中国大陆','汉语普通话','90','剧情介绍：“拳村”少年张小明，是小拳种金刚拳的唯一传承人，他肩负着将“金刚门”发扬光大的重任，只身来到大城市，希冀用传统的武林方式实现光复门派的愿望，怎奈屡屡碰壁，遭人耻笑。正当他心灰意冷时，他却邂逅了一位叫李昂的神秘蹉跎青年……','https://img.alicdn.com/bao/uploaded/i2/TB1Tbqbqb5YBuNjSspoXXbeNFXa_.jpg_160x160.jpg',0,39,'2018-01-08'),('1280080','疯狂的麻将','https://img.alicdn.com/bao/uploaded/i3/TB1akIXlCfD8KJjSszhXXbIJFXa_.jpg_160x240.jpg','','孙铁军','张鹰','喜剧','中国大陆','汉语普通话','87','剧情介绍：来自山村，却爱好古玩的“老七”，带着侄子“小七”在城市里做瓦匠。老七希望能赚到钱，在城市里买上房子，然后把老娘、妻女接来共同生活，再给侄子找一个城里姑娘做媳妇。而他的侄子小七，却一心想着攒够三万元钱就回山村，完成他和乡村女教师秀花的梦想：给山村孩子们盖上宽敞的教室。叔侄俩为一去一留斗智斗勇。','',0,51,'2018-01-16'),('1280442','别让爱情走弯路','https://img.alicdn.com/bao/uploaded/i3/TB1yXX4mviSBuNkSnhJXXbDcpXa_.jpg_160x240.jpg','','袁春波','李天烨,李芯萌,张绍飞,刘昌伟','剧情,爱情','中国大陆','汉语普通话','91','剧情介绍：而立之年的倪振宇事业有成，妻子贤惠儿子懂事，一家人其乐融融，但在一次工作酒局后，倪振宇被设计发生一夜情，面对原配操持家庭的融融其乐，与小三标榜爱情的情真意切，倪振宇展开了一场男人的婚姻保卫战，在欺骗与谎言下维持着尴尬的和谐，而终有一日，一切真相无法掩盖，倪振宇才明白，唯有真心与坦诚，才是挽回婚姻与爱情的置胜法宝。','https://img.alicdn.com/bao/uploaded/i2/TB1hGU9miCYBuNkHFCcXXcHtVXa_.jpg_160x160.jpg',0,40,'2018-01-08'),('1280443','那年，我还没长大','https://img.alicdn.com/bao/uploaded/i3/TB1XdTxk2iSBuNkSnhJXXbDcpXa_.jpg_160x240.jpg','','马和平','王广达,赵纪东,曾浩宇','剧情','中国大陆','汉语普通话','95','剧情介绍：上世纪八十年代初，小石头的父母因躲债背井离乡，石头与二叔在山村里相依为命。为了得到正义象征的大盖帽，小石头想尽办法。期间，与伙伴、二叔发生了很多感人的故事。','',0,41,'2018-01-08'),('156841','复仇者联盟3：无限战争','https://img.alicdn.com/bao/uploaded/i4/TB1xcwSheySBuNjy1zdXXXPxFXa_.jpg_160x240.jpg','8.8','安东尼·罗素, 乔·罗素','小罗伯特·唐尼,克里斯·海姆斯沃斯,乔什·布洛林,本尼迪克特·康伯巴奇,克里斯·埃文斯,马克·鲁法洛,斯嘉丽·约翰逊,汤姆·赫兰德,唐·钱德尔,查德维克·博斯曼,克里斯·帕拉特,佐伊·索尔达娜,凯伦·吉兰,保罗·贝坦尼,伊丽莎白·奥尔森','动作,冒险,奇幻','美国','英语','151分钟','剧情介绍：漫威影业为您倾力呈现万众期待的终极力作《复仇者联盟3：无限战争》！复仇者联盟的一众超级英雄，必须抱着牺牲一切的信念，与史上最强大反派灭霸(Thanos)殊死一搏，阻止其摧毁宇宙的邪恶计划。','https://img.alicdn.com/bao/uploaded/i4/TB1nbVfkSfD8KJjSszhXXbIJFXa_.jpg_160x160.jpg',1,2,'2018-01-11'),('194007','侏罗纪世界2','https://img.alicdn.com/bao/uploaded/i3/TB1VY70niOYBuNjSsD4XXbSkFXa_.jpg_160x240.jpg','','胡安·安东尼奥·巴亚纳','克里斯·帕拉特,布莱丝·达拉斯·霍华德,贾斯提斯·史密斯,拉菲·斯波','史诗,动作,冒险','美国','英语','128分钟','剧情介绍：侏罗纪世界主题公园及豪华度假村被失控的恐龙们摧毁已有四年。如今，纳布拉尔岛已经被人类遗弃，岛上幸存的恐龙们在丛林中自给自足。当岛上的休眠火山开始活跃以后，欧文（克里斯·帕拉特 饰）与克莱尔（布莱丝·达拉斯·霍华德 饰）发起了一场运动，想要保护岛上幸存的恐龙们免于灭绝。欧文一心想要找到自己依然失踪在野外的迅猛龙首领布鲁，克莱尔如今也尊重起这些生物，以保护它们为己任。两人在熔岩开始喷发时来到了危险的小岛，他们的冒险也揭开了一个可能让地球回到史前时代般混乱秩序的阴谋。','https://img.alicdn.com/bao/uploaded/i4/TB1yEmUbPgy_uJjSZKPXXaGlFXa_.jpg_160x160.jpg',0,3,'2018-01-15'),('195230','命运速递','https://img.alicdn.com/bao/uploaded/i2/TB1rGvur3aTBuNjSszfXXXgfpXa_.jpg_160x240.jpg','7.5','李非','赵炳锐,余皑磊,吕晓霖,啜妮,张优','剧情,喜剧,犯罪','中国大陆','汉语普通话','93分钟','剧情介绍：这是一个发生在24小时之内的荒诞故事，刚刚丧母的周小铁，为了给母亲买块墓地而重操旧业，奉想要把黑帮事业扩展到一线城市的地方老大“四哥”之命（顾长卫饰），到北京找北漂青年方南讨要一笔债务。而此时的方南正深陷财务危机，为了还债保命，他设计做演员的女友去勾引有钱大老板。在周小铁寻找方南讨债这一猫鼠游戏的过程中，梦想破灭的北漂女演员，独守豪宅的怨妇，身心俱疲的富商，情场失意的草根，四处骗炮的“海龟”导演......所有人的命运在这一夜之间神奇地联系在了一起，汇集成一幕人间悲喜剧。','https://img.alicdn.com/bao/uploaded/i4/TB1rqQsJFXXXXcjXFXXXXXXXXXX_.jpg_160x160.jpg',1,22,'2018-01-25'),('199505','猛虫过江','https://img.alicdn.com/bao/uploaded/i4/TB1lKZpnfiSBuNkSnhJXXbDcpXa_.jpg_160x240.jpg','','小沈阳','小沈阳,潘斌龙,宋芸桦,刘桦,胡明,曹瑞,金士杰,陈惠敏','动作,喜剧','中国大陆','汉语普通话','99','剧情介绍：东北农村青年沈福（小沈阳 饰）与大雷（潘斌龙 饰）遇见南方姑娘静香（宋芸桦 饰），机缘巧合来到陌生大城市，面对从天而降的巨额遗产和随之而来的种种危机，两人接连施展令人意想不到的“独门秘籍”，引发了一连串爆笑喜剧故事。','https://img.alicdn.com/bao/uploaded/i1/TB1NYdfmSBYBeNjy0FeXXbnmFXa_.jpg_160x160.jpg',0,43,'2018-01-15'),('202876','完美陌生人','https://img.alicdn.com/bao/uploaded/i4/TB12hVXrY5YBuNjSspoXXbeNFXa_.jpg_160x240.jpg','8.5','保罗·格诺维瑟','吉塞培·巴蒂斯通,安娜·佛格莱塔,马可 ·吉亚历尼,爱德华多 ·莱奥,瓦里诺 ·马斯坦德雷阿,卡西娅·史穆特妮亚克,阿尔芭·洛瓦赫','剧情,爱情,喜剧','意大利','意大利语','96分钟','剧情介绍：三对处于各个婚姻阶段的伴侣和一个宅男，七人聚在一起吃晚餐。女主人提议下拍板决定当夜所有人分享每一个电话、每一条短信、邮件的内容，由此许多秘密开始不再是秘密，他们之间的关系也开始发生波动。无数疮痍在这场“坦白局”中被揭开，复杂的男女情感让所有人陷入困局，什么是婚姻感情中最不可触碰的底线？众人遭遇是难言的禁忌还是隐藏的真心，月食过后，谎言能否继续？','https://img.alicdn.com/bao/uploaded/i1/TB1h5XKLpXXXXXNaXXXXXXXXXXX_.jpg_160x160.jpg',1,6,'2018-01-25'),('208321','吃货宇宙','https://img.alicdn.com/bao/uploaded/i2/TB1HUXSvKSSBuNjy0FlXXbBpVXa_.jpg_160x240.jpg','','陈廖宇','','喜剧,动画,科幻','中国大陆','汉语普通话','89','剧情介绍：这是一部上百位中外面食明星出演的好吃好玩的动画电影。 面粉星球上，脑袋里包着一枚硬币的幸运饺子，却因为这个“幸运”而不开心，渴望变得和大家一样的她，接受了来自通吃星球的完美改造邀请，而憨厚暖男包子似乎预感到了什么，一路相随，一场阴谋正在等待着她（他）们......生死之间，为了朋友，包子会作何选择？毁灭之际，饺子又如何力挽狂澜？吃货宇宙见证自我和友谊的奇迹。 除了饺子和包子，还有人格分裂的中年油条、偏执男大饼卷一切、互不服“硬”的法棍与五仁月饼、追逐梦想的方便面、快板不离身的麻花.....他们又将上演一出怎样有味道的喜剧呢？','https://img.alicdn.com/bao/uploaded/i1/TB1ojTkOXXXXXXyXVXXXXXXXXXX_.jpg_160x160.jpg',0,50,'2018-01-16'),('209762','路过未来','https://img.alicdn.com/bao/uploaded/i1/TB16TEbqFOWBuNjy0FiXXXFxVXa_.jpg_160x240.jpg','8.0','李睿珺','杨子姗,尹昉,李勤勤','剧情','中国大陆','汉语普通话','127分钟','剧情介绍：耀婷（杨子姗 饰）是在深圳出生长大的甘肃人，除了办理身份证外她再没去过甘肃。如今在深圳打工二十多年的父母决定返回甘肃农村老家生活，耀婷看到父母在村子里生活并不如意，她想通过自己的努力把父母重新接回深圳生活。小混混新民（尹昉 饰）的出现，彻底改变了她的生活......','https://img.alicdn.com/bao/uploaded/i1/TB1i3qFOFXXXXa9XVXXXXXXXXXX_.jpg_160x160.jpg',1,23,'2018-01-17'),('211454','泡菜爱上小龙虾','https://img.alicdn.com/bao/uploaded/i1/TB1mSNysFuWBuNjSszbXXcS7FXa_.jpg_160x240.jpg','','虞军豪','金基范,徐申东,元华,张兆辉,陈德容,苑琼丹','喜剧,奇幻','中国大陆','汉语普通话,韩语','100','剧情介绍：吃小龙虾有吃小龙虾的讲究，你知道吗？分老派、新派两种。老派的代表人物是自诩龙虾理疗师的老怪，自创龙虾抚慰心灵术，爱的秘方专治各种不开心；新派代表人物是以网红龙虾闻名的九零后小雨，推崇辣爽自在的大排档风情。老派与新派和谐共生，共同经营着一家名叫怪客龙虾的饭店。 直到有一天，怪客龙虾店真来了“怪客”。压力太大的落跑歌坛巨星“Wind胖”（Kim KiBum 饰）阴差阳错藏身龙虾店，和小雨（徐申东 饰）碰撞出火花，还被老怪（元华 饰）强行“快乐理疗”。龙虾店因此莫名卷入经纪公司追踪、黑帮闹事、神秘人追杀……麻烦不断，笑料百出。小伙伴们与黑暗势力终极PK，竟然意外解开了“Wind胖”心底的秘密，揭开一段感人故事。 泡菜小龙虾，一道有故事的菜！笑着流泪，快乐解馋！','https://img.alicdn.com/bao/uploaded/i2/TB1QRr3OVXXXXc0XpXXXXXXXXXX_.jpg_160x160.jpg',0,44,'2018-01-15'),('212311','幸福马上来','https://img.alicdn.com/bao/uploaded/i3/TB16Cg6kTdYBeNkSmLyXXXfnVXa_.jpg_160x240.jpg','','冯巩, 崔俊杰','冯巩,刘昊然,岳云鹏,毛俊杰,贾玲','喜剧','中国大陆','汉语普通话','91分钟','剧情介绍：在山城重庆，马尚来（冯巩饰）是鼎鼎大名的老牌调解员，人送美称“调解超人”。然而，就在他的调解工作室准备挂牌开张之时，却遭遇调解界“后起之秀”茅雪旺（涂松岩饰）前来踢馆。茅雪旺“叫板”称自己才是山城第一调解“天王”，欲与老马一决高下。面对重重纠结复杂的调解难题，马尚来和茅雪旺率领各自的“调解天团”展开了一场比机智、论口才、赛人气、拼颜值的PK大战，可谓花样百出、奇招用尽。谁料老马却因此被妻子（牛莉饰）和儿子（刘昊然饰）误会不顾家庭而扫地出门！一辈子真心实意帮他人化解矛盾的老马，这一次该如何使用调解的艺术解开自己的难题？老马的“幸福”，又会不会如同他的名字一样，马上就来呢？','https://img.alicdn.com/bao/uploaded/i2/TB1AkY7PXXXXXciXFXXXXXXXXXX_.jpg_160x160.jpg',0,11,'2018-01-08'),('213346','游侠索罗：星球大战外传','https://img.alicdn.com/bao/uploaded/i1/TB17LWBpH1YBuNjSszhXXcUsFXa_.jpg_160x240.jpg','8.0','朗·霍华德','阿尔登·埃伦瑞奇,艾米莉亚·克拉克,伍迪·哈里森,唐纳德·格洛沃','科幻,动作','美国','英语','135分钟','剧情介绍：在《游侠索罗：星球大战外传》中，影迷们将跟随“千年隼号”及银河系中最受爱戴的“痞子”汉·索罗，迎来全新的银河系探险旅程。经过在黑暗危险的罪犯地下社会中的重重冒险，汉·索罗结识了他未来强大的副驾驶丘巴卡、以及臭名昭著的赌徒兰多·卡瑞辛，共同展开了一场星战传奇中最“不正经”的英雄历程。','https://img.alicdn.com/bao/uploaded/i1/TB1SuGsPFXXXXXgapXXXXXXXXXX_.jpg_160x160.jpg',1,7,'2018-01-25'),('215842','昼颜','https://img.alicdn.com/bao/uploaded/i3/TB18lpEff6TBKNjSZJiXXbKVFXa_.jpg_160x240.jpg','8.1','西谷弘','上户彩,斋藤工,伊藤步,平山浩行','剧情,爱情','日本','日语','126分钟','剧情介绍：离婚后恢复单身的纱和（上户彩饰）在海滨小镇的餐馆打工度日。一个偶然的机会，纱和与北野（斋藤工 饰）再次相遇，约定了不再见面的两人，在四目相对的那一瞬间感情被重新点燃。然而这段禁忌之恋很快被北野的妻子（伊藤步 饰）发现，并与二人产生了激烈的冲突。与此同时，餐厅老板杉崎（平山浩行 饰）的出现，也让四个人的情感走向更加扑朔迷离，一边是复燃的旧情，一边是“永不再相见”的约定，几个主人公的命运再次纠缠在一起。','https://img.alicdn.com/bao/uploaded/i2/TB10C89fvuSBuNkHFqDXXXfhVXa_.jpg_160x160.jpg',1,18,'2018-01-18'),('226632','深海越狱','https://img.alicdn.com/bao/uploaded/i2/TB1gmvgh_dYBeNkSmLyXXXfnVXa_.jpg_160x240.jpg','','帕夏·帕特里基','尚格·云顿,杜夫·龙格尔,杰思敏·沃兹,帕特里克·基尔帕特里克,阿尔·萨皮恩扎,克里斯·云顿','动作,冒险','美国','英语','104分钟','剧情介绍：中情局特工维勒（尚格·云顿 饰）与美女搭档梅尔在保护一份机密文件的任务中被神秘组织追杀，梅尔牺牲，维勒被逮捕。醒来时维勒发现自己被囚禁在一艘核潜艇内，这里是CIA设在深海的一座与世隔绝的黑狱，他自己也变成了出卖国家机密的叛徒身份。 除了拷打维勒的探员帕特里克，潜艇上还有维勒的恩师爱德华、女见习生凯茜和被关押的德国特工马可（杜夫·龙格尔 饰），他们当中谁是盟友，谁是敌人？有人对维勒手中的机密文件感兴趣，有人却对离开深海恢复自由更感兴趣。维勒必须寻找队友，携手逃出生天，并自证清白……','https://img.alicdn.com/bao/uploaded/i1/TB1Uk4ZSVXXXXbJXVXXXXXXXXXX_.jpg_160x160.jpg',0,9,'2018-01-08'),('227264','西小河的夏天','https://img.alicdn.com/bao/uploaded/i2/TB1g9Gvr9tYBeNjSspkXXbU8VXa_.jpg_160x240.jpg','8.0','周全','张颂文,谭卓,顾宝明,董晴,荣梓杉','剧情,家庭','中国大陆','汉语普通话','102分钟','剧情介绍：1998年夏，皮耶罗决战世界杯，10岁的晓阳也想像他一样。当老师的爸爸拒绝为他的校队申请书签字，忙着角逐梅花奖的妈妈也没空搭理他。在没有兄弟姐妹的年少时光，隔壁怪爷爷成了晓阳的好朋友。他们一起踢球，一起出游。孤独的夏天，他窥见了爸爸、妈妈和爷爷的秘密。2018年的晓阳会不会仍怀念那个闷热、美好又充满烦恼的夏天？','https://img.alicdn.com/bao/uploaded/i3/TB1ocLoa3oQMeJjy0FpXXcTxpXa_.jpg_160x160.jpg',1,21,'2018-01-25'),('227577','战犬瑞克斯','https://img.alicdn.com/bao/uploaded/i1/TB1dNZDpamWBuNjy1XaXXXCbXXa_.jpg_160x240.jpg','8.2','加芙列拉·考珀斯维特','凯特·玛拉,汤姆·费尔顿,布莱德利·惠特福德,杰拉丁妮·詹姆斯,埃迪·法可,科曼,拉蒙·罗德里格兹,威尔·帕顿','剧情,传记,战争','美国','英语','116分钟','剧情介绍：根据真实事件改编，讲述美国海军陆战队下士梅根·利维在伊拉克战争中与战犬瑞克斯结缘的传奇故事。由起初的心存戒备到成为相互依托的战友，两位英雄最终肩负着拯救更多人性命的使命共赴战场。在一次行动中，梅根·利维身陷绝境，瑞克斯舍身救主，身处战场最前线的两人命途难测，梅根·利维能否平安归来，战犬瑞克斯又将何去何从……','https://img.alicdn.com/bao/uploaded/i3/TB1QRi7bTZRMeJjSsppXXXrEpXa_.jpg_160x160.jpg',1,26,'2018-01-11'),('227592','超时空同居','https://img.alicdn.com/bao/uploaded/i3/TB1gr2sf3KTBuNkSne1XXaJoXXa_.jpg_160x240.jpg','8.5','苏伦','雷佳音,佟丽娅,陶虹,徐峥','喜剧,奇幻','中国大陆','汉语普通话','101分钟','剧情介绍：来自2018年谷小焦（佟丽娅 饰）与1999年陆鸣（雷佳音 饰），两人时空重叠意外住在同一个房间。从互相嫌弃到试图“共谋大业”，阴差阳错发生了一系列好笑的事情。乐在其中的两人并不知道操控这一切的神秘人竟是想要去2037年“投机取巧”的2018年的……','https://img.alicdn.com/bao/uploaded/i1/TB1dQuViHuWBuNjSszgXXb8jVXa_.jpg_160x160.jpg',1,1,'2018-01-18'),('228651','光影之战','https://img.alicdn.com/bao/uploaded/i3/TB1JpbNsH1YBuNjSszeXXablFXa_.jpg_160x240.jpg','6.2','陈钺晖','向俞星,陈怡凡,范薇,李根,陈泽耀','剧情','中国大陆','汉语普通话','96分钟','剧情介绍：洪欢，黄莉与白璐是偶像团体“镭射少女”的成员，同时也是维护地球安宁的机甲战士。可是白璐在吉隆坡执行任务的过程中突然失踪，并且涉嫌盗走关乎人类安危的重要神器“天空之钥”。为了找回白璐并查清真相，洪欢和黄莉踏上冒险之旅，而她们面临的将会是一场超乎想像的危机。','https://img.alicdn.com/bao/uploaded/i3/TB1MW6fesyYBuNkSnfoXXcWgVXa_.jpg_160x160.jpg',1,27,'2018-01-01'),('231357','狂暴巨兽','https://img.alicdn.com/bao/uploaded/i4/TB18cozaDqWBKNjSZFAXXanSpXa_.jpg_160x240.jpg','8.9','布拉德·佩顿','道恩·强森,娜奥米·哈里斯,杰弗里·迪恩·摩根,玛琳·阿克曼','动作,冒险,科幻','美国','英语','108分钟','剧情介绍：巨石强森饰演的灵长类动物学家一直与人类保持距离, 却跟极为聪明的银背大猩猩乔治有着深厚的感情。但是一次基因实验出错, 让这只温驯的大猩猩变成狂怒难驯的庞然巨兽。更可怕的是, 其他动物也发生了同样基因异变。他必须阻止这场全球性的灾难, 更重要是要拯救他的好友乔治。','https://img.alicdn.com/bao/uploaded/i2/TB1mJCAXyAnBKNjSZFvXXaTKXXa_.jpg_160x160.jpg',1,12,'2018-01-13'),('231518','寂静之地','https://img.alicdn.com/bao/uploaded/i4/TB12.ylqmtYBeNjSspkXXbU8VXa_.jpg_160x240.jpg','7.6','约翰·卡拉辛斯基','艾米莉·布朗特,约翰·卡拉辛斯基,诺亚·尤佩,米莉森·西蒙斯','剧情,惊悚,恐怖','美国','英语','91分钟','剧情介绍：当神秘的超自然力量受到世界各地的声音所吸引时，一个四口之家必须在一个僻静的废弃农场里躲藏起来并静静地生活，且为了避免发出声音而改以手语来交流。一旦被听见，就会被追捕……','https://img.alicdn.com/bao/uploaded/i4/TB1h4Pjdv2H8KJjy0FcXXaDlFXa_.jpg_160x160.jpg',1,5,'2018-01-18'),('232303','我是你妈','https://img.alicdn.com/bao/uploaded/i3/TB1xtj4nb9YBuNjy0FgXXcxcXXa_.jpg_160x240.jpg','8.3','张骁','闫妮,邹元清,吴若甫,吴大维,张恒','喜剧,剧情','中国大陆','汉语普通话','104分钟','剧情介绍：影片讲述了一对形同姐妹又骨肉情深的别样母女，不按套路出牌的单身辣妈秦美丽（闫妮饰）与正处于叛逆期的女儿赵小艺（邹元清饰）之间相“碍”相亲、陪伴成长，一系列欢脱又不失温情的故事笑中带泪，感动人心。','https://img.alicdn.com/bao/uploaded/i3/TB1lKvEfxPI8KJjSspfXXcCFXXa_.jpg_160x160.jpg',1,20,'2018-01-11'),('273037','后来的我们','https://img.alicdn.com/bao/uploaded/i3/TB1GHVjnKuSBuNjSsziXXbq8pXa_.jpg_160x240.jpg','7.8','刘若英','井柏然,周冬雨,田壮壮','爱情,剧情','中国大陆','汉语普通话','120分钟','剧情介绍：这是一个爱情故事，关于一对异乡漂泊的年轻人。十年前，见清和小晓偶然地相识在归乡过年的火车上。两人怀揣着共同的梦想，一起在北京打拼，并开始了一段相聚相离的情感之路。十年后，见清和小晓在飞机上再次偶然重逢……命运似乎是一个轮回。在一次次的偶然下，平行线交叉，再平行，故事始终有“然后”。可后来的他们，学会如何去爱了吗？','https://img.alicdn.com/bao/uploaded/i2/TB13GFIff5TBuNjSspcXXbnGFXa_.jpg_160x160.jpg',1,13,'2018-01-28'),('282318','厕所英雄','https://img.alicdn.com/bao/uploaded/i3/TB13fmKvr9YBuNjy0FgXXcxcXXa_.jpg_160x240.jpg','','什里·那拉扬·辛','阿克谢·库玛尔,布米·佩德卡尔,阿努潘·凯尔,迪韦严杜·沙玛,萨钦·克德卡','剧情,喜剧','印度','印地语','150分钟','剧情介绍：改编自真人真事，探讨印度农村家庭普遍没有厕所，妇女必须在野外如厕的现象。女主角担任教师，嫁给男主角后，发现家中没有厕所，和男主角“闹离婚”，还来了一场革命。','https://img.alicdn.com/bao/uploaded/i2/TB1Q0oMjNTI8KJjSspiXXbM4FXa_.jpg_160x160.jpg',0,10,'2018-01-08'),('306957','一纸婚约','https://img.alicdn.com/bao/uploaded/i4/TB1wpVWvKGSBuNjSspbXXciipXa_.jpg_160x240.jpg','','张辉','刘熙阳,张辉,张一山,杨紫,关晓彤','剧情,爱情','中国大陆','汉语普通话','91分钟','剧情介绍：电影《一纸婚约》讲述了女主角叶子（刘熙阳饰）为了买房和男朋友（张一山饰）结婚，不惜与大学教授王枫（张辉 饰）假结婚，看似一切进展顺利的时候，却遭遇男友移情别恋，这令叶子万念俱灰，只能靠酒精来麻痹自己，与此同时，王枫因为一场意外成为了植物人，而此时婚约还未解除，面对瘫痪在床的“半路夫妻”年轻迷茫的叶子将何去何从？','https://img.alicdn.com/bao/uploaded/i4/TB1kMwfqHuWBuNjSszgXXb8jVXa_.jpg_160x160.jpg',0,24,'2018-01-08'),('514808','哆啦A梦：大雄的金银岛','https://img.alicdn.com/bao/uploaded/i4/TB1zFl8uCtYBeNjSspaXXaOOFXa_.jpg_160x240.jpg','8.2','今井一晓','水田山葵,大原惠美,嘉数由美,木村昂,关智一','喜剧,动画,奇幻,冒险','日本','日语','109分钟','剧情介绍：《哆啦 A 梦：大雄的金银岛》创造了哆啦 A 梦系列剧场版在日本的最高观影人次、最高票房双记录！新篇中七只迷你哆啦闪亮登场，故事也有了新鲜的发展。大雄少了怯懦多了担当，静香遭遇困境也能勇敢面对，胖虎不再只顾着欺负同伴……甚至哆啦 A 梦的道具都不再万能，凶恶的海盗竟然拥有比哆啦 A 梦更加先进的装备！哆啦 A 梦还意外的陷入了绝境，命悬一线……面对危机，大雄一行人将如何应对？这一切，都将发生在一个太平洋中神秘出现的金银岛上……','https://img.alicdn.com/bao/uploaded/i3/TB1nK5dgVGWBuNjy0FbXXb4sXXa_.jpg_160x160.jpg',1,4,'2018-01-01'),('536009','给19岁的我自己','https://img.alicdn.com/bao/uploaded/i1/TB1jd8EhyCYBuNkHFCcXXcHtVXa_.jpg_160x240.jpg','8.1','黄朝亮','林柏宏,石安妮,王芊,周凯','剧情,爱情','中国大陆','汉语普通话','98分钟','剧情介绍：莫晓枫在一次冒险中出了意外去世，在暗恋了10年的莫晓枫的葬礼上阳艺雪得到了他留给自己的遗物，一个装有满满书信的“神秘木盒”，捧着这些倾注爱意的信笺，阳艺雪思绪纷飞，尘封的记忆被打开，她后悔当年与爱人失之交臂。而“神秘木盒”具有神奇穿越功能，可与过去时空连接，阳艺雪通过不断地与19岁的自己鸿雁传书，欲追回错失的爱。','https://img.alicdn.com/bao/uploaded/i4/TB1dBJ1hnXYBeNkHFrdXXciuVXa_.jpg_160x160.jpg',1,17,'2018-01-29'),('538808','血十三','https://img.alicdn.com/bao/uploaded/i4/TB115eTs7OWBuNjSsppXXXPgpXa_.jpg_160x240.jpg','','李聆聪','黄璐,谢钢,钱波','剧情,犯罪,悬疑','中国大陆','汉语普通话','100','剧情介绍：城市内杀案件频发，多名死者具有相似之处。为此，刑警队探长邢敏（黄璐饰）与省厅老侦查员老周（谢钢饰）组成连环杀人案专案组。为了破案，邢敏将自己作为诱饵，打扮成凶手欲杀害的下一个被害者。凶手终于浮出水面，邢敏却命悬一线。','https://img.alicdn.com/bao/uploaded/i4/TB1e0iVdlyWBuNkSmFPXXXguVXa_.jpg_160x160.jpg',0,45,'2018-01-15');
/*!40000 ALTER TABLE `play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `sid` char(32) NOT NULL,
  `uid` char(32) NOT NULL,
  `saleTime` datetime DEFAULT NULL,
  `salePayment` decimal(5,2) DEFAULT NULL,
  `saleCharge` decimal(5,2) DEFAULT NULL,
  `saleStatus` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `sale_ibfk_1` (`uid`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleItem`
--

DROP TABLE IF EXISTS `saleItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saleItem` (
  `sid` char(32) NOT NULL,
  `saleid` char(32) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `saleItem_ibfk_2` (`saleid`),
  CONSTRAINT `saleItem_ibfk_2` FOREIGN KEY (`saleid`) REFERENCES `sale` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleItem`
--

LOCK TABLES `saleItem` WRITE;
/*!40000 ALTER TABLE `saleItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `saleItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `sid` char(32) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  `pid` varchar(15) NOT NULL,
  `stid` char(32) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_schedule_1_idx` (`pid`),
  KEY `fk_schedule_2` (`stid`),
  CONSTRAINT `fk_schedule_1` FOREIGN KEY (`pid`) REFERENCES `play` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_schedule_2` FOREIGN KEY (`stid`) REFERENCES `studio` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('3B6E8E7ADDC3475CAE16074C34EE0F63','2018-06-07 07:00:12','2018-06-07 08:20:12',0,30.00,'227592','971694BBD4B34EB0966DB20ADB1B7C1C'),('47CDE94C2F8B432CB906FE47F11A04ED','2018-06-08 15:00:12','2018-06-08 16:00:12',0,30.00,'227592','DEB6C1B89CFB4CB5B74E7F1D430A5075'),('61C3E68E48294404A0CC53DB832EF6E9','2018-07-12 12:00:00','2018-07-12 13:50:00',0,30.00,'227592','971694BBD4B34EB0966DB20ADB1B7C1C'),('8B9192D611044B16BC911A6A18F37AC2','2018-06-08 12:00:00','2018-06-08 13:00:00',0,30.00,'227592','971694BBD4B34EB0966DB20ADB1B7C1C'),('E472AB180D874CBC9CE3BA650659E691','2018-06-07 12:00:00','2018-06-07 13:00:00',0,30.00,'227592','971694BBD4B34EB0966DB20ADB1B7C1C'),('F6EF5763421F46CB89B63DA29156167E','2018-06-08 07:00:12','2018-06-08 08:20:12',0,30.00,'227592','971694BBD4B34EB0966DB20ADB1B7C1C');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `sid` char(32) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `studioid` char(32) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `seat_ibfk_1` (`studioid`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`studioid`) REFERENCES `studio` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('140B4E6375174EC5B9122B205ECDB9A9',7,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('141540BBD4B841E3B578C4CA8A78A730',5,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('1635C309DAA14E56967427D1872E134D',4,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('19955EDE6CE64683B34244D4341F3B51',7,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('1C0DA17896E641CB9833A7BEB0790C0B',1,1,0,'971694BBD4B34EB0966DB20ADB1B7C1C'),('22E38C5E04E147AF80753D5BE4B1411B',4,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('2609946DF342460A9A2F69AF9A92D943',8,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('2942E07965FC48E0ADFC235AB588118E',8,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3077474182984A978385C0A974F7E040',6,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('335F3D2480334FDC8C25381F8DB14151',1,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3420949420EB4F559209833BE98374A5',4,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('37E7420F8A1C4B46972CF3789A0EE67E',2,12,0,'971694BBD4B34EB0966DB20ADB1B7C1C'),('38B1D54E917F48B5BF32F4AD072EB397',6,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3A245B65A45E4F0894CC67E32952FE36',8,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3AAFC0A909994F499314CACFFFA9AFFE',2,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3E41FE45AA954D209735607F70E58198',5,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('3F423618D12341FA8C63FD5683F92C5B',2,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('41B6FDE72AA64BBAB4EB6B0FD916FAB3',6,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('420FD4DD3EC0434E98DEC0D8F595DF07',1,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('464B8C67CA624C6B83DD5C2A03A515F0',6,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('4E16473190C94034B237D5E2A74953E1',8,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('4FFC118138EB4CCDA53F5C15B9C78F71',1,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('51B2415F4D834D0380B710D9A855D3A2',8,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('54690DF5684E4F46BF311207CD56C7B7',3,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('558692E009184F99981D0AB549D08EF7',3,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('5A5D03EE265B48BEA4CBECFFED37E5F9',3,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('5B61D57E2DA34E9AA300F9EB502AA757',5,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('5D1C937A27DC4CAA88E1124CCCD564F2',1,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('5D9D67743D62455F822BD0490C10B9FF',2,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('5EEDA018D34F4546AB4EBF07CF011BF6',2,1,0,'971694BBD4B34EB0966DB20ADB1B7C1C'),('612040C80A9F48A38F23D6EED8B76E70',3,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('68668ECB51B04BFC9DEBCA19530198E8',6,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('6C7F9D4724CD436AA1A1A462740C461F',4,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('6D4B8EC4F1654664B2C54487D7B388CC',3,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('6E263C20519848AAB000434BB25BF87F',3,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('7054CE95C79146E9B4921227D8DCCEF4',3,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('7202B3A2CA4C40F0B9149C0C3FD6406A',7,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('7359B0B8DE4941E0A291715E18C363DC',7,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('741F4B5750144354A42900EB019EC91E',1,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('76CFF7C92D8B44EB8A364AB1E845AB8E',5,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('775C4B8E2E0E4B9BB59F1FDC11139ACC',7,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('79B5920132F5476EA74CE2C596D3A7E1',1,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('86FE64E462B34ECE99372F7D9F939B83',6,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('8B1D5F791D934B6199273EA72809B9FC',2,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('8D4FC105E0C24716BEC336B7CC618DD9',1,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('8F1E1243EDE34A428B964BC2E68AF1CD',1,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9212AEE84CBF4C2C93A985B75D8AF508',4,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('961E7D47BD1E41E78546BC8071132700',4,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9899FE5AE7EC46E4B8F28FD03E14BE87',8,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9D25C26F58B3480B9CEE61C9454B3279',2,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9D4DEEA5756144629519B394C2C30D83',6,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9E3849DBAAD64AB7B8A22C2252EBB282',4,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('9E646DB95B544882825AFE9250FD7251',5,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('A121BA0EF5D94889988C187120FEA243',1,12,0,'971694BBD4B34EB0966DB20ADB1B7C1C'),('A50A5C98E85A4CF9B35537C366EF6A08',5,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('A62DE7C643464C9F939D3C57B6AF387B',5,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('AA90C17588BB4357B349015CF5548C69',2,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('AD30CDEECE074FD3A1ECC93C94DC4103',3,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('B1BA74D698CF4DF9A17A59E8FBAEA251',4,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('B5262A9285294B00A8667B3959D5A471',7,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('B55F7D7D51AB4DCAB33688A55D342408',5,4,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('B8AE976319A04E1C9AA583B2FA4BF52E',6,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('BBAD8872D80C4BC8A39FFD2F46E6421E',7,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('BFB144786A94459BA46CA5541B60A500',5,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('C0693B7E6A184BC7B64588673A9A9E21',2,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('C43CE8BD6C764FFFBBE4CC963CE478A1',2,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('C49F6926673D4C9FAC4CA563ED1FE7A3',8,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('C589C7E720C14891ADD35298EFED4FFF',1,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('CAE9E7ED400B475E9F494E7560098A32',7,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('CDB07A2CEC3B4AD9B96F660CBBB5C875',8,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('CFDE6FD3995E4B74B23FF72F8836B3BB',8,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D09C2232252B413EB4BA7FB5B402C954',6,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D14185B86DB240FDA86584FA7ED28E58',3,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D195B7033C194BF5A629043AA2CC469E',8,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D535781855DB4AB7803DC3A205C338EC',7,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D6160480FE3C40C5ABBD906969B6E4C3',1,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D7E8F5BD67364A4695648CBCE39F094D',4,12,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D7FBC14AE8BE45C6A88A9573E0B862D8',8,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('D8E5847CEF364EF49CC68D7A1D1F5181',6,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('DAE841E093654DB685FF78CA620BEAEA',5,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('DF2437FB5A824D738B836A4205FA1C94',6,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('DF65EBD4F0414549B85CC3F978BA34A3',5,3,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('E2AEFAEA58554720BE17E39AC89DC23E',4,7,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('E606D3AC600A42358AED8881EE0AFC2C',7,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('E635B7B653084EC18B403D58BB6C0540',3,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('E701868C949B4666A0130D97F07E8ADA',2,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('EBB93B3ECE854E14BBFF4C571818104F',4,8,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('EC9BB800CF0B47EEA4EC515DEDB830B8',3,9,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('EE97AAA5125F466BA2D6BF73677CFEDD',7,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('EEB444D2902C4DEF8F6451AC85B60BAE',6,6,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('F04424839249402A8EA3B91780A6A48E',5,5,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('F2949C8C382447CDB6E0647D603E9A6E',8,2,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('F425B43BA5C44C818E9671338CBD7197',3,1,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('F91A54B203394FF394B8EF1A5B8017F1',7,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('FC5FA5993B354E729AFAE7667F0464AD',2,10,1,'971694BBD4B34EB0966DB20ADB1B7C1C'),('FE4C0D754BFA4E67B5081A8DB2BF927A',4,11,1,'971694BBD4B34EB0966DB20ADB1B7C1C');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `sid` char(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `introduction` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES ('05DC1971636A45C48D74CB822F45B95F','3号厅',10,14,'超大影厅',1),('11F56025F0DB4876A4D5B5E4907F5EBE','5号厅',8,12,'全景MAX',1),('83B6EA7CABEF415C94CC2E0C069E5FEB','7号厅',8,12,'杜比厅',1),('93D4FC5F505E466690A1CFD417F3B12A','4号厅',10,14,'超大影厅',1),('971694BBD4B34EB0966DB20ADB1B7C1C','1号厅',8,12,'杜比厅',1),('A44DC25CFF494C3C8C02F6316F5C555E','6号厅',8,12,'杜比厅',1),('D7051A6CE60F4CF09BD29BC37CB3C0B2','8号厅',6,10,'贵宾厅',1),('DEB6C1B89CFB4CB5B74E7F1D430A5075','2号厅',8,12,'全景MAX',1);
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `tid` char(32) NOT NULL,
  `seatid` char(32) NOT NULL,
  `status` int(11) NOT NULL,
  `lockTime` varchar(45) NOT NULL,
  `scheduleid` char(32) NOT NULL,
  `saleItemid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `ticket_ibfk_1` (`scheduleid`),
  KEY `ticket_ibfk_2` (`seatid`),
  KEY `ticket_ibfk_3` (`saleItemid`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`scheduleid`) REFERENCES `schedule` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`seatid`) REFERENCES `seat` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`saleItemid`) REFERENCES `saleItem` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('01AA3CA95F3B410F81DAF283BFCF8BAF','D6160480FE3C40C5ABBD906969B6E4C3',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('054775B4843E4839984C59510A425F51','7054CE95C79146E9B4921227D8DCCEF4',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('0577591052AF45F7B97C20AD2B1CCF46','A62DE7C643464C9F939D3C57B6AF387B',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('1223E293A4D043F7A71A0B4A9D1A73C3','7359B0B8DE4941E0A291715E18C363DC',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('186B826C079442D690D364D0B96EF15E','6E263C20519848AAB000434BB25BF87F',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('22D9FE965C774F85916FFD0DFCF0EDC3','C49F6926673D4C9FAC4CA563ED1FE7A3',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('24933678F3134793B8908D548CA82412','140B4E6375174EC5B9122B205ECDB9A9',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('26DCAC0915ED4CB487FCC095E107980A','C43CE8BD6C764FFFBBE4CC963CE478A1',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('2816F0E398A246E2918826FC6B96E681','D09C2232252B413EB4BA7FB5B402C954',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('2B827E3463B74D19B9B833134F20EE8A','B1BA74D698CF4DF9A17A59E8FBAEA251',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('2C91CB380DCC4836B5BB4A75318A3616','1635C309DAA14E56967427D1872E134D',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('33A46D47E84B4C5C892C0877A2BF0F6E','DAE841E093654DB685FF78CA620BEAEA',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('3463A804747E4668808139EF4DF28947','86FE64E462B34ECE99372F7D9F939B83',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('384CC6422A8B482286ADF5D0A1B28518','2942E07965FC48E0ADFC235AB588118E',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('3BA469ABB2C448258E7470C6BA6461CE','CDB07A2CEC3B4AD9B96F660CBBB5C875',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('40A2DFA7A33840829A8F0107CA80088B','3AAFC0A909994F499314CACFFFA9AFFE',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('44FF7884ABB7430DA47FDAA9699BA218','B5262A9285294B00A8667B3959D5A471',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('488E25CB7BAF4B64A65D642C47EA8676','E2AEFAEA58554720BE17E39AC89DC23E',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('48F3FE2614D44ECC83AEF469AE5711A1','EBB93B3ECE854E14BBFF4C571818104F',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('49255D4441CE4CDBAA87BA252D3F9F59','19955EDE6CE64683B34244D4341F3B51',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('4970CDC8CFDF485DADD6D3143E12ED8A','BBAD8872D80C4BC8A39FFD2F46E6421E',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('49F4541F921843F585903AC5D5BD8788','F91A54B203394FF394B8EF1A5B8017F1',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('4BF20768E122415D93BFF1590F736284','B8AE976319A04E1C9AA583B2FA4BF52E',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('4E6ABE9EEE4D443284887266EA149619','F425B43BA5C44C818E9671338CBD7197',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('502AE7BC58014854B5BF1616CE1ED014','3F423618D12341FA8C63FD5683F92C5B',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5345EA2345CB41BFBC4352B22C5A7FB5','BFB144786A94459BA46CA5541B60A500',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5651406434C548129F9D90DFE38C607A','9899FE5AE7EC46E4B8F28FD03E14BE87',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('587372DC3D014BA5ADCBBD3530F26987','FC5FA5993B354E729AFAE7667F0464AD',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5DFEE2353896463D931BF7F31A091156','9D25C26F58B3480B9CEE61C9454B3279',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5E2829FC7208435BA07C8717A4846F16','76CFF7C92D8B44EB8A364AB1E845AB8E',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5E68F129D26A47C99635C6EA6DB06CC7','4E16473190C94034B237D5E2A74953E1',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5E9380EAEBA14E208C3D6CC27C32C4E4','CFDE6FD3995E4B74B23FF72F8836B3BB',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5EC219C2444947B1A5A7EB720AC7D59A','3E41FE45AA954D209735607F70E58198',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('5FCC5FDB336D4B9F8C2453E718519FFE','D7FBC14AE8BE45C6A88A9573E0B862D8',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('633FDAF120F349ABAB3C81AF27EA7EA1','79B5920132F5476EA74CE2C596D3A7E1',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('6392C7F6CA7E4FC682A2DE7D584902CF','3420949420EB4F559209833BE98374A5',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('6424BF8584254F0CBDD41BACFFDB6C23','6C7F9D4724CD436AA1A1A462740C461F',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('660D9A1960E145FB9B56C2E0138501C5','CAE9E7ED400B475E9F494E7560098A32',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('662F269C6D064E44914AD404234CCBB3','D8E5847CEF364EF49CC68D7A1D1F5181',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('66EEF4646A5B49C19986D88940C65833','335F3D2480334FDC8C25381F8DB14151',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('67C2C7EF115F4DF494F40A609067E55B','141540BBD4B841E3B578C4CA8A78A730',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('6AC1055E54F5403C9683293CED9A0C0A','AD30CDEECE074FD3A1ECC93C94DC4103',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('6B1547BE1FE148828290CEC8D8E223A6','FE4C0D754BFA4E67B5081A8DB2BF927A',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('6E6D355AE2014A4AB56B83C7F140ECF1','961E7D47BD1E41E78546BC8071132700',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('72C88758DA8E4E7895DF83AE0ED6555A','DF65EBD4F0414549B85CC3F978BA34A3',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('77293965E4B14387A08D374CEA9E0C7F','DF2437FB5A824D738B836A4205FA1C94',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('78593CC21BE346C9B7C1765741F3F7F7','E606D3AC600A42358AED8881EE0AFC2C',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('785CE40A656845AB9BE4599D1D55040C','F2949C8C382447CDB6E0647D603E9A6E',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('7EB7BDCB02F84132831C3ABBE6C1F050','5A5D03EE265B48BEA4CBECFFED37E5F9',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('872374DD8C9E4E40B00575E463792BDE','C0693B7E6A184BC7B64588673A9A9E21',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('8C2249237AFE463FAB8A121D6752F367','5D1C937A27DC4CAA88E1124CCCD564F2',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('8D109889028347278F0E962944E06FA8','EEB444D2902C4DEF8F6451AC85B60BAE',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('8E7268CFA5FC4A06B1540B12260BC25F','D7E8F5BD67364A4695648CBCE39F094D',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('8F36A372B19F44F980F06C670045AF6E','41B6FDE72AA64BBAB4EB6B0FD916FAB3',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('90C982ABFEDA40FBBF246233D9F05DB3','D195B7033C194BF5A629043AA2CC469E',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('94442CF0577A47C49408DC620A365AB5','9E646DB95B544882825AFE9250FD7251',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('9A807FCD4B85406A871AA466F40B30FC','3A245B65A45E4F0894CC67E32952FE36',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('9AEF5B7870CE42CB96D0324FFC704712','741F4B5750144354A42900EB019EC91E',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('9F32AFFB71964D7E952F6A5AEB360C5F','EC9BB800CF0B47EEA4EC515DEDB830B8',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('9F6E7CB1F1A3436386B0C087D52E0139','420FD4DD3EC0434E98DEC0D8F595DF07',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('A3CCCC68C25B471A876794E39C15CF18','EE97AAA5125F466BA2D6BF73677CFEDD',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('A4F02A144FBA460391FF9825943C42E8','AA90C17588BB4357B349015CF5548C69',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('A5221BAB1F5C4FD4A301971128A4B1DE','8F1E1243EDE34A428B964BC2E68AF1CD',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('A52F610F20D34DE685C867206759FE94','9D4DEEA5756144629519B394C2C30D83',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('A85C598A265E4AF18E1CE01E2ED4E7FF','C589C7E720C14891ADD35298EFED4FFF',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('AB5A66BA11FE48DB833E18F5CDAFB8A8','5B61D57E2DA34E9AA300F9EB502AA757',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('AD63FFEF12F443B5A9C05BF21DD38A25','4FFC118138EB4CCDA53F5C15B9C78F71',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('ADFF0B4F49604200B0D801651CA827BA','E635B7B653084EC18B403D58BB6C0540',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('B1F312952FF94E68B9C6AFC58CBF8D2A','D14185B86DB240FDA86584FA7ED28E58',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('B717A26A7450406FB20C1F7E05E22D0A','5D9D67743D62455F822BD0490C10B9FF',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('B9DC43D0B62A4C088C55A335B9FFEDE4','8D4FC105E0C24716BEC336B7CC618DD9',1,'2018-06-13 20:01:32','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('BCC95F66E3A341709BC1320B41A974E9','A50A5C98E85A4CF9B35537C366EF6A08',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('C144D4966A98479EA972D8D184CA0DC4','612040C80A9F48A38F23D6EED8B76E70',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('CA88C64AD0DA43F38ED1EE7D173F2897','2609946DF342460A9A2F69AF9A92D943',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('CC68F5D423DF4A7AAC7C1D2670CD524D','464B8C67CA624C6B83DD5C2A03A515F0',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('CF5A925FAF8241ED97C2181947BFD7C8','9E3849DBAAD64AB7B8A22C2252EBB282',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('CF72E7FF370B45619C1DFA5B43ACACE4','7202B3A2CA4C40F0B9149C0C3FD6406A',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('D55DBFE2E7F845E28791C93896C1A535','68668ECB51B04BFC9DEBCA19530198E8',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('DB7179DC92B54DEEA8E068007AE3B544','558692E009184F99981D0AB549D08EF7',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('DEE1DB9FD67347BC97BCE94CDC6A0457','9212AEE84CBF4C2C93A985B75D8AF508',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('DFF06A56140D4950A541E75CF531C4BF','22E38C5E04E147AF80753D5BE4B1411B',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E09DD4FE65B04881BF4444C9531C9D8B','D535781855DB4AB7803DC3A205C338EC',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E309801F0D6A49F5BADF6B0942FECC88','6D4B8EC4F1654664B2C54487D7B388CC',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E4A02AF616224200BF1CD657532701B6','775C4B8E2E0E4B9BB59F1FDC11139ACC',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E53E0ECAFA064B0B89C57AE905661870','51B2415F4D834D0380B710D9A855D3A2',1,'2018-06-13 20:01:36','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E5A3FF8C0956413ABEE5AC317B6BA249','B55F7D7D51AB4DCAB33688A55D342408',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E67A7DBAD1B14C788B6ECFFBEE9A6125','54690DF5684E4F46BF311207CD56C7B7',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E86240F76E4E489EBC14A091591F3500','8B1D5F791D934B6199273EA72809B9FC',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('E8DB398105A34BCCA465011DB4E95E40','F04424839249402A8EA3B91780A6A48E',1,'2018-06-13 20:01:34','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('F726470532E3484BBD2A84473DFEC02F','38B1D54E917F48B5BF32F4AD072EB397',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('FC476EB09B75430C8D21668350C23F81','3077474182984A978385C0A974F7E040',1,'2018-06-13 20:01:35','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL),('FD0850D2DCF040E19DFFFDEBFAB8280F','E701868C949B4666A0130D97F07E8ADA',1,'2018-06-13 20:01:33','3B6E8E7ADDC3475CAE16074C34EE0F63',NULL);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` char(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(18) NOT NULL,
  `phoneNumber` char(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `code` char(64) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `u_name_UNIQUE` (`name`),
  UNIQUE KEY `u_tel_num_UNIQUE` (`phoneNumber`),
  UNIQUE KEY `u_email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('22CC32817D834CC0A2C3E1533530EB91','123456','123456','2156','1384','207363147@qq.com',NULL,NULL,'E38E17FA4FB340A68BEE1B862E64E4638B9477C8926A4B519B705E9D625A9B46',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 20:02:41
