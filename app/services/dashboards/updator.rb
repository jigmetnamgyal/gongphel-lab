module Dashboards
  class Updater < BaseService
    def call
      current_user.dashboard.find(params[:id]).tap do |dashboard|
        authorize!(dashboard, to: :update?)
        dashboard.update!(params)
      end
    end
  end
end