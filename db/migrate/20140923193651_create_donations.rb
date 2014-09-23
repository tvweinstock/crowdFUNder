class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.belongs_to :reward

      t.timestamps
    end
  end
end
