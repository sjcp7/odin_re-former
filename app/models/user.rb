class User < ApplicationRecord
  with_options presence: true do
    validates :username, uniqueness: true, length: { minimum: 1 }
    validates :email, uniqueness: true
    validates :password, length: { in: 8..32 }
  end
end
