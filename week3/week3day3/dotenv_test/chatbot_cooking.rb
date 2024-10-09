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

def data_openai
  {
    "prompt" => "une recette de cuisine, la liste des ingrédients, aléatoire",
    "max_tokens" => 100,
    "n" => 1,
    "stop" => ["\n"],
    "temperature" => 0.5,
    "model" => "babbage-002"
  }
end

headers = login_openai(api_key, url)

data = data_openai


response = HTTP.post(url, headers: headers, body: data.to_json)
response_body = JSON.parse(response.body.to_s)
response_string = response_body['choices'][0]['text'].strip

puts "Voici 1 recette de cuisine aléatoire :"
puts response_string
