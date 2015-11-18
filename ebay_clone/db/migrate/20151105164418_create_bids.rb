class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    	t.references :product, index: true
    	t.references :user, index: true
    	t.integer :amount
      t.timestamps null: false
    end
  end
end
