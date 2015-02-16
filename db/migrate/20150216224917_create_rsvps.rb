class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :family
      t.boolean :coming
      t.string :song
      t.string :message
      t.integer :count

      t.timestamps null: false
    end
  end
end
