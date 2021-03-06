class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.integer :serial_number
      t.string :name
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
