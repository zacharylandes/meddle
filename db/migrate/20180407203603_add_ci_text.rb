class AddCiText < ActiveRecord::Migration[5.1]
  enable_extension 'citext'
  def change
    change_column :users, :f_name, :citext
    change_column :daters, :f_name, :citext
    change_column :backers, :f_name, :citext
    change_column :users, :l_name, :citext
    change_column :daters, :l_name, :citext
    change_column :backers, :l_name, :citext
    change_column :users, :email, :citext


    end
end
