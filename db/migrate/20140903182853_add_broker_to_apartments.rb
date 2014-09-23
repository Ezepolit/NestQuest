class AddBrokerToApartments < ActiveRecord::Migration
  def change
    add_reference :apartments, :broker, index: true
  end
end
