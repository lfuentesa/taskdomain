class Broker < ActiveRecord::Base
	has_many :requests
end
