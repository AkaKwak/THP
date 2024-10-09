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

def data_openai(prompt)
  {
    "prompt" => prompt,
    "max_tokens" => 150,
    "n" => 1,
    "stop" => ["\n"],
    "temperature" => 0,
    "model" => "gpt-3.5-turbo-instruct"
  }
end

headers = login_openai(api_key, url)

# Démarrer une boucle de conversation
loop do
  # Demander à l'utilisateur d'entrer un prompt
  print "Une erreur dans le labyrinthe ? (ou 'stop' pour arrêter) : "
  user_input = gets.chomp
  
  # Si l'utilisateur tape 'stop', on sort de la boucle
  break if user_input.downcase == 'stop'

  # Envoyer le prompt à OpenAI
  data = data_openai(user_input)
  response = HTTP.post(url, headers: headers, body: data.to_json)
  
  # Traiter la réponse
  response_body = JSON.parse(response.body.to_s)
  response_string = response_body['choices'][0]['text'].strip
  
  # Afficher la réponse de l'IA
  puts "Réponse : #{response_string}"
end

puts "Conversation terminée."
