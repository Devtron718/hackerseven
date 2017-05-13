class CreateMisses < ActiveRecord::Migration[5.0]
  def change
    create_table :misses do |t|
      t.integer :host_id, index: true
      t.string :url

      t.timestamps
    end
  end
end
