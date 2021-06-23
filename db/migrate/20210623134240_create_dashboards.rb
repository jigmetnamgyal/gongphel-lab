class CreateDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboards do |t|
      t.string :cid_no
      t.string :license_no
      t.string :number_plate
      t.boolean :status
      t.string :name

      t.timestamps
    end
  end
end
