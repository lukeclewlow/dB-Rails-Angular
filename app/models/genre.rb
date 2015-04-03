class Genre < ActiveRecord::Base
	has_many :tunes
end
