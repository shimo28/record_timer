class CreateTimerecords < ActiveRecord::Migration[6.0]
  def change
    create_table :timerecords do |t|

      t.timestamps
    end
  end
end
