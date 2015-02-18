class Show < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\w/}
end
