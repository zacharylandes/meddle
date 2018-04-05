class CreateDaterBacker < ActiveRecord::Migration[5.1]
  def change
    create_table :dater_backers do |t|
      t.references :dater, foreign_key: true
      t.references :backer, foreign_key: true
      t.string :relationship
    end
  end
end
