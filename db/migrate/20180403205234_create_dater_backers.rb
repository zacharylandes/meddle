class CreateDaterBackers < ActiveRecord::Migration[5.1]
  def change
    create_table :dater_backers do |t|
      t.integer :dater_id
      t.integer :backer_id
      t.string :relationship

      t.timestamps
    end
  end
end
