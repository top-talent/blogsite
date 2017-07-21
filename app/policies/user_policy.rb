class UserPolicy < ApplicationPolicy
  def index?
    false
  end

  def create?
    true
  end

  def update?
    @record.creator == @user
  end
end