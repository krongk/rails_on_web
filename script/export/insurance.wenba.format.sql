SELECT count(*) from news_items;
70361

SELECT is_migrated, count(*) from wenba_post_format group by 1;
SELECT is_migrated, count(*) from hexun_post_format group by 1;

update wenba_post_format set is_migrated = 'n';

update hexun_post_format set is_migrated = 'n';
update wenba_post_format a join wenba_run_key b on a.run_key_id = b.id set run_key_id = b.category
#-- format wenba
update wenba_post_format set formated_all_answer = replace(formated_all_answer, '——————————————————————————————问吧禁止所有形式无关客户提问的回答出现，因此回答被屏蔽！谢谢合作！相关规定请查阅“问吧管理规范”', '');
update wenba_post_format set formated_all_answer = replace(formated_all_answer, '........................................................................................姓名：罗珍雄 QQ：88580808 Email：lzx88580808@vip.qq.com所在地：广东  广州市  中意人寿', '');
delete from  wenba_post_format where length(formated_all_answer) < 85;
delete from  wenba_post_format where question REGEXP '[0-9]{6,}' and question REGEXP '保单号';
delete from  wenba_post_format where question REGEXP '[0-9]{6,}' and question REGEXP '电话';
delete from  wenba_post_format where question REGEXP '[0-9]{6,}' and question REGEXP '手机';
delete from  wenba_post_format where id = 95;
DELETE from wenba_post_format where  best_answer REGEXP '支持！' and length(formated_all_answer) < 400;
delete from  wenba_post_format where length(formated_all_answer) < 300;

create table wenba_post_format as
SELECT run_key_id, title, question, best_answer, formated_all_answer, is_processed, url from wenba_post where is_processed <> 's';

SELECT length(formated_all_answer), count(*) from wenba_post_format group by 1 order by count(*) desc;

SELECT count(*) from wenba_post_format where length(formated_all_answer) < 300;

SELECT count(distinct(wenba_post_format_id)) from wenba_post_format_answer;

SELECT wenba_post_format_id, count(*) from wenba_post_format_answer group by 1 HAVING count(*) > 1 LIMIT 2;

update wenba_post_format w JOIN wenba_post_format_answer a on w.id = a.wenba_post_format_id set w.formated_all_answer = a.formated_all_answer;

SELECT * from wenba_post_format where best_answer REGEXP '支持！' LIMIT 20;

SELECT count(*) from wenba_post_format where  best_answer REGEXP '支持！' and length(formated_all_answer) < 400;

少儿险
少儿保险
 
投资连结保险

SELECT * from wenba_post_format where formated_all_answer REGEXP 'QQ：' LIMIT 500;


SELECT * from wenba_post_format where question REGEXP '[0-9]{6,}' LIMIT 500;
25岁 年缴4000左右 QQ269902417
男 27 医疗类 138595*****
我要买中宏的医疗保险，联系QQ812813869
((本人的QQ号码是（944542104），邮箱是ZHTG19750605@163.com))
谢谢了我电话15903225273

SELECT count(*) from wenba_post_format where question REGEXP '[0-9]{6,}' and question REGEXP '电话';
SELECT * from wenba_post_format where question REGEXP '[0-9]{6,}' and question REGEXP '电话' LIMIT 500;
415


SELECT title, count(*) from news_items group by 1;

SELECT * from news_items where body REGEXP '加我QQ';