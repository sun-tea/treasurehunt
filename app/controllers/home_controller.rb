class HomeController < ApplicationController
	before_action :set_answer_counter

	def index
		
	end

	def check
		if params.has_key?(:facebook)
			if Answer.find_by(title: "facebook").value == params[:facebook].strip
				session[:answer_counter] += 1
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:instagram)
			if Answer.find_by(title: "instagram").value == params[:instagram].strip
				session[:answer_counter] += 1
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:lastfm)
			if Answer.find_by(title: "lastfm").value == params[:lastfm].strip
				session[:answer_counter] += 1
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:twitter)
			if Answer.find_by(title: "twitter").value == params[:twitter].strip
				session[:answer_counter] += 1
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		end

	end

	private
  def set_answer_counter
  	if session[:answer_counter].nil?
  		session[:answer_counter] = 0
  	end
	  @counter = session[:answer_counter]
  end
end
