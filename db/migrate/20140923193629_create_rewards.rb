class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :description
      t.integer :amount
      t.belongs_to :project


      t.timestamps
    end
  end
end
