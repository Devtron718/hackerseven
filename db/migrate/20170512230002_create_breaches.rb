class CreateBreaches < ActiveRecord::Migration[5.0]
  def change
    create_table :breaches do |t|
      t.integer :attack_id, index: true
      t.integer :host_id, index: true
      t.json :info

      t.timestamps
    end
  end
end
