class AddRegnoIndexToCharityObjects < ActiveRecord::Migration[5.1]
  def change
    add_index :charity_objects, :regno
  end
end
