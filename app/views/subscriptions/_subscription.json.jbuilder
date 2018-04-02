json.extract! subscription, :id, :name, :birthdate, :artistic_name, :age, :cpf, :rg, :address, :city, :phone, :email, :schooling, :experienced, :experience_description, :signature, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
