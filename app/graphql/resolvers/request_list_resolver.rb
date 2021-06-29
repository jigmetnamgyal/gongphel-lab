module Resolvers
  class RequestListResolver < GraphQL::Schema::Resolver
    argument :id, ID, required: true
    type Types::RequestType, null: false

    def resolve(id:)
      binding.pry
      RequestApplication.where(id: id).first
    end

  end
end