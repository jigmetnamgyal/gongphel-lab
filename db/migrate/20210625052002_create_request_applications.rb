class CreateRequestApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :request_applications do |t|
      t.string :cid_no
      t.string :collateral_id
      t.string :license_no
      t.boolean :is_vehicle

      t.timestamps
    end
  end
end
