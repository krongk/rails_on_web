#步骤：
#1. format title
#2. format content
#3. copy to hexun_post_format

INSURANCES =[
中国人寿,新华人寿, 泰康人寿, 合众人寿, 平安人寿, 太平洋人寿, 长城保险, 华泰人寿, 太平人寿, 友邦保险,
信诚人寿, 中英人寿, 中宏人寿, 首创安泰, 中航三星, 广电日生人寿, 太平洋安泰, 中德安联人寿, 恒安标准人寿]

SELECT is_processed, count(*) from wenba_run_key group by 1;
SELECT count(*) from wenba_post;
SELECT is_processed, count(*) from wenba_post group by 1;

SELECT mod(0,3);
#
set @id = 0;
update wenba_run_key set batch_id = ( @id := mod(@id + 1, 3));
SELECT batch_id, count(*) from wenba_run_key group by 1;

#
SELECT * from resume where is_exported = 'n';

create database kapow_logdb_xj


#
SELECT is_processed, count(*) from hexun_run_key group by 1;
SELECT count(*) from hexun_post;

SELECT * from wenba_post where is_processed = 'f' LIMIT 100;

update hexun_run_key set is_processed = 'n' where is_processed in('-','c','x')
update wenba_run_key set is_processed = 'n' where is_processed in('f');

update wenba_post set is_processed = 'n' where is_processed = 'f' LIMIT 100;

#category
SELECT r.category, count(*) from hexun_post p JOIN hexun_run_key r on p.hexun_run_key_id = r.id group by 1 order by count(*) desc;
SELECT r.category, count(*) from wenba_post p JOIN wenba_run_key r on p.run_key_id = r.id group by 1 order by count(*) desc;

SELECT category from hexun_run_key group by 1;
SELECT category from wenba_run_key group by 1;

#post

#1.---------------------------------------------------- format title
SELECT title, count(*) from hexun_post group by 1;
SELECT title, count(*) from hexun_post where title REGEXP '？�' group by 1;

update hexun_post set title = replace(title, '・', '.');
update hexun_post set title = replace(title, '？�', '');
update hexun_post set title = replace(title, '\(图表\)', '');

#2.----------------------------------------------------- format content
update hexun_post set content = replace(content, '咨询电话：22843999 12333', '');
update hexun_post set content = replace(content, '推荐阅读', '');
update hexun_post set content = replace(content, '保险市场周刊保险周刊：人保挂牌38亿出售“华闻系”资产', '');
update hexun_post set content = replace(content, '乳协赔偿账单再起波澜', '');
update hexun_post set content = replace(content, '*  投连险货币型账户最保险', '');
update hexun_post set content = replace(content, '*  一季度银行代理保费同比下降15%', '');
update hexun_post set content = replace(content, '*  买保险当心“炒停营销”陷阱', '');
update hexun_post set content = replace(content, '*  人身保险金能当作遗产继承吗？', '');
update hexun_post set content = replace(content, '*  破译操盘密码 掌握主力动向', '');

update hexun_post set content = replace(content, '将本文分享至：', '');
update hexun_post set content = replace(content, '分享到和讯微博\n|\n', '');
update hexun_post set content = replace(content, '分享到新浪微博\n|\n', '');
update hexun_post set content = replace(content, '分享到搜狐微博\n|\n', '');
update hexun_post set content = replace(content, '分享到腾讯微博\n|\n', '');
update hexun_post set content = replace(content, '分享到开心网\n|\n', '');
update hexun_post set content = replace(content, '分享到人人网\n|\n', '');
update hexun_post set content = replace(content, '分享到豆瓣网\n|\n', '');
update hexun_post set content = replace(content, '分享到豆瓣网\n', '');
update hexun_post set content = replace(content, '分享到qq空间\n|\n', '');
#
update hexun_post set content = replace(content, '【免责声明】本文仅代表作者本人观点，与和讯网无关。和讯网站对文中陈述、观点判断保持中立，不对所包含内容的准确性、可靠性或完整性提供任何明示或暗示的保证。请读者仅作参考，并请自行承担全部责任。', '');
update hexun_post set content = replace(content, '(责任编辑：HN031)\n', '');
update hexun_post set content = replace(content, '(责任编辑：王涛)\n', '');

