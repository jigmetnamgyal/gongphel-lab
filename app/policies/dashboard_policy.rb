class DashboardPolicy < ActionPolicy::Base
  def index?
    user.bank?
  end

  def create?
    index?
  end

  def update?
    index?
  end
end