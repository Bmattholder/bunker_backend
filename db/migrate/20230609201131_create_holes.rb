class CreateHoles < ActiveRecord::Migration[6.1]
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :yardage
      t.integer :par

      t.timestamps
    end
  end
end
