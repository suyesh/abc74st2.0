json.array!(@ultra_portins) do |ultra_portin|
  json.extract! ultra_portin, :sim_number, :zip_code, :ninteen_plan, :twentynine_plan, :tirtynine_plan, :fortynine_plan, :fiftynine_plan, :first_name, :last_name, :email, :old_number, :account_no, :zip_code, :old_password, :admin_id, :wallet_id
  json.url ultra_portin_url(ultra_portin, format: :json)
end
