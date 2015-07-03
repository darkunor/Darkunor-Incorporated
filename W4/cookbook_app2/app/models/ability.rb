class Ability
  include CanCan::Ability

    def initialize(user)
      user ||= User.new
      if user.role? :admin
        can :manage, :all
      elsif user.role? :regular
        can :edit, Recipe
        can :read, User
      end
    end
end
