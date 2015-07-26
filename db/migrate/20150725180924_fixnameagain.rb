class Fixnameagain < ActiveRecord::Migration
  def change
    rename_column :words, :used, :usable
  end
end
