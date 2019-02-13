class AddRegnoToOrganisations < ActiveRecord::Migration[5.1]
  def change
    add_column :organisations, :regno, :string
    add_index :organisations, :regno
  end
end
