class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user && authenticated?
  end

  def update?
    user && authenticated?
  end

  def destroy?
    user && authenticated?
  end


  private

  def authenticated?
    user.authentication_token.present?
  end
end
