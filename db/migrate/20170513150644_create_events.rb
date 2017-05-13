class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.integer :host_id, index: true

      t.timestamps
    end
  end
end
