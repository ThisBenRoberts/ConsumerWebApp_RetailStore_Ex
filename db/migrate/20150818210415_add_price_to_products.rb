class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, :precision => 10, :scale => 20
  end
end
