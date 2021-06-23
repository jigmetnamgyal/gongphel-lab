# frozen_string_literal: true
#
module Types
  class DashboardsEdgeType < GraphQL::Types::Relay::BaseEdge
    node_type(Types::DashboardType)
  end
end