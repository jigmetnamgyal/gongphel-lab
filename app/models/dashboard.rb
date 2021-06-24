class Dashboard < ApplicationRecord
  belongs_to :user

  validates :cid_no, :license_no, :status, :start_date, :end_date, :amount, :debtor_name, presence: true
  validates_with StartDateValidator, EndDateValidator
end
