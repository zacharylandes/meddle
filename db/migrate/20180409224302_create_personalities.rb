class CreatePersonalities < ActiveRecord::Migration[5.1]
  def change
    create_table :personalities do |t|
      t.references :dater, foreign_key: true
      t.references :backer, foreign_key: true
      t.integer :charitable
      t.integer :intelligent
      t.integer :shy
      t.integer :spontaneous
      t.integer :funny
      t.integer :adaptable
      t.integer :confident
      t.integer :logical
      t.integer :independent
      t.integer :organized
      t.integer :relaxed
      t.integer :friendly
      t.integer :energetic
      t.integer :silly
      t.integer :patient

      t.timestamps
    end
  end
end
