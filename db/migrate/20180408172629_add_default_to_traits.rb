class AddDefaultToTraits < ActiveRecord::Migration[5.1]
  def change
    change_column :traits, :height, :integer, default: 0
  end
end
