class ChangeTripsColumnToDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :start_date, :datetime
    remove_column :trips, :end_date, :datetime
    add_column :trips, :start_date, :date
    add_column :trips, :end_date, :date
  end
end
