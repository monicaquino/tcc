json.array!(@teste_anamneses) do |teste_anamnese|
  json.extract! teste_anamnese, :meta, :condicionamento, :tipo_sanguineo, :anemia, :fumante, :alergia, :doenca, :lesao, :cirurgia, :medicacao, :emergencia, :telefone, :observacao, :dieta, :peso, :altura, :aluno_id
  json.url teste_anamnese_url(teste_anamnese, format: :json)
end
