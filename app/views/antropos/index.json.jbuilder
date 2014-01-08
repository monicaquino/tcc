json.array!(@antropos) do |antropo|
  json.extract! antropo, :estatura, :pescoco, :ombro, :torax, :cintura, :abdomen, :quadril, :braco_esq, :antebraco_esq, :coxa_esq, :panturrilha_esq, :braco_dir, :antebraco_dir, :panturrilha_dir, :coxa_dir, :aluno_id
  json.url antropo_url(antropo, format: :json)
end
