module Resolvers
  class RequestListsResolver < GraphQL::Schema::Resolver
    type [Types::RequestType], null: false

    def resolve
      attributes = RequestApplication.all
      attributes.each do |element|
        id = element[:collateral_id]
        dash = Dashboard.where(id: id).first
        if !(dash)
          element.update!(result: 2)
        else
          a = dash.attributes
          a.delete("user_id")
          element.update!(a)
          element.update!(status: false)
        end
      end
    end

  end
end