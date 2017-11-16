class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :recoverable, :lockable, :timeoutable, :trackable, :validatable and :omniauthable
  devise :database_authenticatable, :rememberable
end
