module Resolvers
  class RequestListResolver < GraphQL::Schema::Resolver
    type Types::RequestType, null: false

    def resolve
      attributes = RequestApplication.all
      attributes.each do |element|
        id = attributes[:collateral_id]

        if !(Dashboard.where(id: id).first)
          element.update!(status: 1)
        else
          h.delete(:cid_no, :license_no)
          h.merge!(element)
        end
      end
    end
    
  end
end