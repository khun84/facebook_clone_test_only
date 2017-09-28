class AddNameEmailPasswordDigestToUser < ActiveRecord::Migration
  def change
      add_column :users, :name, :string
      add_column :users, :email, :string
      add_column :users, :password_digest, :string, limit:200
  end
end
