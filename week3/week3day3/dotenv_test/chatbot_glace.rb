require 'http'
require 'json'
require 'dotenv'
require 'pry'
Dotenv.load

 api_key = ENV["CHATGPT_API_SECRET"]
 url = "https://api.openai.com/v1/completions"


def login_openai(api_key, url)
  {
    "Content-Type" => "application/json",
    "Authorization" => "Bearer #{api_key}" 
  }
end
# goûts, créme glacé, parfum,
def data_openai
  {
    "prompt" => "Hello, voici 5 fruits aléatoires :\n-",
    "max_tokens" => 50,
    "n" => 1,
    "stop" => ["\n"],
    "temperature" => 0.7,
    "model" => "babbage-002"
  }
end

  headers = login_openai(api_key, url)

  data = data_openai

  response = HTTP.post(url, headers: headers, body: data.to_json)
  response_body = JSON.parse(response.body.to_s)
  response_string = response_body['choices'][0]['text'].strip

puts "Voici 5 parfums de glace :"
puts response_string
