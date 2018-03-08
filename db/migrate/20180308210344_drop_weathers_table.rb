class DropWeathersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :weathers
  end
end
