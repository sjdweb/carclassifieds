class HomeController < ApplicationController
	def index
		@cars = Car.where(sold: false)
	end
end
