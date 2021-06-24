module Dashboards
  class Updater < BaseService
    def call
      current_user.dashboard do |dash|
        authorize!(dash, to: :update?)
        dash.update!(params)
      end
    end
  end
end