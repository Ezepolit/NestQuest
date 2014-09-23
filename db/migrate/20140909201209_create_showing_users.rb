class CreateShowingUsers < ActiveRecord::Migration
  def change
    create_table :showing_users do |t|
      t.references :user, index: true
      t.references :showing, index: true

      t.timestamps
    end
  end
end
