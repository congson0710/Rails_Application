class User < ApplicationRecord
  validates :username, presence: true, length: {minumum: 5, maximum: 100}
  validates :email, presence: true, length: {minumum: 5, maximum: 100}
end
