class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def guest?
    email == 'guest@example.com'
  end
end
