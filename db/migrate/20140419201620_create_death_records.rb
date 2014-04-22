class CreateDeathRecords < ActiveRecord::Migration
  def change
    create_table :death_records do |t|
      t.integer :month, null: false
      t.integer :day, null: false
      t.integer :year, null: false
      t.string :first_name, null: false
      t.string :middle_name
      t.string :second_name
      t.string :last_name, null: false
      t.string :maiden_name

      t.timestamps
    end
  end
end
