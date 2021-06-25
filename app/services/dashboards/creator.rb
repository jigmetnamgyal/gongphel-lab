module Dashboards
  class Creator < BaseService
    def call
      binding.pry

      current_user.dashboards.new(params) do |dashboard|
        # authorize!(dashboard, to: :create?)
        dashboard.save!
      end
    end
  end
end