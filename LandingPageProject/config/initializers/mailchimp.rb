require "dotenv/load"

Gibbon::Request.api_key = ENV["MAILCHIMP_API_KEY"]
Gibbon::Request.timeout = 15
Gibbon::Request.throws_exceptions = true
puts "je cherche, veuillez patienter"