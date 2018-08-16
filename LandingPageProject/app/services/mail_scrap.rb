require 'open-uri'
require 'nokogiri'
require_relative '../controllers/mail_controller'

class MailScrap



    def initialize
      @url = "https://www.leportagesalarial.com/coworking/"
    end

    def get_all_the_coworking_url(adresse)

      page = Nokogiri::HTML(open(adresse))
      page.xpath('//*[@id="post-8308"]/div[2]/div/ul/li/a').each do |node|
        @coworking_url = node['href']
        get_the_email_of_a_coworking_from_its_webpage("#{@coworking_url}")
      end
    end


    def get_the_email_of_a_coworking_from_its_webpage(liens)    
      page = Nokogiri::HTML(open(liens))
      page.xpath('//*/div[2]/div/ul/li/a').each do |node|

          if node['href'].include?("mailto:")
            @adress << node['href'].sub("mailto:", "")
          end

      end
    end

    def save_in_db
      puts "aaaaa"
        @adress.each do |x|
          @mail =  AdressMail.create(email_adress:"#{x}")
        end
      puts "bbb"
    end

    def array_to_json
      File.open('db/coworking_emails.json', 'wb') do |f|
        f.write(@adress.to_json )
      end
    end

    def send_email
      @adress.each do |x|
          InviteMailer.new.invite_mail("#{x}")
      end
    end

    def perform
      @array_name= []
      @adress= []
      @bad_adress= []

      get_all_the_coworking_url(@url)
      save_in_db
      array_to_json
      send_email
    end

end
