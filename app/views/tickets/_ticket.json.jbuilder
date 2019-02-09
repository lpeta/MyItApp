json.extract! ticket, :id, :name, :summary, :description, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
