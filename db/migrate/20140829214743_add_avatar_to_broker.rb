class AddAvatarToBroker < ActiveRecord::Migration
  def self.up
    add_attachment :brokers, :avatar
  end

  def self.down
    remove_attachment :brokers, :avatar
  end
end
