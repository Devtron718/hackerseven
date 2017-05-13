class CreateAttacks < ActiveRecord::Migration[5.0]
  def change
    create_table :attacks do |t|
      t.integer :host_id, index: true
      t.string :url
      t.string :element_id
      t.string :element_class
      t.string :xpath
      t.boolean :success
      t.datetime :reported_at
      t.datetime :rewarded_at

      t.timestamps
    end
  end
end
