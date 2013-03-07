class User < ActiveRecord::Base 
  devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable,
           #:confirmable,
            :token_authenticatable
  attr_accessible :email, :password, :password_confirmation
end
