class CreateBirthRecords < ActiveRecord::Migration
  def change
    create_table :birth_records do |t|
      t.integer :birth_month, null: false
      t.integer :birth_day, null: false
      t.integer :birth_year, null: false
      t.string :first_name, null: false
      t.string :middle_name
      t.string :second_name
      t.string :last_name, null: false
      t.string :name_suffix
      t.string :code

      t.timestamps
    end
  end
end
