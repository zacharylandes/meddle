class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.references :dater, foreign_key: true
      t.integer :match_id

      t.timestamps
    end
  end
end
