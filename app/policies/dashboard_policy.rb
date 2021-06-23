class DashboardPolicy < ActionPolicy::Base
  def index?
    user.bank?
  end
end