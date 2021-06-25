module Resolvers
  class DashboardsResolver < SearchObjectBase
    scope { Dashboard.all }

    type Types::DashboardsConnectionType, null: false

    option :status, type: Boolean, with: :apply_status_filter
    option :query, type: String, with: :apply_search, description: <<~DESC
      Supports searches on user cid_no, license_no, name, number_plate
    DESC

    option :skip, type: Int, with: :apply_skip

    def apply_skip(scope, value)
      scope.offset(value)
    end

    def apply_status_filter(scope, value)
      scope.where(has_loan: value)
    end

    def apply_search(scope, value)
      scope.where(
        "CONCAT_WS(
          ' ',
          cid_no,
          id,
          license_no,
          number_plate,
          debtor_name
          )
          iLIKE ?",
        "%#{value.strip}%"
      )
    end
  end
end