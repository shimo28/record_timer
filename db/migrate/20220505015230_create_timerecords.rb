class CreateTimerecords < ActiveRecord::Migration[6.0]
  def change
    create_table :timerecords do |t|
      t.integer :time_record  ,null: false

      t.timestamps
    end
  end
end
