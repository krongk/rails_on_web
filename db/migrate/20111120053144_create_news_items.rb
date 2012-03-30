class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items,:options=>'charset=utf8' do |t|
      t.references :news_cate
      t.string :title
      t.text :summary
      t.text :body
      t.string :meta_keywords
      t.string :meta_description
      t.string :external_url
      t.string :original_url
      t.string :image_path
      t.integer :sort_id, default => 100000
      t.timestamps
    end
    add_index :news_items, :news_cate_id
    add_index :news_items, :sort_id
  end
end
