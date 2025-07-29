defmodule HelloSystem do
  def current_directory() do
    System.cwd()
  end

  def environment_variable(var) do
    System.get_env(var)
  end
end
