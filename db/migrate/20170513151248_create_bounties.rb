class CreateBounties < ActiveRecord::Migration[5.0]
  def change
    create_table :bounties do |t|
      t.name

      t.timestamps
    end
  end
end
