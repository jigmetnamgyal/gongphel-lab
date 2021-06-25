class Dashboard < ApplicationRecord
  belongs_to :user

  validates :cid_no, :license_no, :status, :has_loan, :start_date, :end_date, :amount, :debtor_name, presence: true
  validates_with StartDateValidator, EndDateValidator

  enum status: %i(pending_bank_approval received)
end
