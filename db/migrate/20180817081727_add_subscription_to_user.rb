class AddSubscriptionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subscription, :int, default: 0
  end
end
