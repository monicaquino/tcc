json.array!(@calculo_imcs) do |calculo_imc|
  json.extract! calculo_imc, :altura, :peso, :aluno_id
  json.url calculo_imc_url(calculo_imc, format: :json)
end
