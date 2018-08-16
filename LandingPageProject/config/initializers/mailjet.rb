Mailjet.configure do |config|
  config.api_key = Rails.application.secrets.secret_key_base
  config.secret_key = Rails.application.secrets.secret_api_key
  config.default_from = Rails.application.secrets.secret_mail

end