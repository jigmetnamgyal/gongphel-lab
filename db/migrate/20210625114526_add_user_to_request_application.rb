class AddUserToRequestApplication < ActiveRecord::Migration[6.1]
  def change
    add_reference :request_applications, :user, null: false, foreign_key: true
  end
end
