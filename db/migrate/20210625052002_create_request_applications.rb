class CreateRequestApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :request_applications do |t|
      t.string :name

      t.timestamps
    end
  end
end
