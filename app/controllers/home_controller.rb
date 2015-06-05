class HomeController < ApplicationController
	def index
		
	end

	def check
		if params.has_key?(:facebook)
			if Answer.find_by(title: "facebook").value == params[:facebook].strip
    			redirect_to :back, notice: 'Bwavooooo'
			end
		end
	end
end
