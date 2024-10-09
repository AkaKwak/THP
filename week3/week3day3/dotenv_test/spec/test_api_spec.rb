require_relative '../test_api'
require 'dotenv'
Dotenv.load




describe "the login_openai method" do
  it "should return response, and response is not nil" do
    api_key = ENV["CHATGPT_API_SECRET"]
    url = "https://api.openai.com/v1/models"
    expect(login_openai(api_key, url)).not_to be_nil
  end
end