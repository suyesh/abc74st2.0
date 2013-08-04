json.array!(@simple_portins) do |simple_portin|
  json.extract! simple_portin, :sim_number, :existing_phone, :zip_code, :current_service_provider, :old_account_number, :old_account_password, :first_name, :last_name, :email, :address, :city, :state, :zip_code, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :seventy_plan, :admin_id, :wallet_id
  json.url simple_portin_url(simple_portin, format: :json)
end
