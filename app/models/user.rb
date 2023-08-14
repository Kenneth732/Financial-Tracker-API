class User < ApplicationRecord
    has_secure_password
    # has_one_attached :avatar

    validates :avatar_url, format: { with: URI::DEFAULT_PARSER.make_regexp }, allow_blank: true
end


# let me ask what if the user does not want to add their profile  