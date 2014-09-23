class AddApartmentsToShowing < ActiveRecord::Migration
  def change
    add_reference :showings, :apartment, index: true
  end
end
