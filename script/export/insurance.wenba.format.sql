SELECT count(*) from news_items;
70361

SELECT is_processed, count(*) from wenba_post group by 1;


SELECT is_migrated, count(*) from wenba_post_format group by 1;
SELECT is_migrated, count(*) from hexun_post_format group by 1;

update wenba_post_format set is_migrated = 'n';

update hexun_post_format set is_migrated = 'n';
update wenba_post_format a join wenba_run_key b on a.run_key_id = b.id set run_key_id = b.category
#-- format wenba
update wenba_post set formated_all_answer = replace(formated_all_answer, '——————————————————————————————问吧禁止所有形式无关客户提问的回答出现，因此回答被屏蔽！谢谢合作！相关规定请查阅“问吧管理规范”', '');
update wenba_post set formated_all_answer = replace(formated_all_answer, '........................................................................................姓名：罗珍雄 QQ：88580808 Email：lzx88580808@vip.qq.com所在地：广东  广州市  中意人寿', '');
delete from  wenba_post where length(formated_all_answer) < 85;
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '保单号';
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '电话';
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '手机';
delete from  wenba_post where id = 95;
DELETE from wenba_post where  best_answer REGEXP '支持！' and length(formated_all_answer) < 400;
delete from  wenba_post where length(formated_all_answer) < 300;


SELECT * from news_items where body REGEXP '加我QQ';