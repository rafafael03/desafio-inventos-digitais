class MinionMailer < ApplicationMailer
	default from: 'pre-order@minions.com'

	def confirmation_email(form)
		@form = form
		mail(to: 'rayssa@inventosdigitais.com.br', subject: 'Pre-order confirmation!')
	end
end
