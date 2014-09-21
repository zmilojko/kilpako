json.array!(@runs) do |run|
  json.extract! run, :id, :competitor_id, :race_id, :number, :verdict, :result_time
  json.url run_url(run, format: :json)
end