update hexun_post set content = replace(content, '●', '● ');

update hexun_post set content = replace(content, '■', '● ');

update hexun_post set content = replace(content, '保险市场周刊保险周刊：卷入海欣股份风波 平安资管遭调查', '');
update hexun_post set content = replace(content, '社保50亿押宝中国南车', '');
update hexun_post set content = replace(content, '* 人保集团整体上市倒计时', '');
update hexun_post set content = replace(content, '* 快返分红险落后通胀透支保障', '');
update hexun_post set content = replace(content, '* 多家保险公司或再争CBD地块', '');
update hexun_post set content = replace(content, '* 险企打响客户保卫战', '');
update hexun_post set content = replace(content, '* 破译操盘密码 掌握主力动向', '');

update hexun_post set content = replace(content, '平安资管遭调查', '');
update hexun_post set content = replace(content, '* 前5月三大财险巨头保费强劲增长', '');
update hexun_post set content = replace(content, '* 5月投连险仅25%账户正收益', '');
update hexun_post set content = replace(content, '* 海航系入股华安保险 共持股19.6%', '');
update hexun_post set content = replace(content, '* 国内首款变额年金保险面世', '');

update hexun_post set content = replace(content, '（300）\n', '');
update hexun_post set content = replace(content, ',股吧)', ')');

update hexun_post set content = replace(content, '点击查看本期《理财周刊》杂志更多文章', ')');
update hexun_post set content = replace(content, '点击查看本期《投资与理财》杂志更多文章', ')');

update hexun_post set content = replace(content, '人保大手笔背后藏玄机\n', '');
update hexun_post set content = replace(content, '* 航空资本全线进军保险业\n', '');
update hexun_post set content = replace(content, '* 保险股业绩小增 机构态度慎重\n', '');
update hexun_post set content = replace(content, '* 网上行销受保险代理人青睐\n', '');
update hexun_post set content = replace(content, '* 三管齐下 不给假保单可乘之机\n', '');

update hexun_post set content = replace(content, '保监会重罚违规行为\n', '');
update hexun_post set content = replace(content, '* 社保基金出资100亿入股人保集团\n', '');
update hexun_post set content = replace(content, '* 中国人寿4.7亿增持华能新能源\n', '');
update hexun_post set content = replace(content, '* 应对“毒”食品 加道保险过滤网\n', '');
update hexun_post set content = replace(content, '* 保险当定存卖 生存金返还成奖励\n', '');

update hexun_post set content = replace(content, '\n1\n', '');
update hexun_post set content = replace(content, '\n2\n', '');
update hexun_post set content = replace(content, '\n3\n', '');
update hexun_post set content = replace(content, '\n4\n', '');
update hexun_post set content = replace(content, '\n5\n', '');
update hexun_post set content = replace(content, '下一页\n', '');
update hexun_post set content = replace(content, '第1页:第2页:\n', '');

update hexun_post set content = replace(content, '刘德华作画鼓励刘翔：会永远支持你(图)\n', '');
update hexun_post set content = replace(content, '火电企业上网电价上调\n', '');
update hexun_post set content = replace(content, '*  政府或出台千亿经济刺激方案\n', '');
update hexun_post set content = replace(content, '*  大飞机公司4.6亿接手福禧大厦\n', '');
update hexun_post set content = replace(content, '*  人民日报：控物价成效已显\n', '');
update hexun_post set content = replace(content, '*  2000亿打新资金首日抛空南车\n', '');
update hexun_post set content = replace(content, '*  中移动澄清获批与3G发牌无关\n', '');
update hexun_post set content = replace(content, '*  800亿铁道债发行 6天买160亿\n', '');

