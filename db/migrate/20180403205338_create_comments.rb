class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :dater_backer, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
