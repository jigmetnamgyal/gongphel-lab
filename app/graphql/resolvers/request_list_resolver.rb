module Resolvers
  class RequestListResolver < GraphQL::Schema::Resolver
    argument :id, ID, required: true
    type Types::RequestType, null: false

    def resolve(id:)
      RequestApplication.where(collateral_id: id)
    end

  end
end