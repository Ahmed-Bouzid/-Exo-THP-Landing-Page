class HomesController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create

		@hash = []
		puts params
		@first_name = params[:user][:first_name]
		@last_name = params[:user][:last_name]
		@email = params[:user][:email]
		@city = params[:user][:city]
		@phone = params[:user][:phone]
		@occupation = params[:user][:occupation]

		@hash = [@first_name, @last_name, @email, @city, @phone, @occupation]

		@user = User.create(first_name: @first_name, last_name:@last_name, email:@email, city: @city, phone:@phone, occupation:@occupation)
		
		UserMailer.new.welcome_mail(@email)



		File.open('db/info.json', 'w') do |f|
			f.write(@hash.to_json)

		end
	end


	def show
	end


end
