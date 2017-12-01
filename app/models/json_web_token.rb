class JsonWebToken
  class << self
    def encode(pld)
      JWT.encode(pld, Rails.application.secrets.secret_key_base)
    end

    def decode(tkn)
      JWT.decode(tkn, Rails.application.secrets.secret_key_base).first
    end
  end
end