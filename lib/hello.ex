defmodule Hello do
  @moduledoc """
  Documentation for `Hello`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Greets a person by name.

  ## Examples

      iex> Hello.greet("Alice")
      "Hello, Alice!"

  """
  def greet(name) do
    "Hello, #{name}!"
  end
end
