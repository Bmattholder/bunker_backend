class AddHoleToTees < ActiveRecord::Migration[6.1]
  def change
    add_reference :tees, :hole, null: false, foreign_key: true
  end
end
