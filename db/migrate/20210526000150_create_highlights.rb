class CreateHighlights < ActiveRecord::Migration[6.1]
  def change
    create_table :highlights do |t|
      t.text :description
      t.text :location
      t.integer :trip_id

      t.timestamps
    end
  end
end
