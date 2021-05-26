class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.text :name
      t.integer :trip_id

      t.timestamps
    end
  end
end
