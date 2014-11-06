class Studio < ActiveRecord::Base
	validates :title, presence: true
	validates :speciality, presence: true
	validates :url, presence: true, uniqueness: true
end
