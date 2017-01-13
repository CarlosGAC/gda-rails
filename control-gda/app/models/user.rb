class User < ActiveRecord::Base
  require "bcrypt"
  before_create :set_encryption_password

  validates :username, :presence => true, :uniqueness => true, :length => {:in => 3..20}

  def set_encryption_password
    self.password = BCrypt::Password.create self.password
  end

end
