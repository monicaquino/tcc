json.array!(@percentual_gorduras) do |percentual_gordura|
  json.extract! percentual_gordura, :triceps, :supra_f, :supra_m, :abdomen, :coxa, :subescapular, :aluno_id
  json.url percentual_gordura_url(percentual_gordura, format: :json)
end
