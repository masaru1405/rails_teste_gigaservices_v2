response = RestClient.get 'https://randomuser.me/api/?format=json&results=30&inc=gender,name,email,picture&nat=br&seed=giga'
json = JSON.parse response

if !json.nil?
   json["results"].each do |i|
      Person.create!(
         gender: "#{i['gender']}", 
         title: "#{i['name']['title']}", 
         first_name: "#{i['name']['first']}", 
         last_name: "#{i['name']['last']}", 
         email: "#{i['email']}", 
         picture: "#{i['picture']['large']}"
      )
   end
   puts "Banco populado com sucesso!"
else
   puts "Erro ao buscar os dados da API."
end


