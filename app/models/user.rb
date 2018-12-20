class User < ApplicationRecord
  has_secure_password

	has_many :listings
  has_many :appointments, through: :listings, source: :user

  validates :username, presence: true, uniqueness: {case_sensitive: :false}

end
