class RequestApplication < ApplicationRecord
  belongs_to :user

  validates :cid_no, :collateral_id, presence: true
end
