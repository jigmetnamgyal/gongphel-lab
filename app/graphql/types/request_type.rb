module Types
  class RequestType < Types::BaseObject
    field :id, ID, null: false
    field :cid_no, String, null: true
    field :collateral_id, String, null: false
    field :license_no, String, null: true
    field :number_plate, String, null: true
    field :debtor_type, String, null: true
    field :branch, String, null: true
    field :has_loan, Boolean, null: true
    field :name, String, null: true
    field :status, String, null: true
    field :result, String, null: false
    field :debtor_name, String, null: true
    field :amount, Integer, null: true
    field :start_date, GraphQL::Types::ISO8601Date, null: true
    field :end_date, GraphQL::Types::ISO8601Date, null: true
  end
end