module Mutations
  class CreateDashboard < Mutations::BaseMutation
    class DashboardCreateType < GraphQL::Schema::InputObject
      argument :cid_no, String, required: true
      argument :license_no, String, required: true
      argument :number_plate, String, required: false
      argument :name, String, required: false
      argument :debtor_name, String, required: true
      argument :amount, Integer, required: true
      argument :end_date, GraphQL::Types::ISO8601Date, required: true
      argument :start_date, GraphQL::Types::ISO8601Date, required: true
    end

    argument :attributes, DashboardCreateType, required: true
    type Types::DashboardType

    def resolve(attributes: )
      Dashboards::Creator.new(current_user: current_user, params: attributes.to_h).call
    end
  end
end