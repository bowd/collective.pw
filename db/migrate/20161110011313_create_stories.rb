class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :email
      t.string :edit_token
      t.json :political_answers
      t.integer :political_coordinates_x
      t.integer :political_coordinates_y
      t.json :personal_answers
      t.string :username

      t.timestamps
    end
  end
end
