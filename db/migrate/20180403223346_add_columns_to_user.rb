class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    add_column :users, :image1, :string
<<<<<<< HEAD
    add_column :users, :image2, :string
=======
    add_column :usersg, :image2, :string
>>>>>>> Updates user table to include email and images
  end
end
