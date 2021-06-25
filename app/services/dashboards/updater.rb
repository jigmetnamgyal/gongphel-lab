module Dashboards
  class Updater < BaseService
    def call
      current_user.dashboards.find(params[:id]).tap do |dash|
        # authorize!(dash, to: :update?)
        dash.update!(params)
      end
    end
  end
end