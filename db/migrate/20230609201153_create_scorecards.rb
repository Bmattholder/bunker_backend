class CreateScorecards < ActiveRecord::Migration[6.1]
  def change
    create_table :scorecards do |t|

      t.timestamps
    end
  end
end
