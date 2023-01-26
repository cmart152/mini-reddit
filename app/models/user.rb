class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length:  { minimum: 3 }
  validates :email, presence: true, format: { with: /[a-zA-Z\d]+@+[a-zA-Z\d]+\.+[a-zA-Z\d]+/}
  validates :password, presence: true

end
