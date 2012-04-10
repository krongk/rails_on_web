==Steps
  1. forager
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
            将本地的baoxian028.news_items清空，然后作migrate, 做完以后，备份news_items到服务器上的另外一个数据库，然后插入到最新服务器数据库：
            

  2. common
      在commono数据库（baoxian028）中检查每次新添加的news_cate, 将其合并到已有的栏目中去，否则在网页中显示不出来。