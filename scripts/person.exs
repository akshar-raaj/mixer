defmodule Person do
  def say(name) do
    "I am #{name}"
  end

  def predict(city) do
    case city do
      "Hyderabad" -> 1000
      "Bangalore" -> 800
      "Delhi" -> 600
      "Mumbai" -> 1200
      _ -> :invalid
    end
  end
end

IO.puts Person.say("akshar")

IO.puts Person.predict("Chennai")
