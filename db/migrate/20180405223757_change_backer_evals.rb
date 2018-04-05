class ChangeBackerEvals < ActiveRecord::Migration[5.1]
  def change
    remove_column :backer_evals, :dater_backer_id
    add_reference :backer_evals, :backer, foreign_key: true
    add_reference :backer_evals, :dater, foreign_key: true
  end
end
