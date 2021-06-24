module Dashboards
  class Creator < BaseService
    def call
      current_user.create_dashboard(params)
    end
  end
end