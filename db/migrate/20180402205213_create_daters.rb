class CreateDaters < ActiveRecord::Migration[5.1]
  def change

    create_table :daters do |t|
      t.references :user, foreign_key: true
      t.string :f_name
      t.string :l_name
      t.string :image_1
      t.string :image_2

      t.timestamps
    end
  end
end
