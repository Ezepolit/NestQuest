class AddBedroomsToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :bedroom, :string
  end
end
