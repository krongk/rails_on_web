
ask_run_key
ask_baidu_post
ask_wenba_post
ask_qihoo_post
#root字段将用来作搜索筛选
update ask_run_key set root = replace(root, '娃娃', '')
update ask_run_key set root = replace(root, '外科', '');
update ask_run_key set root = replace(root, '内科', '');
update ask_run_key set root = replace(root, '病', '');

update ask_run_key set is_baidu_processed = 'n';
update ask_run_key set is_qihoo_processed = 'n'
update ask_run_key set is_migrated = 'n'

SELECT is_baidu_processed, count(*) from ask_run_key group by 1;
SELECT is_qihoo_processed, count(*) from ask_run_key group by 1;
SELECT category, count(*) from ask_post group by 1;
SELECT * from ask_run_key where is_baidu_processed = 'n';

SELECT * from ask_post where ask_run_key_id = 1;

SELECT * from news_items order by id desc limit 100;

delete from news_items where news_cate_id = 41;