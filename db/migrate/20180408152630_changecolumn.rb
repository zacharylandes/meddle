class Changecolumn < ActiveRecord::Migration[5.1]
  def change
    change_column :mate_preferences, :religion, 'integer USING CAST(religion AS integer)'
  end
end
