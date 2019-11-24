class CreateBays < ActiveRecord::Migration[5.2]
  def change
    create_table :bays do |t|
      t.boolean :occupied

      t.timestamps
    end
  end
end
