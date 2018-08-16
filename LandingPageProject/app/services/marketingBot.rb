require 'dotenv/load'
require 'twitter'

class MarketingBot
  def initialize
      @config = config
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
      }
    end
  end

  def perform
      rClient = Twitter::REST::Client.new.config
      sClient = Twitter::Streaming::Client.new(config)

      topics = ['#developpeur', '#formation','#TheHackingProject']
      sClient.filter(:track => topics.join(',')) do |tweet|
        if tweet.is_a?(Twitter::Tweet)
          sClient.each do |u|
          begin
            rClient.update("#{u}, viens te former à THP, tu vas apprendre beaucoup de choses"
            rescue Exception, NotFound, Forbidden
            next
          end
        end
    rescue
      puts 'error occured, sleeping for 5 seconds'
      sleep 5
  end
end
