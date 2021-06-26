class RequestApplication < ApplicationRecord
  validates :standing, presence: true

  enum standing: %i(pending hit no_hit)
end
