class AddQuestionIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :question, foreign_key: true
  end
end
