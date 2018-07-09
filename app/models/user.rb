class User < ApplicationRecord
  validates :username, presence: true,
                       length: {minumum: 5, maximum: 100},
                       uniqueness: {case_sensitive: false}
                       VALID_EMAIL_REGEX: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: {minumum: 5, maximum: 100},
                    uniqueness: {case_sensitive: false},
                    format: {with: VALID_EMAIL_REGEX}
end
