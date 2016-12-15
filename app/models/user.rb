class User < ActiveRecord::Base
  validates :firstname, :lastname, :message, :email, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
