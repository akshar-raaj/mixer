defmodule HelloSystem do
  @moduledoc """
  Demonstrates `System` module functions and usage.
  """

  @doc"""
  Finds the current working directory, a similar functionality to
  Linux `pwd`.

  ## Examples:

      iex> HelloSystem.current_directory()
      "/app/hello"
  """
  def current_directory() do
    File.cwd!()
  end

  def environment_variable(var) do
    System.get_env(var)
  end
end
