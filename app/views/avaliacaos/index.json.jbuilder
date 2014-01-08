json.array!(@avaliacaos) do |avaliacao|
  json.extract! avaliacao, :pessoa_id
  json.url avaliacao_url(avaliacao, format: :json)
end
