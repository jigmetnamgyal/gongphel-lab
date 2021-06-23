class Dashboard < ApplicationRecord
  validates :cid_no, :license_no, :status, :start_date, :end_date, :amount, :debtor_name, presence: true

end
