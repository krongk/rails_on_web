#encoding: utf-8
class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :weight, :default => 0
      t.string :meta_key, :default => "成都保险咨询网(www.baoxian028.com)"
      t.string :meta_description, :default => "成都保险咨询网(www.baoxian028.com)"

      t.timestamps
    end
  end
end
