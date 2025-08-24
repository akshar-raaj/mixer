defmodule Hello.Hola do
  def hola do
    :mundo
  end

  def saludar(nombre \\ "akshar") do
    "Hola " <> nombre
  end
end
