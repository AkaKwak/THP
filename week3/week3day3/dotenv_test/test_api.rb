require 'http'
require 'dotenv'
require 'pry'
Dotenv.load


api_key = ENV["CHATGPT_API_SECRET"]
# binding.pry
url = "https://api.openai.com/v1/models"

def login_openai(api_key, url)
  headers = {
    "Content-Type" => "application/json",
    "Authorization" => "Bearer #{api_key}"
  }
  response = HTTP.get(url, headers: headers)
  
  puts response
  return response
end

login_openai(api_key, url)
