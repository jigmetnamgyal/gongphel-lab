module Types
  class QueryType < Types::BaseObject
    include ActionPolicy::GraphQL::Behaviour
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :dashboard, resolver: Resolvers::DashboardResolver
    field :dashboards, resolver: Resolvers::DashboardsResolver

    field :list_request, resolver: Resolvers::RequestListResolver
  end
end
