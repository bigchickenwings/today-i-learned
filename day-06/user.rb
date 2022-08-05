class User < ApplicationRecord
  has_many :sessions, dependent: :destroy

  def session_valid?(token)
    Users::Valid.new(token, self).call
  end
end