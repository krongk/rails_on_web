SELECT count(*) from news_items;
70361

SELECT is_processed, count(*) from wenba_run_key group by 1;

SELECT is_processed, count(*) from wenba_post group by 1;


SELECT is_migrated, count(*) from wenba_post_format group by 1;
SELECT is_migrated, count(*) from hexun_post_format group by 1;

update wenba_post_format set is_migrated = 'n';

update hexun_post_format set is_migrated = 'n';
update wenba_post_format a join wenba_run_key b on a.run_key_id = b.id set run_key_id = b.category
#-- format wenba
#case 0
update wenba_post set all_answer = replace(all_answer, '——————————————————————————————问吧禁止所有形式无关客户提问的回答出现，因此回答被屏蔽！谢谢合作！相关规定请查阅“问吧管理规范”', '');
update wenba_post set all_answer = replace(all_answer, '........................................................................................姓名：罗珍雄 QQ：88580808 Email：lzx88580808@vip.qq.com所在地：广东  广州市  中意人寿', '');
#case 1
delete from  wenba_post where length(all_answer) < 85;
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '保单号';
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '电话';
delete from  wenba_post where question REGEXP '[0-9]{6,}' and question REGEXP '手机';
#case2
update wenba_post set title = question where title REGEXP '^[a-z0-9:./()]+$';
delete from  wenba_post where title REGEXP '^[a-z0-9:./()]+$';
#case best_answer
update wenba_post set best_answer = replace(replace(replace(replace(replace(replace(best_answer, '您好', ''), '朋友您好，', ''), '朋友您好！', '朋友您好：'), '你好！', ''), '你好，', ''), '你好：', '');
update wenba_post set best_answer = replace(replace(replace(best_answer, '同城的朋友，你好', ''), '同城的朋友您好', ''), '亲，', '');
delete from  wenba_post where id = 95;
DELETE from wenba_post where  best_answer REGEXP '支持！' and length(all_answer) < 400;
delete from  wenba_post where length(all_answer) < 300;

SELECT * from wenba_post where title REGEXP '^[a-z0-9:./()]+$';


SELECT best_answer, count(*) from wenba_post group by 1;

