class AddWinnerToFights < ActiveRecord::Migration
  def change
    add_column :fights, :winner, :string
  end
end
