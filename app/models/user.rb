class User<ActiveRecord::Base
  validates :name, presence: true
  validates :login, presence: true
  validates :email, presence: true
  has_secure_password
end
