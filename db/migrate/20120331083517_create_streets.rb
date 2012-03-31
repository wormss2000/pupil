class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :street
      t.integer :region_id
      t.integer :area_id

      t.timestamps
    end
  end
end
