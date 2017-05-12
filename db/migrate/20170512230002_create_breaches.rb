class CreateBreaches < ActiveRecord::Migration
  def change
    create_table :breaches do |t|
      t.integer :attack_id, index: true
      t.json :info

      t.timestamps
    end
  end
end
