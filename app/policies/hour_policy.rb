class HourPolicy < ApplicationPolicy

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    user.admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
