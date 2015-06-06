class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :set_answer_counter

  # private
  #   def set_answer_counter
  #   	if session[:answer_counter].nil?
  #   		session[:answer_counter] = 0
  #   	end
		#   @counter = session[:answer_counter]
  #   end
end
