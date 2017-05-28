class PassengerMailer < ApplicationMailer

	def welcome_email(passengers)
		@passengers = passengers
		mail(from: 'jackwong3101@yahoo.com', to: 'jackwong3101@yahoo.com', subject: 'WELCOME TO THE ODIN FLIGHT BOOKER')
	end
end
