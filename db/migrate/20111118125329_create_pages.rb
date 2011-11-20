class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages,:options=>'charset=utf8'  do |t|
      t.string :title
      t.text :body
      t.integer :parent_id, :default => 0
      t.integer :position, :default => 0
      t.string :path
      t.string :meta_keywords
      t.string :meta_description
      t.string :link_url
      t.string :menu_match
      t.integer :show_in_menu, :default => 1 #1:yes 0:no
      t.integer :deletable, :default => 1

      t.timestamps
    end
    add_index :pages, :parent_id
    add_index :pages, :title
    add_index :pages, :link_url, :unique => true
  end
end
