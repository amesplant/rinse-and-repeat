require 'bcrypt'

class User < ActiveRecord::Base

  validates_presence_of :username, :email, :encrypted_password

  validates_uniqueness_of :username, :email

  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  has_many :rounds

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    # @entered_password = new_password # to test that the password isn't a blank string
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def password_length
    if @entered_password && @entered_password.length < 5
      self.errors.add(:password, "should be at least 5 characters silly!")
    end
  end

  def authenticate(possible_password)
    self.password == possible_password
  end
end
