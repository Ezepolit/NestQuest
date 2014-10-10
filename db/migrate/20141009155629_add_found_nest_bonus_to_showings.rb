class AddFoundNestBonusToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :Found_Nest_Bonus, :string
  end
end
