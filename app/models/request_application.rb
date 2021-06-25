class RequestApplication < ApplicationRecord
  belongs_to :user

  validates :cid_no, :collateral_id, :status, presence: true

  enum status: %i(pending no_hit hit)
end
