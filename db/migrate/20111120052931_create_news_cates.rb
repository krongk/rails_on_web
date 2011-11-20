class CreateNewsCates < ActiveRecord::Migration
  def change
    create_table :news_cates do |t|
      t.string :name
    end

    add_index :news_cates, :name, :unique => true
  end
end
