module Types
  class DashboardsConnectionType < GraphQL::Types::Relay::BaseConnection
    edge_type(Types::DashboardsEdgeType)

    field :total_count, Integer, null: false

    def total_count
      object.items.size
    end
  end
end