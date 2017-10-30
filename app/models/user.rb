class User < ApplicationRecord
  has_secure_password

  has_many :rounds
  has_many :guesses, through: :rounds, source: :guesses
end
