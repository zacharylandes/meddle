class CreateMatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :mate_preferences do |t|
      t.references :dater, foreign_key: true
      t.integer :min_height
      t.integer :max_height
      t.integer :smoker
      t.integer :alcohol
      t.string :ethnicity
      t.boolean :education
      t.string :body_type
      t.integer :zip_radius
      t.string :religion
      t.integer :religiosity
      t.integer :political_leaning
      t.integer :politicalness
      t.boolean :has_kids
      t.integer :wants_kids
      t.integer :has_pets
      t.integer :orientation
      t.integer :gender

      t.timestamps
    end
  end
end
