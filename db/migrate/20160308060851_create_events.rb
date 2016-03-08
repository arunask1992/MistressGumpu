class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.float :venue_latitude
      t.float :venue_logitude
      t.string :genre_id
      t.text :description

      t.timestamps null: false
    end
  end
end
