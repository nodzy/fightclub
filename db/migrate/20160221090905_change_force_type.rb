class ChangeForceType < ActiveRecord::Migration
   def change
    change_column :users, :force, :string
  end
end
