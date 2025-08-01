defmodule Hello.Math do
  def add(a, b) do
    a + b
  end

  def subtract(a, b) do
    a - b
  end

  def divide(num, 0) do
    IO.puts("Invalid denominator")
    0
  end
  def divide(num, den) do
    num/den
  end
end
