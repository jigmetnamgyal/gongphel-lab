class AddUserReferencesToDashboard < ActiveRecord::Migration[6.1]
  def change
    add_reference :dashboards, :user, null: false, foreign_key: true
  end
end
