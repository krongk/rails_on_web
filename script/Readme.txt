==Steps
  通用步骤
     目录：baoxian028/script/
     steps:
      0. 通过database/local_db.sql 备份一个新的空数据库： insurance_forager
      1. 重新运行> src/init_wenba_run_key.rb
      2. 运行robot: insurance_kapow/library/wenba_post.robot
      3. 格式化wenba_post数据， 运行: baoxian028/script/export/insurance.wenba.format.sql
      4.  运行： formater_wenba.rb (将数据从wenba_post复制到wenba_post_format)
      5. 运行migrator.rb将数据移植到common: 
          baoxian028/script/export/migrator.rb
          注意： 
            migrator.rb 会同时将hexun_post_format 和wenba_post_format的数据迁移过去
          步骤：
            将服务器的common 数据库备份到本地 =>　然后运行migrator.rb　=> 将本地最新common数据库备份到服务器。
   
   讯新闻forager:
     1. 更新hexun_run_key is_processed => 'n'
     2. 运行：hexun_post.robot
     3. 执行：export/insurance.post.format.sql
              1）格式化新闻
              2）拷贝新闻从hexun_post到hexun_post_format表
   问吧forager:
     1. 更新wenba_run_key is_processed => 'n'  
     2. 运行：wenba_post.robot
     3. 运行：export/formater_wenba.rb  拷贝wenba_post 到wenba_post_format
     
   和讯/问吧migrator: 
     4. 运行：hexun_and_wenba_migrater.rb
               
   保险产品forager:
      1. 初始化wenba_product_run_key:
        保险产品URL：
        http://p.xiangrikui.com/xianzhong/xzgs_10_10.html
        http://p.xiangrikui.com/xianzhong/xzgs_20_10.html
        http://p.xiangrikui.com/xianzhong/xzgs_3100_10.html
        
        SQL初始化：
        set @index = 0;
        #loop do below
        select @index := @index + 10;
        insert into wenba_product_run_key(url) values(concat('http://p.xiangrikui.com/xianzhong/xzgs_', @index, '_10.html'));
      2. 运行：wenba_product.robot
      3. 运行：export/product_migrator.rb  拷贝数据倒common

  2. common
      在commono数据库（baoxian028）中检查每次新添加的news_cate, 将其合并到已有的栏目中去，否则在网页中显示不出来。