class AddScorecardToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_reference :players, :scorecard, null: false, foreign_key: true
  end
end
