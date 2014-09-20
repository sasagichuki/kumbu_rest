class CreateDeathNotices < ActiveRecord::Migration
  def change
    create_table :death_notices do |t|
      t.string :title
      t.datetime :date_added
      t.datetime :client_born
      t.datetime :client_died
      t.text :eulogy
      t.datetime :burial_date
      t.datetime :meeting_date
      t.string :burial_location
      t.string :meeting_location
      t.string :client_picture
      t.text :comments
      t.references :user, index: true

      t.timestamps
    end
  end
end
