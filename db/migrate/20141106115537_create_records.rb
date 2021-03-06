class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :record_type
      t.references :product, index: true
      t.decimal :weight
      t.integer :count, default: 0
      t.references :user, index: true
      t.references :participant, index: true, polymorphic: true
      t.string :order_number, default: ''
      t.references :employee, index: true
      t.references :client, index: true
      t.date :date

      t.timestamps
    end
  end
end
