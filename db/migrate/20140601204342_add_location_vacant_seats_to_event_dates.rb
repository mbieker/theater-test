class AddLocationVacantSeatsToEventDates < ActiveRecord::Migration
  def change
    add_column :event_dates, :location, :string
    add_column :event_dates, :vacant_seats, :integer
  end
end
