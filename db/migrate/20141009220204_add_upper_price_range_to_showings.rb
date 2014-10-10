class AddUpperPriceRangeToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :upper_price_range, :string
  end
end
