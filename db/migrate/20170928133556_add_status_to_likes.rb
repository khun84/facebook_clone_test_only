class AddStatusToLikes < ActiveRecord::Migration
  def change
    add_reference :likes, :status, foreign_key: true
  end
end
