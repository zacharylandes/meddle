class Changetraitcolumn < ActiveRecord::Migration[5.1]
  def change
        change_column :traits, :religion, 'integer USING CAST(religion AS integer)'
        change_column :traits, :ethnicity, 'integer USING CAST(ethnicity AS integer)'
      end
end
