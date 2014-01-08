json.array!(@cintura_quadrils) do |cintura_quadril|
  json.extract! cintura_quadril, :cintura, :quadril, :aluno_id
  json.url cintura_quadril_url(cintura_quadril, format: :json)
end
