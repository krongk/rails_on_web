class CreateResourceCates < ActiveRecord::Migration
  def change
    create_table :resource_cates do |t|
      t.string :name
    end
  end
end
