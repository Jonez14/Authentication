class User < ActiveRecord::Base
  attr_accessible :email, :passowrd_digest
end
