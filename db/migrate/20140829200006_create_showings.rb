class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.date :date
      t.time :time
      t.integer :duration
      t.string :location
      t.text :details

      t.timestamps
    end
  end
end
