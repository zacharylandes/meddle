class CreateBackerEvals < ActiveRecord::Migration[5.1]
  def change
    create_table :backer_evals do |t|
      t.text :q_1

      t.timestamps
    end
  end
end
