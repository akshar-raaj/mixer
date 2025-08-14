defmodule DummyS3 do
  def fetch(key) do
    case fetch_object(key) do
      {:ok, value} -> IO.puts("Success: #{value}")
      {:error, reason} -> IO.puts("Failure: #{reason}")
    end
    :done
  end
  def fetch_object(key) when is_binary(key) do
    case key do
      "monday" -> {:ok, "first"}
      "tuesday" -> {:ok, "second"}
      "wednesday" -> {:ok, "third"}
      "saturday" -> {:error, "weekend"}
      _ -> handle_other_days(key)
    end
  end
  def handle_other_days(key) do
    case key do
      "thursday" -> {:ok, "fourth"}
      _  -> {:error, "unknown"}
    end 
  end
end
