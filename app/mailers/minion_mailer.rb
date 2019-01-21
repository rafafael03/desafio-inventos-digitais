class MinionMailer < ApplicationMailer
	default from: 'pre-order@minions.com'

	def confirmation_email(form)
		@form = form
		mail(to: 'rafael-030497@hotmail.com', subject: 'Pre-order confirmation!')
	end
end
