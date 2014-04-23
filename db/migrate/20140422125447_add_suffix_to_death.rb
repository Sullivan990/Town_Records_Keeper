class AddSuffixToDeath < ActiveRecord::Migration
  def change
    add_column :death_records, :name_suffix, :string
  end
end
