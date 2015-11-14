class FixFieldName < ActiveRecord::Migration
  def change
    rename_column :words, :word, :text
    remove_column :words, :usable
  end
end
