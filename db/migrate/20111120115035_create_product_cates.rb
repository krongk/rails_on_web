class CreateProductCates < ActiveRecord::Migration
  def change
    create_table :product_cates do |t|
      t.string :name
    end
  end
end
