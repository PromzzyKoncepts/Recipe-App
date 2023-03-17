class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, RecipeItem

    return unless user.present?

    can :manage, Food, user_id: user.id
    can :manage, RecipeItem, user_id: user.id
    can :manage, RecipeFood

    return unless user.admin?

    can :manage, :all
  end
end
