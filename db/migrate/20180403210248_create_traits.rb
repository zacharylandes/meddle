class CreateTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :traits do |t|
      t.references :dater, foreign_key: true
      t.integer :height
      t.integer :smoker
      t.integer :alcohol
      t.string :ethnicity
      t.string :education
      t.integer :body_type
      t.string :occupation
      t.integer :zip
      t.string :religion
      t.integer :religiosity
      t.integer :political_leaning
      t.integer :politicalness
      t.boolean :has_kids
      t.boolean :wants_kids
      t.integer :has_pets
      t.integer :orientation
      t.integer :gender
      t.text :other

      t.timestamps
    end
  end
end
