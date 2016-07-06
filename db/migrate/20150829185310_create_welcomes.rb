class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :title
      t.text :notes
      t.string :headline

      t.timestamps null: false
    end
  end
end
