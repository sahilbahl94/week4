class AddEmailToBids < ActiveRecord::Migration
  def change
    add_column :bids, :email, :string
  end
end
