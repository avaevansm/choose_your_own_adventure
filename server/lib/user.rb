class User < ActiveRecord::Base
validates :token, uniqueness: true
end
