
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `php_admin`;
CREATE TABLE `php_admin` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `php_admin` VALUES ('0', '吴洋', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null);
INSERT INTO `php_admin` VALUES ('1', 'wuyang', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `php_admin` VALUES ('2', '董航宇', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_author`;
CREATE TABLE `php_author` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intro` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `wechat` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `php_author` VALUES ('1', '吴洋，董航宇两个热爱PHP的程序员', '编写本教程，帮助更多的想自学PHP的学子开启进入PHP编程世界的大门。', 'duanyuyangyang', '0000-00-00 00:00:00', '2016-10-26 17:16:00', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_head`;
CREATE TABLE `php_head` (
  `hid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `htitle` varchar(50) NOT NULL,
  `hcontent` varchar(100) NOT NULL,
  `hconnect` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `php_head` VALUES ('1', '1', '十天学会［ＰＨＰ］', '从零开始，只需十天，编写你的第一个软件', 'http://www.guestbook.com/show.php', '0000-00-00 00:00:00', '2016-10-26 17:08:38', '0000-00-00 00:00:00');
INSERT INTO `php_head` VALUES ('2', '2', 'PHP提高篇', '经过“十天”的锻炼，你已经入门了，但还需要加油提升', 'http://www.blog.com/', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `php_head` VALUES ('3', '3', 'PHP增强篇', '听过面向对象吗？这里我们用面向对象来完成一个功能全面的BBS', 'http://yw.n.phpxy.com/mybbs/', '0000-00-00 00:00:00', '2016-10-26 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `php_head` VALUES ('4', '4', 'javacript好厉害', ' 看电视剧弗兰克 ', 'www.baidu.com', '2016-10-26 17:10:59', '2016-10-26 17:10:59', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_notify`;
CREATE TABLE `php_notify` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nconnect` varchar(50) NOT NULL,
  `nform` varchar(50) NOT NULL,
  `nname` varchar(50) NOT NULL,
  `ncontent` text NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `php_notify` VALUES ('1', 'first', 'warning', '网站开发学习之路', '<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">网站开发学习之路(网站由哪些部分组成)</h1><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">本课导语：</span></p><p>初学者可能对于网站开发具体需要学习的知识不太清楚，导致学习混乱，所以今天我们来聊</p><p>一聊网站开发需要学习哪些技术！<br/><br/></p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">基本要求：</span><br/>网虫一枚<img src=\"http://img.baidu.com/hi/jx2/j_0058.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0059.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0066.gif\"/></p><p>网站是基于浏览器，所以得首先了解一下浏览器吧！<br/>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">1.网站由哪些部分组成？</span></p><p>从大的方面说组要是由界面和功能两部分，比如现实生活中的车子，光有车子的模型还是不行的，光有个空壳模型车子根本开不了所以既需要界面也需要功能，或者说界面是对功能的表现，此话具有哲学意义.....不懂就算啦！</p><p><br/></p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">1）</span>界面：界面需要 界面设计人员（搞设计的，或者叫美工也可以，这类人具有美术基础对色彩搭配比较熟悉，能做出具有美感的界面） ，先设计出来！在哪里设计？有很多软件例如比较流行的 photoshop，或者 fireworks 之类的图像处理软件，举个不太确定的例子，我们很多女生自拍个照片感觉不太满意，可以放到美图秀秀中处理处理，这个其实就是一个比较简单的处理图像的过程啦。当然我们设计网站界面比处理图片要复杂啦！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">2）</span>我们的设计人员在 photoshop 中设计出了网站的界面， 但是这个界面是在 photoshop中打开的，是一个后缀名为 psd 的文件，相当于是一个整体，而我们需要在浏览器中打开，那么怎么办？这个时候就需要使用photoshop或者 fireworks里面的切图工具把这个整体需要的部分切菜一样切出来，切出来之后，我们需要使用 html，css,代码把各个部分拼到当初设计时对应的位置上（代码肯定是写在文件里面的）, 并且可以使用 js 给我们的网页增加一些特效（当然 js 不适合初学者学习，我们可以学习 JQuery 这个大牛写好的 js 类库来帮助我们减少学习成本就能写出各种华丽的特效，具体的学到就知道啦） ，与之同时可以用浏览器来打开这个文件了,当初在 ps 里面设计好的界面就能在浏览器里面显示啦！</p><p><br/></p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">3）</span>在浏览器里面显示之后我们可以叫他网页，但是这个网页只是展现了内容具体的功能呢？怎么在上面注册会员，登录，发布内容等等呢？这个问题呢待会再说，先来解决一下眼下的问题我们写个这个界面怎么能让其他网友用浏览器看到呢， 因为目前我们只是自娱自乐的在自己的电脑上用自己的浏览器打开啊！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">4）</span>我们需要一台服务器（简单点说就是一台特殊的电脑，这台电脑接入了互联网） ，网站的文章，视频，图片，会员信息等等都是保存在服务器上的（例如保存在服务器上的数据库里面，或者直接是服务器的硬盘上） ，读完这句话肯定会有诸多疑问例如怎么保存啊，服务器去那里找啊等等！</p><p><br/></p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">5）</span>那么电脑怎么就能变成服务器了呢？首先电脑得装个操作系统吧（例如我们常用来做服务器的 Linux 或者我们日常娱乐办公用的 windows 也可以） ，光有安装了操作系统的电脑是肯定不够的，就好比现实生活中的房子，光有空房间肯定不能入住吧，得装好水电煤， 放好床啊等等之类的才能正式入住啊！那么我们的电脑怎么安装好“水电煤”呢？很简单安装一个软件就好了例如 apache这个软件（具体的大家学到对应的课程就知道啦） 。</p><p><br/></p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">6）</span>服务器上装好 apache之后，我们只要把写好的网页上传到服务器上就能被用户通过浏览器来打开对应的域名来浏览我们写的网页了 （当然这中间还涉及很多问题例如怎么上传到服务器上呢，域名是什么啊等等的问题，这个呢大家一步步来学到了对应的地方就知道了） ，用户打开网站之后如果用户想注册，登录，发帖子，发文章，或者例如发微博等等怎么办，这些功能怎么实现呢？这个呢大家学习了 PHP 之类的服务器端的语言就知道啦！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">7）</span>实现功能时还有个重要问题得解决一下就是我们的数据存放在哪里呢？我们的数据例如用户名，密码，用户发的帖子等等，应该放在哪里呢？我们需要一个数据库管理系统， 什么是数据库管理系统呢？这个名字有点吓人啊是不是很高端大气上档次呢！ 这个大家学习了 MySQL 就知道啦！这下差不多了需要的知识技术差不多都大体说出来了，由于技术点比较多，初学者可能会比较乱所以我告诉大家一个学习步骤， 大家按照这个步骤来学习就能把上面所说的那些听起来混乱的知识都学到啦！</p><p>html,css-&gt;安装 apache， MySQL-&gt;php-&gt;使用 MySQL-&gt;js/JQuery(或者 JQuery 在 php之前学习也可以)-&gt;Linux 等等</p><p><br/></p><p>这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印</p><p>跟着我们的视频课程相信大家可以少走许多弯路。！<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p><p><br/></p>', '0000-00-00 00:00:00', '2016-10-26 17:46:47', '0000-00-00 00:00:00');
INSERT INTO `php_notify` VALUES ('2', 'first', 'primary', '初学者建议', '<p><span style=\"font-size: 36px;\"><strong style=\"box-sizing: border-box;\">本课导语：</strong></span></p><p>针对初学者的心态，我感觉非常有必要和各位谈谈我对学习的看法！<br/>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">1.哪门语言好？</span></p><p>不要去纠结关于语言的问题例如 PHP 好还是 JAVA 好，因为这些语言都有自己的一个擅长领域，问这个问题就好比问挖掘机与大巴车拿个好差不多，他们都有自己擅长的领域！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">2.初学者浮躁心态</span></p><p>初学者不要自我陶醉于毫无头绪的混乱的学习中，而不肯沉下心来对某项技术进行系统学习，以为学习可以投机取巧！其实会多走许多弯路，导致任何一门技术都学不会，这简称浮躁，见过很多学习 PHP 的同学连的某个技术的原理都不懂，所以经常问出一些匪夷所思例如“关公战秦琼”的问题？怎么进行系统学习？ 在没有一定的基础知识的积累之前我建议还是挑一个适合自己的书籍，或者挑一个自己喜欢的视频课程进行认真的学习！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">3.遇到问题的解决方法</span></p><p>学习不仅仅是学习技术， 更需要增强自己在学习或者工作中遇到问题的一个自我解决能力！而不是一遇到问题 立马截到群里询问，或者发帖询问，其实别人只能给你提供一个解决思路，具体的还得你自己去慢慢调试！有问题找谷歌， 谷歌搜素专业技术比较强大， 初学者的问题几乎都可以通过搜索来解决，如果实在解决不了就要反思一下自己是不是由于没有认真系统的学习而问出了“关公战秦琼”的话题，如果实在是确定以及一万个肯定解决不了，再询问别人！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; background-color: rgb(255, 255, 0);\">4.技术的更新问题</span></p><p>it技术是在不断的发展更新中，当你的基础学习学的够扎实的时候，你学习新技术的能力会很强，这就是你学习技术的一个根本目的：提高自我学习能力，走上社会不可能还像小学初中或者高中一样，老师站在你身后看着你学习，凡事需要靠自己！</p><p>&nbsp;</p><p><span style=\"box-sizing: border-box; color: rgb(255, 165, 0);\">最后学习没有捷径，需要自己扎实用心的学习，如果真的可以任何人都30天学好那么</span></p><p><span style=\"box-sizing: border-box; color: rgb(255, 165, 0);\">这门技术你认为在社会上还有竞争力吗。</span><br/>&nbsp;</p><p>如果以后还有后续问题我会在（phpstudy.com）网站上更新！</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p>', '0000-00-00 00:00:00', '2016-10-24 14:47:53', '0000-00-00 00:00:00');
INSERT INTO `php_notify` VALUES ('3', 'first', 'success', '为什么学习PHP', '<h1 class=\"single-post__title\" style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin: 5px 0px 25px; font-size: 24px; line-height: 1.1; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\"><strong>为什么学习PHP？</strong></h1><p style=\"box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: normal; margin-top: 5px; margin-bottom: 25px;\"><span style=\"color: rgb(34, 34, 34); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"></span></p><ol style=\"padding: 0px 0px 0px 28px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">PHP入门简单，学习入门易入手。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">很多人反馈上完大学的C语言课程、java课程不会写任何东西。<br/>诚然，中国的大学都以C语言作为主要的入门语言。但是，我们认为PHP是最简单入门，也是最合适入门的语言。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">你将学习到编程的思路，更加程序化的去处理问题。处理问题，将会更加规范化。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">如果你要创业，如果你要与互联网人沟通。未来互联网、移动互联网、信息化将会进一步围绕在你身边。你需要与人沟通，与人打交道。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">还有机会进入BAT（百度、阿里、腾讯），BAT这些企业他们在用PHP。国内和国外超一线的互联网公司，在超过90%在使用PHP来做手机API或者是网站。连微信等开放平台中的公众号的服务端也可以使用到PHP。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">大并发，还能免费。一天1个亿的访问量怎么办？PHP拥有大量优秀的开发者，在一定数据量的情况下完全能满足你的需求。国内外一线的互联网公司，很多将自己的大并发方案进行开源了。你可以免费获得很多成熟的、免费的、开源的大并发解决方案。</p></li><li><p style=\"padding: 0px; -webkit-tap-highlight-color: transparent; margin-top: 5px; margin-bottom: 25px;\">开源更加节约成本也更加安全。windows很多都要收取授权费用，而使用linux的LAMP架构或者LNMP架构会更加安全。全球的黑客在帮你找漏洞。全球的工程师在帮忙修复漏洞。你发现一个他人已经消灭10个。</p></li></ol><p style=\"box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 1em; white-space: normal; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: normal;\"><img src=\"/ueditor/php/upload/image/20161027/1477546263668455.png\" title=\"1477546263668455.png\" alt=\"php.png\"/></p><p style=\"box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 1em; white-space: normal; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: normal;\"><span style=\"font-family: sans-serif; font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>', '0000-00-00 00:00:00', '2016-10-27 13:31:32', '0000-00-00 00:00:00');
INSERT INTO `php_notify` VALUES ('4', 'first', 'danger', '为什么有人学不会PHP', '<h1 class=\"single-post__title\" style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin: 20px 0px; font-size: 24px; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"><strong>为什么有人学不会PHP？</strong></h1><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">作为写了几年程序的人，我听到了太多的人去抱怨说不好。从我目前见到的数据统计，我认为有不到1%的人学不好程序。而这1%的人，他们的思维模式和我们遇到的大多数人不太一样。主要是因为社会、文化、背景、生活圈子多方面造成的。而不是因为笨。</p><h2 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-tap-highlight-color: transparent;\"><span style=\"background-color: rgb(255, 255, 0);\"><strong style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;\">懒</strong></span></h2><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">人的天性有善有恶，而学不好程序的人，身上的一个通病，只有一个字就是————懒！&nbsp;<br/>基本语法，需要去背&nbsp;<br/>函数需要去默写</p><h2 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-tap-highlight-color: transparent;\"><strong><span style=\"background-color: rgb(255, 255, 0);\">自以为是</span></strong></h2><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">一看就会，一写就错。以为自己是神童。</p><h4 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; -webkit-tap-highlight-color: transparent;\"><span style=\"background-color: rgb(255, 255, 0);\"><strong style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;\">英文单词</strong></span></h4><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">计算机里面常用的英文单词就那么一些。&nbsp;<br/>不要找英语的借口。本书会把英语单词都会跟你标注出来。看到不会的，就去翻一翻。</p><h2 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-tap-highlight-color: transparent;\"><span style=\"background-color: rgb(255, 255, 0);\"><strong style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;\">不坚持</strong></span></h2><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">学着学着就放弃了。</p><h2 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-tap-highlight-color: transparent;\"><span style=\"background-color: rgb(255, 255, 0);\"><strong style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;\">不去提问，不会提问，不去思考</strong></span></h2><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">解决问题前，先去搜索&nbsp;<br/>搜索解决不了再去提问&nbsp;<br/>大多数的人，不把问题详述清楚，不把代码贴完全。&nbsp;<br/>张嘴就来提问。我想神仙也不知道你的问题是什么吧？问题发出来前。换位思考一下自己看不看得懂这个问题。</p><h2 style=\"white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 27.132px; color: rgb(34, 34, 34); margin: 0px 0px 1em; font-size: 1.2em; position: relative; padding: 0px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-tap-highlight-color: transparent;\"><span style=\"background-color: rgb(255, 255, 0);\"><strong style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;\">你还需要自我鼓励</strong></span></h2><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\">在学习过程中，你会否定自己。其实任何人都会。大多数人都会遇到跟你一样的困难。只不过他们在克服困难，而一些人在逃避困难。</p><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\"><span style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15.96px; line-height: 27.132px;\">学累的时候，放松一会儿。再去多读几遍。不断的告诉自己，你就是最棒的！</span></p><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\"><span style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15.96px; line-height: 27.132px;\">学会交流和倾诉而非抱怨，并且不断的自我鼓励。Trust me,You can do it !</span></p><p style=\"margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-size: 15.96px; line-height: 27.132px;\"><span style=\"box-sizing: border-box; font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15.96px; line-height: 27.132px;\"><img src=\"/ueditor/php/upload/image/20161027/1477540397350321.jpg\" title=\"1477540397350321.jpg\" alt=\"child.jpg\"/></span></p><p style=\"white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br/></p>', '0000-00-00 00:00:00', '2016-10-27 13:19:45', '0000-00-00 00:00:00');
INSERT INTO `php_notify` VALUES ('6', 'first', 'info', '联系我们', '<p>飞天的姿态<br/></p>', '2016-10-21 20:39:16', '2016-10-27 13:37:43', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_resource`;
CREATE TABLE `php_resource` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL,
  `rconnect` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `php_resource` VALUES ('1', 'Xampp套件', 'http://www.apachefriends.org/zh_cn/index.html', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `php_resource` VALUES ('2', 'PHP官方手册', 'http://php.net/manual/zh/', '0000-00-00 00:00:00', '2016-10-26 17:15:11', '0000-00-00 00:00:00');
INSERT INTO `php_resource` VALUES ('3', 'NetBeans 代码编辑器', 'http://netbeans.org/downloads/', '0000-00-00 00:00:00', '2016-10-26 17:15:09', '0000-00-00 00:00:00');
INSERT INTO `php_resource` VALUES ('4', 'AppServ套件', 'https://www.appserv.org/en/', '0000-00-00 00:00:00', '2016-10-26 17:15:06', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_section`;
CREATE TABLE `php_section` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stopic` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `sconnect` varchar(50) NOT NULL,
  `sform` varchar(20) NOT NULL,
  `scontent` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `php_section` VALUES ('1', '零基础入门', '十天学会PHP', 'show', 'success', '学习PHP，一点都不难。直接跟着实战项目走，十天入门，十天出成果。', '0000-00-00 00:00:00', '2016-10-26 17:27:18', '0000-00-00 00:00:00');
INSERT INTO `php_section` VALUES ('2', '十天后提高', 'PHP提高篇（开发博客）', 'show', 'warning', '十天之后，进入一个入门后懵懂待提高的阶段，是时候开发一套完整的程序了。', null, '2016-10-26 17:27:47', '0000-00-00 00:00:00');
INSERT INTO `php_section` VALUES ('3', '想玩玩论坛吗', 'PHP增强篇（开发BBS）', 'show', 'primary', '现在你已经有一定的开发能力了，大学时玩过BBS吗？来，你也可以做到。', null, null, '0000-00-00 00:00:00');
INSERT INTO `php_section` VALUES ('4', '酷炫的JavaScript', '深入浅出JavaScript', 'show', 'info', '想让网站更加酷炫吗？用起来更爽吗?Javascript让我们的网站show起来。', null, '2016-10-26 17:20:09', '0000-00-00 00:00:00');
INSERT INTO `php_section` VALUES ('5', '酷炫的JavaScript', '深入浅出JavaScript', 'show', 'success', '想让网站更加酷炫吗？用起来更爽吗?Javascript让我们的网站show起来', '2016-10-21 20:10:09', '2016-10-26 17:20:12', '0000-00-00 00:00:00');
INSERT INTO `php_section` VALUES ('6', '酷炫的JavaScript', '深入浅出JavaScript', 'show', 'success', '想让网站更加酷炫吗？用起来更爽吗?Javascript让我们的网站show起来', '2016-10-21 20:10:09', '2016-10-21 20:10:09', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_teacher`;
CREATE TABLE `php_teacher` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `wisdom` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL,
  `summary` text NOT NULL,
  `connect` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `php_teacher` VALUES ('1', '2', '韩顺平', '坚持自己的选择，当你将放弃当作一种习惯，你一辈子也不会有出息。', 'hsp', '韩顺平，毕业于清华大学，国内著名的软件培训高级讲师，先后在新浪、点击科技、用友就职韩顺平拥有九年大型项目开管理经验，曾任新浪网软件项目经理，使用PHP与JavaEE技术开发新浪网系统，北京点击科技公司高级软件工程师，用友软件股份有限公司U8事业部软件工程师，具有丰富的互联网开发经验，韩老师告诉我们说，成功其实也不难，只要树立一个目标，不需要你是一个很强的人，不需要你很高智商，不需要你是千里马，你只要像老黄牛一样，每天哪怕做一点点，往目标前进一点点，你就会成功。可是成功又很难，因为在通往成功的路上，很少人能够坚持下来。在坚持的过程中，很多人都选择了放弃“。', 'video', '0000-00-00 00:00:00', '2016-10-21 20:43:47', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('2', '1', '李文凯', '发上等愿，结中等缘，享下等福', 'lwk', '李文凯，曾任缤纷生活首席技术官（CTO）负责过国内知名上市企业三一重工等企业级PHP培训和信息架构技术咨询国内最大的新媒体内容管理系统——CmsTop产品研发部经理，必趣产品技术顾问担任自考在线项目总监成功收购中国自考网并改版主持完成社交平台、O2O系统、社交系统、CMS、商城和即时通信等多种不同系统的研发；负责山东卫视、参考消息、中青网等多个大型项目研发和管理工作在自考在线期间：实现站群架构加盟模式的在线教育系统；参与国内使用最多的PHP框架，ThinkPHP的贡献和ThinkPHP视频录制，下载量高达100万；微信公众号开发视频，高达20万的下载量；完成PHP开源书籍——《七天学会PHP》；完成MySQL开源书籍——《三天入门MySQL》', 'video', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('3', '3', '亮哥', 'Talk is cheap. Show me the code', 'lg', '互联网一线摸爬滚打十余年，目前讲授以实战为基础的PHP入门教程，从业互联网十余年，从技术、技术管理到就业授课，亮哥', 'video', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('4', '5', '吴洋', '', '', '', '', '2016-10-24 14:24:31', '2016-10-24 14:24:31', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('5', '1', '亮哥', '不要死记硬背，下面有实战的课程，实战 + 语法交互学习，才能真正进步', 'lg', '互联网一线摸爬滚打十余年，目前讲授以实战为基础的PHP入门教程，从业互联网十余年，从技术、技术管理到就业授课，崇尚实战，在实战中学习，语法很简单，时间用到都能学会。  实战要经验，一定的代码量 + 正确的思考 + 借鉴优秀的经验 = 过关', 'video', '2016-10-24 15:16:42', '2016-10-24 15:25:43', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('6', '2', '亮哥', '不要死记硬背，下面有实战的课程，实战 + 语法交互学习，才能真正进步', 'lg', '互联网一线摸爬滚打十余年，目前讲授以实战为基础的PHP入门教程，从业互联网十余年，从技术、技术管理到就业授课，崇尚实战，在实战中学习，语法很简单，时间用到都能学会。  实战要经验，一定的代码量 + 正确的思考 + 借鉴优秀的经验 = 过关', 'video', '2016-10-24 16:35:54', '2016-10-26 20:44:01', '0000-00-00 00:00:00');
INSERT INTO `php_teacher` VALUES ('9', '2', '李文凯', '你们要好好学习哦', 'lwk', '李文凯，曾任缤纷生活首席技术官（CTO）负责过国内知名上市企业三一重工等企业级PHP培训和信息架构技术咨询国内最大的新媒体内容管理系统——CmsTop产品研发部经理，必趣产品技术顾问担任自考在线项目总监成功收购中国自考网并改版主持完成社交平台、O2O系统、社交系统、CMS、商城和即时通信等多种不同系统的研发；负责山东卫视、参考消息、中青网等多个大型项目研发和管理工作在自考在线期间：实现站群架构加盟模式的在线教育系统；参与国内使用最多的PHP框架，ThinkPHP的贡献和ThinkPHP视频录制，下载量高达100万；微信公众号开发视频，高达20万的下载量；完成PHP开源书籍——《七天学会PHP》；完成MySQL开源书籍——《三天入门MySQL》', 'video', '2016-10-26 19:16:34', '2016-10-27 09:44:54', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_user`;
CREATE TABLE `php_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

INSERT INTO `php_user` VALUES ('47', 'wuyang', '9868c0f8926a5f6f84a16f0d2c107c90', '2541553191@qq.com', '2016-10-19 16:28:34', '2016-10-26 17:29:57', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('51', 'donghangyu', '74be16979710d4c4e7c6647856088456', '1@qq.com', '2016-10-21 21:16:34', '2016-10-26 15:50:21', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('52', 'wuyangla', '2da73ac068b5fd5b4782e4be36401596', '254155311@qq.com', '2016-10-22 15:43:07', '2016-10-26 17:54:53', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('53', 'wuque', '6f96b66b4f059d911e2ae8b61d0d9c2b', '254155319@qq.com', '2016-10-24 14:42:56', '2016-10-26 17:54:56', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('54', 'wuyanghehe', '742bd588f6a72736001271a73978d80d', '25415531@qq.com', '2016-10-26 14:51:18', '2016-10-26 15:50:31', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('55', 'donghang', 'b43bed16d5e6a0894102919fa27fbb9b', '2@qq.com', '2016-10-26 15:28:40', '2016-10-26 15:29:56', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('56', 'yangyang', '1cdf336760ef0dcb120f01bd22b04925', '25415191@qq.com', '2016-10-26 16:03:21', '2016-10-26 16:03:21', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('57', 'lalala', '9aa6e5f2256c17d2d430b100032b997c', '254155314@qq.com', '2016-10-26 17:57:27', '2016-10-26 17:57:27', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('58', 'song', 'b5ecb3e338a93c686f3716836bceac27', '123@qq.com', '2016-10-27 16:42:15', '2016-10-27 16:42:15', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('59', 'wuyangyang', '343b1c4a3ea721b2d640fc8700db0f36', '2541553112@qq.com', '2016-10-28 08:55:54', '2016-10-28 08:55:54', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('60', 'wuyanghaha', '9868c0f8926a5f6f84a16f0d2c107c90', '2541553445@qq.com', '2016-10-28 14:05:17', '2016-10-28 14:05:17', '0000-00-00 00:00:00');
INSERT INTO `php_user` VALUES ('61', 'wuyanglala', '9868c0f8926a5f6f84a16f0d2c107c90', '25415534411@qq.com', '2016-10-28 14:05:53', '2016-10-28 14:05:53', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_video`;
CREATE TABLE `php_video` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `vname` varchar(50) NOT NULL,
  `vconnect` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `php_video` VALUES ('1', '1', '2', '十天学会PHP', 'https://pan.baidu.com/s/1nuSUv37', '0000-00-00 00:00:00', '2016-10-26 20:37:57', '0000-00-00 00:00:00');
INSERT INTO `php_video` VALUES ('2', '2', '1', '10天php留言板视频', 'https://pan.baidu.com/s/1dECpGkT', '0000-00-00 00:00:00', '2016-10-26 20:35:44', '0000-00-00 00:00:00');
INSERT INTO `php_video` VALUES ('3', '5', '1', '十天学会PHP', 'https://pan.baidu.com/s/1c1Vo0EG', '2016-10-24 15:27:21', '2016-10-26 17:13:48', '0000-00-00 00:00:00');
INSERT INTO `php_video` VALUES ('4', '9', '2', '博客视频', 'https://pan.baidu.com/s/1qXT4oaw', '2016-10-26 19:17:40', '2016-10-26 20:39:05', '0000-00-00 00:00:00');
INSERT INTO `php_video` VALUES ('6', '6', '2', 'PHP提高篇', 'https://pan.baidu.com/s/1hs5Ekvy', '2016-10-26 20:40:38', '2016-10-26 20:40:38', '0000-00-00 00:00:00');
INSERT INTO `php_video` VALUES ('7', '3', '3', 'php大型实战', 'https://pan.baidu.com/s/1dFLtytr', '2016-10-26 20:53:21', '2016-10-26 20:53:21', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `php_words`;
CREATE TABLE `php_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

INSERT INTO `php_words` VALUES ('1', 'wuyang', '我是真的真的特别喜欢的', '2016-10-24 21:33:13', '2016-10-27 21:15:05', '2016-10-27 21:15:05');
INSERT INTO `php_words` VALUES ('2', 'wuyang', '欲穷千里目，更上一层楼', '2016-10-24 21:34:17', '2016-10-27 21:15:07', '2016-10-27 21:15:07');
INSERT INTO `php_words` VALUES ('3', 'wuyang', '这个视频不错的，继续努力哦', '2016-10-25 09:05:27', '2016-10-27 21:15:08', '2016-10-27 21:15:08');
INSERT INTO `php_words` VALUES ('4', 'wuyang', '感觉很受益，谢谢作者的更新', '2016-10-25 09:07:01', '2016-10-27 21:15:10', '2016-10-27 21:15:10');
INSERT INTO `php_words` VALUES ('5', 'wuque', '真的在上面的视频都特别经典，直接实战，自己做出来东西的感觉特别好', '2016-10-25 09:08:16', '2016-10-27 21:15:12', '2016-10-27 21:15:12');
INSERT INTO `php_words` VALUES ('6', 'wuque', '真的在上面的视频都特别经典，直接实战，自己做出来东西的感觉特别好', '2016-10-25 09:10:28', '2016-10-27 21:15:13', '2016-10-27 21:15:13');
INSERT INTO `php_words` VALUES ('7', 'wuque', '确实感觉少走了很多弯路', '2016-10-25 09:19:09', '2016-10-28 14:14:21', '2016-10-28 14:14:21');
INSERT INTO `php_words` VALUES ('8', 'wuque', '确实感觉少走了很多弯路', '2016-10-25 09:20:00', '2016-10-28 14:14:25', '2016-10-28 14:14:25');
INSERT INTO `php_words` VALUES ('9', 'wuque', '确实感觉少走了很多弯路', '2016-10-25 09:20:32', '2016-10-27 19:30:52', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('11', 'wuque', '我来留言看看合适不合适萨顶顶撒大', '2016-10-25 10:16:02', '2016-10-27 19:30:58', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('12', 'wuque', 'asdsadsadsadsadsadsa', '2016-10-25 10:21:45', '2016-10-27 19:30:59', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('13', 'wuque', 'dsadsadsadsadsadsadsa', '2016-10-25 10:23:07', '2016-10-27 19:31:01', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('14', 'wuque', 'dsfdsfdsfdsfdsfdsfdsfdsfds', '2016-10-25 10:30:54', '2016-10-27 19:31:03', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('15', 'wuque', '111111dsfdsfdsfdsfdsfdsfdsfdsfdsfsfdsf', '2016-10-25 10:31:11', '2016-10-27 19:31:06', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('16', 'wuque', '333333333333333333333333333333', '2016-10-25 10:33:52', '2016-10-27 19:46:26', '2016-10-27 19:46:26');
INSERT INTO `php_words` VALUES ('17', 'wuque', '发来得及分类的规范cdf咯', '2016-10-25 10:51:10', '2016-10-27 19:46:27', '2016-10-27 19:46:27');
INSERT INTO `php_words` VALUES ('18', 'wuque', '我是真的真的好喜喜欢你的', '2016-10-25 11:01:00', '2016-10-27 19:46:29', '2016-10-27 19:46:29');
INSERT INTO `php_words` VALUES ('19', 'wuyang', 'dfdfdfdfedfdf', '2016-10-25 11:07:25', '2016-10-27 19:46:31', '2016-10-27 19:46:31');
INSERT INTO `php_words` VALUES ('20', 'wuyang', 'dsadgfgfgfgffgfg', '2016-10-25 11:07:40', '2016-10-27 19:46:33', '2016-10-27 19:46:33');
INSERT INTO `php_words` VALUES ('21', 'wuyang', 'dddddddddddf', '2016-10-25 11:10:27', '2016-10-25 11:10:27', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('22', 'wuyang', 'woyaljlgo jdlfjlkdfdf', '2016-10-25 11:15:31', '2016-10-25 11:15:31', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('23', 'wuyang', 'ljlkdjflasjfdkfjdklf', '2016-10-25 11:16:44', '2016-10-25 11:16:44', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('24', 'wuyang', 'ljlkdjflasjfdkfjdklf', '2016-10-25 11:16:50', '2016-10-25 11:16:50', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('25', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:20:14', '2016-10-25 11:20:14', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('26', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:20:18', '2016-10-25 11:20:18', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('27', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:20:27', '2016-10-25 11:20:27', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('31', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印eer', '2016-10-25 11:23:22', '2016-10-25 11:23:22', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('32', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印eeradfdfdf', '2016-10-25 11:24:49', '2016-10-25 11:24:49', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('33', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印eeradfdfdf', '2016-10-25 11:24:57', '2016-10-25 11:24:57', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('34', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印eeradfdfdf', '2016-10-25 11:25:06', '2016-10-25 11:25:06', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('35', 'wuyang', '111111111111', '2016-10-25 11:27:18', '2016-10-25 11:27:18', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('36', 'wuyang', '22222333333333', '2016-10-25 11:27:29', '2016-10-25 11:27:29', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('37', 'wuyang', '22222333333333', '2016-10-25 11:27:58', '2016-10-25 11:27:58', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('38', 'wuyang', '跟着我们的视频课程相信大家可以少走许多弯路', '2016-10-25 11:37:20', '2016-10-25 11:37:20', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('39', 'wuyang', '跟着我们的视频课程相信大家可以少走许多弯路', '2016-10-25 11:37:25', '2016-10-25 11:37:25', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('40', 'wuyang', '跟着我们的视频课程相信大家可以少走许多弯路', '2016-10-25 11:37:28', '2016-10-25 11:37:28', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('41', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:37:54', '2016-10-25 11:37:54', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('42', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:38:00', '2016-10-25 11:38:00', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('43', 'wuyang', '这在一路的学习过程中你会遇到各种知识点，或者会感觉混乱，大家不用害怕一步一脚脚印', '2016-10-25 11:38:04', '2016-10-25 11:38:04', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('44', 'wuyang', '我是真的真的狠狠爱爱啊你', '2016-10-25 11:55:43', '2016-10-25 11:55:43', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('45', 'wuyang', '我是真的真的真的很爱你', '2016-10-25 13:05:40', '2016-10-25 13:05:40', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('46', 'wuyang', 'ddddddddddddddddd', '2016-10-25 13:06:03', '2016-10-25 13:06:03', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('47', 'wuyang', 'eeeeeeeeeeeeee', '2016-10-25 13:06:28', '2016-10-25 13:06:28', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('48', 'wuyang', 'qqqqqqqqqqqqqqqqqqqqqq', '2016-10-25 13:07:39', '2016-10-25 13:07:39', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('49', 'wuyang', '我我我我我哦我我我我我', '2016-10-25 13:08:28', '2016-10-25 13:08:28', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('50', 'wuyang', '我我我我我哦我我我我我', '2016-10-25 13:08:39', '2016-10-25 13:08:39', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('51', 'wuyang', '解放啦看见对方立刻大解放路口等级分类的看法', '2016-10-25 16:53:10', '2016-10-25 16:53:10', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('52', 'wuyang', '学者可能会比较乱所以我告诉大家一个学习步骤', '2016-10-25 21:03:25', '2016-10-25 21:03:25', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('53', 'wuyang', '我我我我我我我我我我我我', '2016-10-26 10:51:42', '2016-10-26 10:51:42', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('54', 'wuyang', '我我我我我我我我我我我我', '2016-10-26 10:52:42', '2016-10-26 10:52:42', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('55', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 10:54:41', '2016-10-26 10:54:41', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('56', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 10:56:31', '2016-10-26 10:56:31', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('57', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 10:57:42', '2016-10-26 10:57:42', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('58', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 10:58:31', '2016-10-26 10:58:31', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('59', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 11:00:08', '2016-10-26 11:00:08', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('60', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 11:00:25', '2016-10-26 11:00:25', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('61', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 11:01:12', '2016-10-26 11:01:12', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('62', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 11:02:33', '2016-10-26 11:02:33', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('63', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 11:03:26', '2016-10-26 11:03:26', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('64', 'wuyang', '实现功能时还有个重要问题得解决', '2016-10-26 12:01:04', '2016-10-26 12:01:04', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('65', 'wuyang', '系统呢？这个名字有点吓人啊是不是很高', '2016-10-26 12:02:43', '2016-10-26 12:02:43', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('66', 'wuyang', '一定要好好学习，在北京立足', '2016-10-26 13:21:15', '2016-10-26 13:21:15', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('67', 'wuyang', '跟着我们的视频课程相信大家可以少走许多弯路', '2016-10-26 13:22:13', '2016-10-26 13:22:13', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('68', 'wuyang', '我感觉现在的学习状态还不错的', '2016-10-26 13:23:49', '2016-10-26 13:23:49', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('69', 'wuyang', '问苍茫大地，谁主沉浮', '2016-10-26 13:38:24', '2016-10-26 13:38:24', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('70', 'wuyang', '问苍茫大地谁主沉浮f', '2016-10-26 13:38:39', '2016-10-26 13:38:39', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('71', 'wuyang', '跟着我们的视频课程相信大家', '2016-10-26 13:56:45', '2016-10-26 13:56:45', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('72', 'yangyang', '过分的话继父回家规划局', '2016-10-26 17:31:50', '2016-10-26 17:31:50', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('73', 'yangyang', '过分的话继父回家规划局', '2016-10-26 17:32:16', '2016-10-26 17:32:16', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('74', 'lalala', '吴洋吴洋吴洋吴洋吴洋', '2016-10-26 17:58:34', '2016-10-26 17:58:34', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('75', 'lalala', '跟着我们的视频课程相信大家可以少走许多弯路', '2016-10-26 19:43:08', '2016-10-26 19:43:08', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('76', 'wuyang', '我爱你我爱你我爱你我爱你', '2016-10-27 09:04:31', '2016-10-27 09:04:31', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('77', 'wuyang', '这个项目很简单，但是我很喜欢的。', '2016-10-27 13:17:54', '2016-10-27 20:36:34', '2016-10-27 20:36:34');
INSERT INTO `php_words` VALUES ('78', 'wuyang', '希望可以出个thinkphp5框架篇的视频', '2016-10-27 14:31:11', '2016-10-27 20:36:30', '2016-10-27 20:36:30');
INSERT INTO `php_words` VALUES ('79', 'wuyang', 'php工程师,你好啊的发的', '2016-10-27 16:45:50', '2016-10-27 20:36:27', '2016-10-27 20:36:27');
INSERT INTO `php_words` VALUES ('80', 'wuyang', 'php工程师,你好啊的发的', '2016-10-27 16:46:03', '2016-10-27 20:36:24', '2016-10-27 20:36:24');
INSERT INTO `php_words` VALUES ('81', 'wuyang', 'dhfkjds hkj sajfjs ', '2016-10-27 17:06:19', '2016-10-27 20:36:21', '2016-10-27 20:36:21');
INSERT INTO `php_words` VALUES ('82', 'wuyang', 'dhfkjds hkj sajfjs ', '2016-10-27 17:06:26', '2016-10-27 20:36:18', '2016-10-27 20:36:18');
INSERT INTO `php_words` VALUES ('83', 'wuyang', 'dhfkjds hkj sajfjs ', '2016-10-27 17:06:38', '2016-10-27 20:36:15', '2016-10-27 20:36:15');
INSERT INTO `php_words` VALUES ('84', 'wuyang', 'dhfkjds hkj sajfjs ', '2016-10-27 17:06:47', '2016-10-27 20:36:13', '2016-10-27 20:36:13');
INSERT INTO `php_words` VALUES ('85', 'wuyang', '我会坚强分手，独自泪流', '2016-10-27 17:23:34', '2016-10-27 20:36:10', '2016-10-27 20:36:10');
INSERT INTO `php_words` VALUES ('86', 'wuyang', 'dfdfdfdfdfdfdfdf', '2016-10-27 21:19:59', '2016-10-27 21:19:59', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('87', 'wuyangyang', 'ddddddddddddd', '2016-10-28 08:56:29', '2016-10-28 08:56:29', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('88', 'wuyangyang', 'fdddddddddd', '2016-10-28 09:59:52', '2016-10-28 09:59:52', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('89', 'wuyangyang', 'fdddddddddd', '2016-10-28 10:00:10', '2016-10-28 10:00:10', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('90', 'wuyanghaha', 'woshizhende jdlkdfjd', '2016-10-28 14:07:04', '2016-10-28 14:07:04', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('91', 'wuyang', 'aaaaaaaaaaaa', '2016-10-28 19:51:49', '2016-10-28 19:51:49', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('92', 'wuyang', 'aaaaaaaaaaaa', '2016-10-28 19:52:24', '2016-10-28 19:52:24', '0000-00-00 00:00:00');
INSERT INTO `php_words` VALUES ('93', 'wuyang', '吴洋吴洋吴洋吴洋吴洋吴洋吴洋吴洋', '2016-10-28 19:53:08', '2016-10-28 19:53:08', '0000-00-00 00:00:00')
