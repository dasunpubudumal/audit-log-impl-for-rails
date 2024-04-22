class User < ApplicationRecord
  enum role: { admin: 0, user: 1, guest: 2 }
  has_secure_password :password, validations: true
  validates :name, presence: true, uniqueness: true

  def set_default_role
    self.role ||= user!
  end


end
