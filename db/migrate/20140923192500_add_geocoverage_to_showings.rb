class AddGeocoverageToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :geocoverage, :string
  end
end