update hexun_post set content = replace(content, '理财爱情是另一种理财吗 掌控人生的“大理财”攻略\n', '');
update hexun_post set content = replace(content, '收藏重回“红色年代”\n', '');
update hexun_post set content = replace(content, '* 月薪1.5万仍月光 合理规划买车房\n', '');
update hexun_post set content = replace(content, '* 收藏全攻略 如何辨别高档翡翠\n', '');
update hexun_post set content = replace(content, '* 高风险市场一地鸡毛 回归保守\n', '');
update hexun_post set content = replace(content, '* 炒币现疯狂 建党纪念币涨10倍\n', '');
update hexun_post set content = replace(content, '* 坚守大都市月薪至少6000元\n', '');
update hexun_post set content = replace(content, '*  社保基金出资100亿入股人保集团\n', '');
update hexun_post set content = replace(content, '*  中国人寿4.7亿增持华能新能源\n', '');
update hexun_post set content = replace(content, '*  应对“毒”食品 加道保险过滤网\n', '');
update hexun_post set content = replace(content, '*  保险当定存卖 生存金返还成奖励\n', '');

update hexun_post set content = replace(content, '* 政府或出台千亿经济刺激方案\n', '');
update hexun_post set content = replace(content, '* 大飞机公司4.6亿接手福禧大厦\n', '');
update hexun_post set content = replace(content, '* 人民日报：控物价成效已显\n', '');
update hexun_post set content = replace(content, '* 2000亿打新资金首日抛空南车\n', '');
update hexun_post set content = replace(content, '* 中移动澄清获批与3G发牌无关\n', '');
update hexun_post set content = replace(content, '* 800亿铁道债发行 6天买160亿\n', '');

update hexun_post set content = replace(content, '银行市场周刊银行周刊：\n', '');
update hexun_post set content = replace(content, '银行内保外贷额度遭疯抢告急\n', '');
update hexun_post set content = replace(content, '5月新增贷款5516亿\n', '');
update hexun_post set content = replace(content, '*  250款QDII仅有一成五上涨\n', '');
update hexun_post set content = replace(content, '*  董事长薪酬榜：深发展肖遂宁夺冠\n', '');
update hexun_post set content = replace(content, '*  银行理财产品围攻货币市场基金\n', '');
update hexun_post set content = replace(content, '*  银行欢迎提前还贷 市民不买账\n', '');
update hexun_post set content = replace(content, '*  渣打“薪酬门”考验银行激励制度\n', '');

update hexun_post set content = replace(content, '花旗36万名信用卡客户受黑客攻击\n', '');
update hexun_post set content = replace(content, '工行惊现大量诡异买单\n', '');
update hexun_post set content = replace(content, '* 香港4银行收集客户数据搞促销\n', '');
update hexun_post set content = replace(content, '* 流动性紧张 银行大发理财产品\n', '');
update hexun_post set content = replace(content, '* 国内银行8年狂发2.4亿张信用卡\n', '');
update hexun_post set content = replace(content, '* 银行缺钱：员工揽存任务超百万\n', '');
update hexun_post set content = replace(content, '* 网爆：信用社员工盗取百万存款\n', '');
update hexun_post set content = replace(content, '（和讯财经原创）\n', '');
update hexun_post set content = replace(content, '胡润首次发布外来富豪榜 台湾富豪在大陆赚钱最多\n', '');
update hexun_post set content = replace(content, '央票利率上行 预示加息\n', '');
update hexun_post set content = replace(content, '* 二次汇改一周年:人民币升值5.4%\n', '');
update hexun_post set content = replace(content, '* 中国5月新增外汇占款3764亿元\n', '');
update hexun_post set content = replace(content, '* 香港未发4款方便面含塑化剂信息\n', '');
update hexun_post set content = replace(content, '* 组图：盘点史上最倒霉的观众\n', '');
update hexun_post set content = replace(content, '* 水皮：对马云阿里巴巴的几个疑问\n', '');

