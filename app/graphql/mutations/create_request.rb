module Mutations
  class CreateRequest < Mutations::BaseMutation
    class RequestCreateType < GraphQL::Schema::InputObject
      argument :cid_no, String, required: true
      argument :collateral_id, String, required: true
      argument :license_no, String, required: false
      argument :is_vehicle, Boolean, required: true
    end

    argument :attributes, RequestCreateType, required: true
    type Types::RequestType

    def resolve(attributes:)
      Requests::Creator.new(params: attributes.to_h).call
    end
  end
end