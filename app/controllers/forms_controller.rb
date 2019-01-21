class FormsController < ApplicationController
	def index

	end

	def show
		@form = Form.find(params[:id])
	end

	def new
		@form = Form.new(form_params)
	end

	def create
		@form = Form.new(form_params)

		if (@form.save)
			MinionMailer.confirmation_email(@form).deliver
			redirect_to @form
		else
			render 'new'
		end
	end

	private def form_params
		params.require(:form).permit(:name, :phone, :address, :number, :zip_code, :message, :bob, :kevin, :stuart)
	end
end
