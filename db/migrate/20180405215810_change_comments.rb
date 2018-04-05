class ChangeComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :dater_backer_id
    add_reference :comments, :backer, foreign_key: true
    add_reference :comments, :dater, foreign_key: true

  end
end
