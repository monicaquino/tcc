json.array!(@alunos) do |aluno|
  json.extract! aluno, :nome, :sobrenome, :sexo, :data_nas, :telefone, :estado, :cidade
  json.url aluno_url(aluno, format: :json)
end
