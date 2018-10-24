json.extract! detalle_orden, :id, :producto_id, :cantidad, :precio, :created_at, :updated_at
json.url detalle_orden_url(detalle_orden, format: :json)
