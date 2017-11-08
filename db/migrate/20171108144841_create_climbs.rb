class CreateClimbs < ActiveRecord::Migration[5.1]
  def change
    create_table :climbs do |t|
      t.integer :route_id
      t.integer :user_id
      t.datetime :completion_time
      t.integer :fun_type

      t.timestamps
    end
  end
end
