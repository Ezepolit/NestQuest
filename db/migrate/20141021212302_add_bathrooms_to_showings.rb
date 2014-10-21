class AddBathroomsToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :bathrooms, :string
  end
end
