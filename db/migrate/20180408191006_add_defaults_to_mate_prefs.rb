class AddDefaultsToMatePrefs < ActiveRecord::Migration[5.1]
  def change
    change_column :mate_preferences, :body_type, 'integer USING CAST(religion AS integer)'
    change_column :mate_preferences, :education, 'boolean USING CAST(education AS boolean)'
    change_column :mate_preferences, :has_pets, 'boolean USING CAST(has_pets AS boolean)'
    change_column :mate_preferences, :ethnicity, 'integer USING CAST(ethnicity AS integer)'
    change_column :mate_preferences, :wants_kids, 'integer USING CAST(wants_kids AS integer)'
    
    change_column :mate_preferences, :min_height, :integer, default: 0
   
    change_column :mate_preferences, :max_height, :integer, default: 0
    change_column :mate_preferences, :smoker, :integer, default: 0
    change_column :mate_preferences, :alcohol, :integer, default: 0
    change_column :mate_preferences, :ethnicity, :integer, default: 0
    change_column :mate_preferences, :education, :boolean, default: false
    change_column :mate_preferences, :zip_radius, :integer, default: 0
    change_column :mate_preferences, :body_type, :integer, default: 0
    change_column :mate_preferences, :religion, :integer, default: 0
    change_column :mate_preferences, :religiosity, :integer, default: 0
    change_column :mate_preferences, :political_leaning, :integer, default: 0
    change_column :mate_preferences, :politicalness, :integer, default: 0
    change_column :mate_preferences, :has_kids, :boolean, default: false
    change_column :mate_preferences, :has_pets, :boolean, default: false
    change_column :mate_preferences, :wants_kids,  :integer, default: 0
    change_column :mate_preferences, :orientation, :integer, default: 0
    change_column :mate_preferences, :gender, :integer, default: 0



  end
end