update hexun_post set content = replace(content, '理财亿万富豪如何白头偕老 看富豪们的爱情故事\n', '');
update hexun_post set content = replace(content, '盘点索罗斯投资原则\n', '');
update hexun_post set content = replace(content, '* 红色邮票可能是下个热点\n', '');
update hexun_post set content = replace(content, '* 理财产品跑不赢CPI 存钱再走俏\n', '');
update hexun_post set content = replace(content, '* 外企高管月入3万难经大风浪\n', '');
update hexun_post set content = replace(content, '* 如何打理年底换150平米房\n', '');
update hexun_post set content = replace(content, '* 巴菲特概念股 要不要申购比亚迪\n', '');
update hexun_post set content = replace(content, '“银期合作”兴致渐浓\n', '');
update hexun_post set content = replace(content, '* 银行理财独大 创新背后难掩风险\n', '');
update hexun_post set content = replace(content, '* 史玉柱“盯上别人的田”\n', '');
update hexun_post set content = replace(content, '* 银行债市融资或迎来小高潮\n', '');
update hexun_post set content = replace(content, '* 存款缩水 储蓄负利率困局未见缓解\n', '');
update hexun_post set content = replace(content, '* 奢侈品乱象跟踪：招行叫停特惠展\n', '');
update hexun_post set content = replace(content, '猪肉价格飙升达2008年以来最高 引发抢猪潮\n', '');
update hexun_post set content = replace(content, '索罗斯再唱空中国经济\n', '');
update hexun_post set content = replace(content, '* 仅15%公众赞同个税3000元起征\n', '');
update hexun_post set content = replace(content, '* 4月中国所持美债数量再创新高\n', '');
update hexun_post set content = replace(content, '* 六成食品添加剂限于技术无法检测\n', '');
update hexun_post set content = replace(content, '* 组图：希腊数万示威者包围国会\n', '');
update hexun_post set content = replace(content, '* 提振股市是治理通胀的绝妙办法\n', '');
update hexun_post set content = replace(content, '马云的“云计算”算计了谁\n', '');
update hexun_post set content = replace(content, 'A股大跌罪魁祸首是什么\n', '');
update hexun_post set content = replace(content, '* 黄小鹏：多角度解读中小企业钱荒\n', '');
update hexun_post set content = replace(content, '* 陈思进：忐忑的金融分析师\n', '');
update hexun_post set content = replace(content, '* 曹明成：迎接银行股的王者归来\n', '');
update hexun_post set content = replace(content, '* 刘洪：希腊危机中的江湖政治\n', '');
update hexun_post set content = replace(content, '* 孙二伟：第三轮量化宽松会不会来\n', '');
update hexun_post set content = replace(content, '* 水皮：对马云的阿里巴巴我有疑问\n', '');
update hexun_post set content = replace(content, '提准绷紧灰色借贷链\n', '');
update hexun_post set content = replace(content, '* 银行狂发理财产品 券商产品遇冷\n', '');
update hexun_post set content = replace(content, '* 负利率仍有超八成居民选择储蓄\n', '');
update hexun_post set content = replace(content, '* CPI持续走高 老百姓如何理财\n', '');
update hexun_post set content = replace(content, '* 信用卡遭盗刷 持卡人对银行不满\n', '');
update hexun_post set content = replace(content, '* 市民还冥币抗议银行多次莫名催款\n', '');
update hexun_post set content = replace(content, '理财盘点富二代投资理财之路 汪小菲接任俏江南CEO\n', '');
update hexun_post set content = replace(content, '解析低收入女性7大特质\n', '');
update hexun_post set content = replace(content, '* 欧债危机恶化 机构建议持币观望\n', '');
update hexun_post set content = replace(content, '* 沪指新低 私募不建议割肉”\n', '');
update hexun_post set content = replace(content, '* 凌晨3点排队买建党纪念币\n', '');
update hexun_post set content = replace(content, '* 为家庭经济支柱构筑保险金三角\n', '');
update hexun_post set content = replace(content, '* 超74%居民认为房价高\n', '');
update hexun_post set content = replace(content, '中金：A股要跌到一级市场死掉才会有牛市\n', '');
update hexun_post set content = replace(content, '[公司要闻]\n', '');
update hexun_post set content = replace(content, '银行不见底 A股何来底\n', '');
update hexun_post set content = replace(content, '* 五大理由揭示股指进入诱空阶段\n', '');
update hexun_post set content = replace(content, '* 中阴趋势破位或将砸出第5浪杀跌\n', '');
update hexun_post set content = replace(content, '* 内忧外患 A股短期走势仍难乐观\n', '');
update hexun_post set content = replace(content, '* 121亿资金出局 终极目标位曝光\n', '');
update hexun_post set content = replace(content, '* [微博]个股尸横遍野 别被蒙骗\n', '');
update hexun_post set content = replace(content, '* [股吧]接下来大盘或跌到面目全非\n', '');
update hexun_post set content = replace(content, '理财全球富二代豪华玩具盘点 24K纯金木马\n', '');
update hexun_post set content = replace(content, '70后剩女13年买房路\n', '');
update hexun_post set content = replace(content, '*  不惑之年巧打算 换房买车两不误\n', '');
update hexun_post set content = replace(content, '*  年入百万也要防通胀 保险防火墙\n', '');
update hexun_post set content = replace(content, '*  古钱币5年平均涨300%至400%\n', '');
update hexun_post set content = replace(content, '*  巴菲特忠告 从失败中吸取教训\n', '');
update hexun_post set content = replace(content, '*  理财师：投资克服理性盲点\n', '');
update hexun_post set content = replace(content, '理财看看十二星座漏财不断的原因\n', '');
update hexun_post set content = replace(content, '如何理财做新时代爸爸\n', '');
update hexun_post set content = replace(content, '* 银价“跳水”疲态已显\n', '');
update hexun_post set content = replace(content, '* 业内预测房价出现10%至15%降幅\n', '');
update hexun_post set content = replace(content, '* 女秘书组合投资5年还清50万房贷\n', '');
update hexun_post set content = replace(content, '* 和田玉10年涨百倍远超金银\n', '');
update hexun_post set content = replace(content, '* 看巴菲特如何应对通胀\n', '');
update hexun_post set content = replace(content, '警惕信用卡分期优惠\n', '');
update hexun_post set content = replace(content, '* 史玉柱三个月频繁增持民生银行\n', '');
update hexun_post set content = replace(content, '* 近期理财产品：澳元产品收益9.6%\n', '');
update hexun_post set content = replace(content, '* 网银系统故障频现 安全仍存忧\n', '');
update hexun_post set content = replace(content, '* 2.4亿张信用卡工行独占四分之一\n', '');
update hexun_post set content = replace(content, '* 钱款“被转账” 起诉银行失败\n', '');
update hexun_post set content = replace(content, '?封基论坛投资实盘周汇总\n', '');
update hexun_post set content = replace(content, '?指数基金集中探讨贴\n', '');
update hexun_post set content = replace(content, '3只封基遭机构9折甩卖\n', '');
update hexun_post set content = replace(content, '* 公募基金话语权沉浮调查\n', '');
update hexun_post set content = replace(content, '* 黄林老鼠仓亏5.4万交易细节曝光\n', '');
update hexun_post set content = replace(content, '* 杠杆分级基金鲜见抄底者\n', '');
update hexun_post set content = replace(content, '* 社保基金100亿入股人保集团\n', '');
update hexun_post set content = replace(content, '* 私募“异类”瞄上重庆果汁企业\n', '');
update hexun_post set content = replace(content, '京沪沿线多地押宝高铁 地方政府征地大造新城\n', '');
update hexun_post set content = replace(content, 'CPI泄密5人被立案侦查\n', '');
update hexun_post set content = replace(content, '* 中俄天然气谈判纠结价格\n', '');
update hexun_post set content = replace(content, '* 过亿超标电动自行车去留难定\n', '');
update hexun_post set content = replace(content, '* 半年稀土价最高涨至6倍\n', '');
update hexun_post set content = replace(content, '* 组图：毛泽东时代美女都啥样\n', '');
update hexun_post set content = replace(content, '* 巴曙松：上市公司融资的钱去哪了\n', '');
#
update hexun_post set content = replace(content, '・', '');
update hexun_post set content = replace(content, '□', '');
update hexun_post set content = replace(content, '第1页: 第2页:', '');
update hexun_post set content = replace(content, '第1页:', '');
update hexun_post set content = replace(content, '第2页:', '');
update hexun_post set content = replace(content, '第3页:', '');
update hexun_post set content = replace(content, '第1页:\n', '');
update hexun_post set content = replace(content, '第2页:\n', '');
update hexun_post set content = replace(content, '第3页:\n', '');
update hexun_post set content = replace(content, '第4页:\n', '');
update hexun_post set content = replace(content, '第5页:\n', '');

