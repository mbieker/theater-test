class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :event_date_id
      t.boolean :discount, default: false
      t.boolean :confirmed, default: false
      t.timestamps
    end
  end
end
