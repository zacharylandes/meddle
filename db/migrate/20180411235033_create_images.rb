class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :dater, foreign_key: true
      t.integer :back_id
      t.string :i_1
      t.string :i_2
      t.string :i_3
      t.string :i_4
      t.string :i_5

      t.timestamps
    end
  end
end
