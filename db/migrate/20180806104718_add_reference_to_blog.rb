class AddReferenceToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :topic, foreign_key: true
  end
end
