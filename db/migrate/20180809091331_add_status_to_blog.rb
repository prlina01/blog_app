class AddStatusToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status, :int, default: 0
  end
end
