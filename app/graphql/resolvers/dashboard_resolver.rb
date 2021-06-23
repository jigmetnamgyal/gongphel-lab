module Resolvers
  class DashboardResolver < BaseResolver
    argument :id, ID, required: true
    type Types::DashboardType, null: false

    def resolve(id:)
      Dashboard.find(id)
    end
  end
end