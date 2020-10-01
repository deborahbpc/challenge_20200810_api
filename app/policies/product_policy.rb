class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.authentication_token.present?
  end

  def create?
    user.authentication_token.present?
  end

  def update?
    user.authentication_token.present?
  end

  def destroy?
    user.authentication_token.present?
  end

end
