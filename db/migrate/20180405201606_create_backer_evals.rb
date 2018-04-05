class CreateBackerEvals < ActiveRecord::Migration[5.1]
  def change
    create_table :backer_evals do |t|
      t.references :dater_backer, foreign_key: true
      t.string :q_1
    end
  end
end
