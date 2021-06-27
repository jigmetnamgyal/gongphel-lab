module Mutations
  class UpdateRequest < Mutations::BaseMutation
    class RequestUpdateType < GraphQL::Schema::InputObject
      argument :id, GraphQL::Types::ID, required: true
      argument :status, String, required: true
      argument  :result, Integer, required: true
    end

    argument :attributes, RequestUpdateType, required: true
    type Types::RequestType

    def resolve(attributes:)
      Requests::Updater.new(params: attributes.to_h).call
    end
  end
end