class AddDbToBackerEval < ActiveRecord::Migration[5.1]
  def change
    add_reference :backer_evals, :dater_backer, index: true
  end
end
