module Types
  class RequestType < Types::BaseObject
    field :cid_no, String, null: false
    field :collateral_id, String, null: true
    field :license_no, String, null: true
    field :is_vehicle, String, null: false
  end
end