defmodule Hello do
  def hello do
    :world
  end

  def greet(name \\ "akshar") do
    "Hello, #{name}!"
  end
end

defmodule Hola do
  def hola do
    :mundo
  end

  def saludar(nombre \\ "akshar") do
    "Hola " <> nombre
  end
end
