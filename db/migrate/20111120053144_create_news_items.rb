class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.references :news_cate
      t.string :title
      t.text :body
      t.string :external_url
      t.string :image_url

      t.timestamps
    end
    add_index :news_items, :news_cate_id
  end
end
