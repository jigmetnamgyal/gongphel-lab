module Types
  class MutationType < Types::BaseObject
    include ActionPolicy::GraphQL::Behaviour

    field :create_dashboard, mutation: Mutations::CreateDashboard
    field :update_dashboard, mutation: Mutations::UpdateDashboard
  end
end