#
delete from hexun_post where id in(5083,5084,5085);
#
update hexun_post set content = replace(content, '【稿件声明】未经《每日经济新闻》授权，严禁转载，违者必究。\n', '');
update hexun_post set content = replace(content, '如需转载或了解更多精彩内容，请登录官网：http://www.nbd.com.cn\n', '');
update hexun_post set content = replace(content, '稿件来源：每经记者 李听 发自上海\n', '');
update hexun_post set content = replace(content, '每经记者 徐子莫 发自上海\n', '');
update hexun_post set content = replace(content, '每经记者', '记者');
update hexun_post set content = replace(content, '相关阅读\n', '');
update hexun_post set content = replace(content, '北京保险行业协会出台车险费率浮动新方案\n', '');
update hexun_post set content = replace(content, '明年车险费率浮动方案公布 保费再优惠5%\n', '');
update hexun_post set content = replace(content, '车险铺路 保监会酝酿财险理赔“全透明”\n', '');
update hexun_post set content = replace(content, '北京车险费率浮动出新规 引入赔款金额调整系数\n', '');
update hexun_post set content = replace(content, '2011北京车险费率浮动方案出台|车险费率优惠范围扩大\n', '');
update hexun_post set content = replace(content, '车险承保理赔透明度有望提高|对提高车险经营效益的建议\n', '');
update hexun_post set content = replace(content, '【稿件声明】如需转载请与《每日经济新闻》联系。未经《每日经济新闻》授权，严禁转载或镜像，违者必究。\n', '');
update hexun_post set content = replace(content, '每经订报电话\n', '');
update hexun_post set content = replace(content, '北京：010-59604220 上海：021-61283003 深圳：0755-33203568 成都：028-86516389 028-86740011 无锡：15152247316。\n', '');

