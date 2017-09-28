class AddForeignKeyToLikesAndStatuses < ActiveRecord::Migration
  def change
      add_reference :statuses, :user, foreign_key: true
      add_reference :likes, :user, foreign_key:true
  end
end
