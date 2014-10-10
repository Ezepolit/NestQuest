class AddLowerPriceRangeToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :lower_price_range, :string
  end
end