update hexun_post set content = replace(content, '(责任编辑：和讯保险)', '');
update hexun_post set content = replace(content, '(责任编辑：和讯理财)', '');
update hexun_post set content = replace(content, '(责任编辑：和讯)', '');
update hexun_post set content = replace(content, '(责任编辑：盈阳)', '');
update hexun_post set content = replace(content, '(责任编辑：徐军程)', '');
update hexun_post set content = replace(content, '(责任编辑：茹珊珊)', '');

update hexun_post set content = replace(content, '佳� ', '佳');
update hexun_post set content = replace(content, '(责任编辑：和讯投资)', '');
update hexun_post set content = replace(content, '(责任编辑：和讯网站)', '');
update hexun_post set content = replace(content, '(责任编辑：和讯银行)', '');

update hexun_post set content = replace(content, '【来源：和讯网】 ', '');
update hexun_post set content = replace(content, '6\n', '');
update hexun_post set content = replace(content, '7\n', '');
update hexun_post set content = replace(content, '8\n', '');
update hexun_post set content = replace(content, '9\n', '');
update hexun_post set content = replace(content, '10\n', '');
DELETE from hexun_post where content REGEXP '===精彩阅读===' ;
DELETE from hexun_post where content REGEXP '【独家稿件声明】';
DELETE from hexun_post where content REGEXP '中证网声明：';

