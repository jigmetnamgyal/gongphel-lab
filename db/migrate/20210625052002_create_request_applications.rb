class CreateRequestApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :request_applications, id: :uuid do |t|
      t.string :cid_no
      t.string :collateral_id
      t.string :license_no
      t.boolean :is_vehicle
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
