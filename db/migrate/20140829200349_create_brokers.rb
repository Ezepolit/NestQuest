class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.integer :zip
      t.integer :phone

      t.timestamps
    end
  end
end
