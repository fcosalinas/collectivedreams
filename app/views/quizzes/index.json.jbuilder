json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :possible_date, :idea, :possible_places, :max_assistance, :min_assistance, :max_cost, :min_cost
  json.url quiz_url(quiz, format: :json)
end
