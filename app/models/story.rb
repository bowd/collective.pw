class Story < ApplicationRecord
  def set_token!
    if token.nil?
      update!(token: SecureRandom.hex(10))
    end
  end
end
