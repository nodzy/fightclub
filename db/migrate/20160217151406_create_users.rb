class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :midichlorians
      t.integer :level
      t.integer :lightsaber
      t.string :force

      t.timestamps null: false
    end
  end
end
