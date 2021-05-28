class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.text :url
      t.integer :trip_id

      t.timestamps
    end
  end
end
