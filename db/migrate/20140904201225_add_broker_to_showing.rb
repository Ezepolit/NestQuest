class AddBrokerToShowing < ActiveRecord::Migration
  def change
    add_reference :showings, :broker, index: true
  end
end
