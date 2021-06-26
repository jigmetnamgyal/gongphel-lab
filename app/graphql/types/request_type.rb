module Types
  class RequestType < Types::BaseObject
    field :cid_no, String, null: false
    field :collateral_id, String, null: false
    field :license_no, String, null: true
    field :is_vehicle, Boolean, null: false
    field :number_plate, String, null: true
    field :debtor_type, String, null: false
    field :branch, String, null: false
    field :has_loan, Boolean, null: true
    field :name, String, null: false
    field :status, Integer, null: false
    field :standing, String, null: false
    field :debtor_name, String, null: false
    field :amount, Integer, null: true
    field :start_date, GraphQL::Types::ISO8601Date, null: false
    field :end_date, GraphQL::Types::ISO8601Date, null: false
  end
end