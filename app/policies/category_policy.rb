class CategoryPolicy < ApplicationPolicy

  def show?
    true
  end

  def create?
    user.admin?
    scope.all
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
