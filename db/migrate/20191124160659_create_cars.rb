class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :reg_no
      t.string :model
      t.string :brand
      t.datetime :year

      t.timestamps
    end
  end
end
