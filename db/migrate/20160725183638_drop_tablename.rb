class DropTablename < ActiveRecord::Migration
  def change
    drop_table :music_sheets
  end
end
