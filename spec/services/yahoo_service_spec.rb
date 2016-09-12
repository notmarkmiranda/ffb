require "rails_helper"

describe YahooService do
  it "initiaizles with a consumer key" do
    VCR.use_cassette('oauth_token', record: :new_episodes) do
      y = YahooService.new
      expect(y.consumerkey.key).to_not be_nil
    end
  end

  it "has a token and secret" do
    VCR.use_cassette('token_and_secret', record: :new_episodes) do
      y = YahooService.new

      expect(y.token.class).to eq(String)
      expect(y.token.length).to eq(7)
      expect(y.secret.class).to eq(String)
      expect(y.secret.length).to eq(40)
    end
  end
end
