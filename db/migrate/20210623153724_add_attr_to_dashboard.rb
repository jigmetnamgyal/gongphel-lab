class AddAttrToDashboard < ActiveRecord::Migration[6.1]
  def change
    add_column :dashboards, :amount, :integer
    add_column :dashboards, :start_date, :date
    add_column :dashboards, :end_date, :date
  end
end
