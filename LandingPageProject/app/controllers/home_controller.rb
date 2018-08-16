class HomeController < ApplicationController
	def index
		@user = User.new
	end


	def create

		@hash = []

		@first_name = params[:user][:first_name]
		@last_name = params[:user][:last_name]
		@email = params[:user][:email]
		@city = params[:user][:city]
		@phone = params[:user][:phone]
		@occupation = params[:user][:occupation]

		@user = User.create(first_name: @first_name, last_name:@last_name, email:@email, city: @city, phone:@phone, occupation:@occupation)


		@hash = [@first_name, @last_name, @email, @city, @phone, @occupation]
		puts @hash

		File.open('db/info.json', 'w') do |f|
			f.write(@hash.to_json)
		end

	end


end
