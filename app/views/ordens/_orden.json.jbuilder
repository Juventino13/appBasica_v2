json.extract! orden, :id, :cliente_id, :num_orden, :fecha, :created_at, :updated_at
json.url orden_url(orden, format: :json)
