json.array!(@vo2maximos) do |vo2maximo|
  json.extract! vo2maximo, :distancia, :aluno_id
  json.url vo2maximo_url(vo2maximo, format: :json)
end
