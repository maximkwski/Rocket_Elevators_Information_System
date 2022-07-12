class Elevator < ApplicationRecord
    belongs_to :column
    require 'twilio-ruby'

    after_update :test

    
    def test
        account_sid = ENV['account_sid']
        auth_token = ENV['auth_token']
        @client = Twilio::REST::Client.new account_sid, auth_token;
        if (self.elevator_status == "Intervention")
            message = @client.messages
            .create(
                from: '+19794757363',
                body: 'You up? -Gojo',
                to: '+16034184542'
            )
            puts message.sid
        end

    end
end