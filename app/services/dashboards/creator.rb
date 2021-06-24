module Dashboards
  class Creator < BaseService
    def call
      Dashboard.new(params) do |dashboard|
        authorize!(dashboard, to: :create?)
        dashboard.save!
      end
    end
  end
end