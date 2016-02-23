class RemoveExpFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :exp, :integer
  end
end
