module Types
  class MutationType < Types::BaseObject
    include ActionPolicy::GraphQL::Behaviour

    field :create_dashboard, mutation: Mutations::CreateDashboard
    field :update_dashboard, mutation: Mutations::UpdateDashboard

    field :create_request, mutation: Mutations::CreateRequest
  end
end
