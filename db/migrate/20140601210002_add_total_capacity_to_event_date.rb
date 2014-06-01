class AddTotalCapacityToEventDate < ActiveRecord::Migration
  def change
    add_column :event_dates, :total_capacity, :integer
  end
end
