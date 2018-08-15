class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default
  require 'gibbon'

  def perform(user)
    gibbon = Gibbon::Request.new
    gibbon.timeout = 10
    gibbon.lists(ENV["ID_LIST"]).members.create(body: {email_address: user.email, status: "subscribed",
      merge_fields: {FNAME: user.first_name, LNAME: user.last_name, PHONE: user.phone}})
  end
end
