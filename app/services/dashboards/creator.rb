module Dashboards
  class Creator < BaseService
    def call
      current_user.dashboards.new(params) do |dashboard|
        authorize!(dashboard, to: :create?)
        dashboard.save!
      end
    end
  end
end