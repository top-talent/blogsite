class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def update?
    @record.creator == @user
  end
end