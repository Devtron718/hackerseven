class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.string :name
      t.integer :bounty_id, index: true

      t.timestamps
    end
  end
end
