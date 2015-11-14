class RemoveTimestamps < ActiveRecord::Migration
  def change
    remove_columns :words, :created_at, :updated_at
  end
end
