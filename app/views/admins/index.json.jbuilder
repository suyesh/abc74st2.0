json.array!(@admins) do |admin|
  json.extract! admin, :first_name, :last_name, :store_number, :cell_number, :address, :city, :state, :zip, :store_name, :email, :autorised_person
  json.url admin_url(admin, format: :json)
end
