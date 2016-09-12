require 'oauth'

class YahooService
  # attr_reader :request_token

  def initialize
    @_request = consumer.get_request_token
  end

  def consumerkey
    request.consumer
  end

  def token
    request.token
  end

  def secret
    request.secret
  end

  private

  def request
    @_request
  end

  def consumer
    OAuth::Consumer.new(ENV['yahoo_client_id'],ENV['yahoo_client_secret'], site: "https://api.login.yahoo.com/oauth/v2/get_request_token")
  end
end
