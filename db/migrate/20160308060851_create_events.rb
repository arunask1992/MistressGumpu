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
    add_column :events, :organizer_id, :string
    add_column :events, :organizer_email, :string
    add_column :events, :organizer_phone, :string
  end
end
