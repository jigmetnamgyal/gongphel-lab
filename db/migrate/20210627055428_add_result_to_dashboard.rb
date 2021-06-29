class AddResultToDashboard < ActiveRecord::Migration[6.1]
  def change
    add_column :dashboards, :result, :integer,default: 1
  end
end
