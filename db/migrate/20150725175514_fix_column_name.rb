class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :words, :valid, :used
  end
end
