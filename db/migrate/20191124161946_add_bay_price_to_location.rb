class AddBayPriceToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :bay_price, :double
  end
end
