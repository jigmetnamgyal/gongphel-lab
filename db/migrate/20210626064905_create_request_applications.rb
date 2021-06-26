class CreateRequestApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :request_applications, id: :uuid do |t|
      t.string :cid_no
      t.string :collateral_id
      t.string :license_no
      t.boolean :is_vehicle
      t.string :number_plate, default: ""
      t.string :debtor_type, default: ""
      t.string :branch, default: ""
      t.integer :has_loan, default: "no hit"
      t.string :name, default: ""
      t.string :status, default: "received"
      t.integer :standing, default: 0
      t.string :debtor_name, default: ""
      t.integer :amount, default: 0
      t.date :start_date, default: nil
      t.date :end_date, default: nil

      t.timestamps
    end
  end
end
