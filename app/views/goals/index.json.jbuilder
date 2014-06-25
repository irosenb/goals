json.array!(@goals) do |goal|
  json.extract! goal, :id, :name, :amount, :finished, :contribution
  json.url goal_url(goal, format: :json)
end