update hexun_post set content = replace(content, '【独家稿件声明】凡注明 “和讯”来源之作品（文字、图片、图表）， 未经和讯网授权，任何媒体和个人不得全部或者部分转载。如需转载，请与 010-85650688联系；经许可后转载务必请注明出处，并添加源链接，违者本网将依法追究责任。\n', '');
update hexun_post set content = replace(content, '【和讯声明】此消息系转载自和讯合作媒体， 和讯网登载此文出于传递更多信息之目的，并不意味着赞同其观点或证实其描述。文章内容仅供参考，不构成投资建议。投资者据此操作，风险自担。', '');
update hexun_post set content = replace(content, '理财一周独家稿件声明', '');
update hexun_post set content = replace(content, '【独家稿件声明】凡注明 “理财一周”来源之作品（文字、图片、图表），各媒体转载请注明来源：', '');

update hexun_post set content = replace(content, '【独家稿件声明】凡注明“和讯”来源之作品（文字、图片、图表），未经和讯网授权，任何媒体和个人不得全部或者部分转载。如需转载，请与010-85650688联系；经许可后转载务必请注明出处，并添加源链接，违者本网将依法追究责任', '');

update hexun_post set content = replace(content, '（本文转载自搜狐保险）\n', '');
update hexun_post set content = replace(content, '如需转载或了解更多精彩内容，请登录官网：http://www.nbd.com.cn', '');
update hexun_post set content = replace(content, '牛熊市转化之间 “保险三雄”操盘路径\n', '');
update hexun_post set content = replace(content, '解析2008年三季度保险投资轨迹\n', '');
update hexun_post set content = replace(content, '中外保险投资研究对比及案例分析\n', '');

update hexun_post set content = replace(content, '免责声明：本文仅代表作者个人观点，与凤凰网无关。其原创性以及文中陈述文字和内容未经本站证实，对本文以及其中全部或者部分内容、文字的真实性、完整性、及时性本站不作任何保证或承诺，请读者仅作参考，并请自行核实相关内容。', '');
update hexun_post set content = replace(content, '【免责声明】本文仅代表作者本人观点，与本网站无关。本网站对文中陈述、观点判断保持中立，不对所包含内容的准确性、可靠性或完整性提供任何明示或暗示的保证。请读者仅作参考，并请自行承担全部责任。', '');
update hexun_post set content = replace(content, '新浪声明：此消息系转载自新浪合作媒体，新浪网登载此文出于传递更多信息之目的，并不意味着赞同其观点或证实其描述。文章内容仅供参考，不构成投资建议。投资者据此操作，风险自担。', '');
update hexun_post set content = replace(content, '（来源：新华网)', '');
update hexun_post set content = replace(content, '【来源：中国证券网】', '');
update hexun_post set content = replace(content, '【来源：新华网】', '');
update hexun_post set content = replace(content, '【来源：东方早报】', '');
update hexun_post set content = replace(content, '本栏目由本报联合北京保险行业协会、北京保险学会主办\n', '');
update hexun_post set content = replace(content, '（本案例由天安保险提供）\n', '');

DELETE from hexun_post where id = 4929;
DELETE from hexun_post where id in(5103);

#3.----------------------------------------------------- copy to hexun_post_format
drop table hexun_post_format;
create table hexun_post_format as SELECT category, title, content, a.url from hexun_post a join hexun_run_key b on a.hexun_run_key_id = b.id;
alter table `insurance_forager`.`hexun_post_format` add column `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT first, add primary key(`id`);
alter table hexun_post_format add column is_migrated varchar(2) default 'n';

