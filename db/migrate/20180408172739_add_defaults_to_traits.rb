class AddDefaultsToTraits < ActiveRecord::Migration[5.1]
  def change
    change_column :traits, :body_type, 'integer USING CAST(religion AS integer)'
    change_column :traits, :education, 'boolean USING CAST(education AS boolean)'
    change_column :traits, :has_pets, 'boolean USING CAST(has_pets AS boolean)'
   
    change_column :traits, :height, :integer, default: 0
    change_column :traits, :smoker, :integer, default: 0
    change_column :traits, :alcohol, :integer, default: 0
    change_column :traits, :ethnicity, :integer, default: 0
    change_column :traits, :education, :boolean, default: false
    change_column :traits, :zip, :integer, default: 0
    change_column :traits, :body_type, :integer, default: 0
    change_column :traits, :religion, :integer, default: 0
    change_column :traits, :religiosity, :integer, default: 0
    change_column :traits, :political_leaning, :integer, default: 0
    change_column :traits, :politicalness, :integer, default: 0
    change_column :traits, :has_kids, :boolean, default: false
    change_column :traits, :has_pets, :boolean, default: false
    change_column :traits, :wants_kids, :boolean, default: false
    change_column :traits, :orientation, :integer, default: 0
    change_column :traits, :gender, :integer, default: 0
    change_column :traits, :other, :string, default: ""
  end
end
