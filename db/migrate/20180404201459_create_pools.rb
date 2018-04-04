class CreatePools < ActiveRecord::Migration[5.1]
  def change
    create_table :pools do |t|
      t.integer :dater_id
      t.integer :match_id

      t.timestamps
    end
  end
end
