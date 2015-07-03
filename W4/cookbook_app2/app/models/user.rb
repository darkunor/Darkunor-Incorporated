class User < ActiveRecord::Base
  has_secure_password

  before_create :assign_role

  attr_accessible :email, :password, :password_confirmation
  validates :password, presence: true, on: :create
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  def assign_role
    if self.role.length == 0
      self.role = 'regular'
    end
  end

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end
