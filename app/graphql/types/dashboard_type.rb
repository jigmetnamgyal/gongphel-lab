module Types
  class DashboardType < Types::BaseObject
    field :id, GraphQL::Types::ID, null: false
    field :cid_no, String, null: false
    field :license_no, String, null: false
    field :number_plate, String, null: true
    field :debtor_type, String, null: false
    field :branch, String, null: false
    field :status, Boolean, null: false
    field :name, String, null: true
    field :debtor_name, String, null: false
    field :amount, Integer, null: false
    field :start_date, GraphQL::Types::ISO8601Date, null: false
    field :end_date, GraphQL::Types::ISO8601Date, null: false
    field :has_loan, Boolean, null: false
    end
end
