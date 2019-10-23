json.extract! owner, :id, :fname, :lname, :phone, :email, :created_at, :updated_at
json.url owner_url(owner, format: :json)
