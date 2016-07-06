class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :artist
      t.datetime :start_time
      t.datetime :end_time
      t.string :description
      t.string :title
      t.string :links, :default => ['http://www..com', 'http://www..com']
      t.timestamps null: true
    end
  end
end
