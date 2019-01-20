class HomeController < ApplicationController

	def index
		@forms = Form.all
	end

	def to_forms
		@form = Form.new
		render 'forms/new'
	end

end
