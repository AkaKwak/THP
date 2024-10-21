#gossip.rb

class Gossip
  attr_accessor :author, :content


  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  # def save
  #     # Exemple de données
  #   tableau = [name: "Jean", message: "Bonjour,\nComment allez-vous ?"]
  #   # Écriture du fichier JSON formaté avec des retours à la ligne
  #   File.open('db/gossip.json', 'w') do |file|
  #   file.write(JSON.pretty_generate(tableau))
  #   end
  # end

end
