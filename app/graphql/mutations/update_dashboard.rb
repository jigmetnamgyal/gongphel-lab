module Mutations
  class UpdateDashboard < Mutations::BaseMutation
    class DashboardUpdateType < GraphQL::Schema::InputObject
      argument :id, GraphQL::Types::ID, required: true
      argument :cid_no, String, required: false
      argument :license_no, String, required: false
      argument :number_plate, String, required: false
      argument :name, String, required: false
      argument :debtor_name, String, required: false
      argument :amount, Integer, required: false
      argument :end_date, GraphQL::Types::ISO8601Date, required: false
      argument :start_date, GraphQL::Types::ISO8601Date, required: false
    end

    argument :attributes, DashboardUpdateType, required: true
    type Types::DashboardType

    def resolve(attributes:)
      Dashboards::Updater.new(current_user: current_user, params: attributes.to_h).call
    end

  end
end