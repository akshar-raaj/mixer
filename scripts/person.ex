defmodule Person do
  def say(name) do
    "I am #{name}"
  end

  def predict_income(age, city \\ "Hyderabad") when is_number(age)  and is_binary(city) do
    case predict_age_income(age) do
      {:ok, age_income} ->
        case predict_city_income(city) do
          {:ok, city_income} -> age_income + city_income
          error -> error
        end
      error -> error
    end
  end

  def predict_income(age, city) do
    reason = "Invalid input. Age must be a number and City must be a string. Provided values, age: #{age} and city: #{city}"
    {:error, reason}
  end

  defp predict_city_income(city) do
    case city do
      "Hyderabad" -> {:ok, 1000}
      "Bangalore" -> {:ok, 800}
      "Delhi" -> {:ok, 600}
      "Mumbai" -> {:ok, 1200}
      _ -> handle_invalid_city(city)
    end
  end

  defp handle_invalid_city(city) do
    reason = "Supported cities: Hyderabad, Delhi, Mumbai, Bangalore. Provided city: #{city}"
    {:error, reason}
  end

  defp predict_age_income(age) when age <= 100 and age > 20 do
    case age do
      greater_than_50 when greater_than_50 > 50 -> {:ok, 1000}
      less_equal_50 when less_equal_50 <= 50 -> {:ok, 700}
    end
  end

  defp predict_age_income(age) when age < 20 do
    reason = "Age must be greater than 20. Provided age: #{age}"
    {:error, reason}
  end

  defp predict_age_income(age) when age > 100 do
    reason = "Age must be less than 100. Provided age: #{age}"
    {:error, reason}
  end
end
