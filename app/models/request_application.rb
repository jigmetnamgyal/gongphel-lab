class RequestApplication < ApplicationRecord

  validates :result, presence: true

  enum result: %i(pending hit no-hit)
  enum status: %i(pending_bank_approval received)
end
