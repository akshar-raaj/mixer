defmodule Person do
  def say(name) do
    "I am #{name}"
  end

  def predict_income(age, city \\ "Hyderabad") when is_number(age)  and is_binary(city) do
    {:ok, age_income} = predict_age_income(age)
    city_income = predict_city_income(city)
    age_income + city_income
  end

  def predict_income(age, city) do
    IO.puts "Invalid input. Age must be a number and City must be a string. Provided values, age: #{age} and city: #{city}"
    {:error, :invalid}
  end

  def predict_city_income(city) when is_binary(city) do
    case city do
      "Hyderabad" -> 1000
      "Bangalore" -> 800
      "Delhi" -> 600
      "Mumbai" -> 1200
      _ -> :invalid
    end
  end

  defp predict_age_income(age) when age <= 100 and age > 20 do
    case age do
      greater_than_50 when greater_than_50 > 50 -> {:ok, 1000}
      less_equal_50 when less_equal_50 <= 50 -> {:ok, 700}
    end
  end

  defp predict_age_income(age) when age < 20 do
    {:error, :minor}
  end

  defp predict_age_income(age) when age > 100 do
    {:error, :too_old}
  end
end
