json.array!(@ptel_portins) do |ptel_portin|
  json.extract! ptel_portin, :existing_number, :first_name, :last_name, :contact_number, :address, :city, :state, :zip_code, :email, :old_service_provider, :old_account_id, :old_account_password, :fourtyplan, :fiftyplan, :real_paygo, :paygo_amount, :comments, :wallet_id, :admin_id
  json.url ptel_portin_url(ptel_portin, format: :json)
end
