class HomeController < ApplicationController
	before_action :set_answer_counter

	def index
		
	end

	def check
		if params.has_key?(:facebook)
			if Answer.find_by(title: "facebook").value.downcase == params[:facebook].strip.downcase
				session[:answer_counter] += 1
				session[:facebook] = true
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:instagram)
			if Answer.find_by(title: "instagram").value.downcase == params[:instagram].strip.downcase
				session[:answer_counter] += 1
				session[:instagram] = true
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:lastfm)
			if Answer.find_by(title: "lastfm").value.downcase == params[:lastfm].strip.downcase
				session[:answer_counter] += 1
				session[:lastfm] = true
  			redirect_to :back, notice: 'Bwavooooo'
    	else
  			redirect_to :back, notice: 'Loser.'
			end
		elsif params.has_key?(:twitter)
			if params[:twitter].strip.downcase.include? Answer.find_by(title: "twitter").value.downcase
				session[:answer_counter] += 1
				session[:twitter] = true
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
