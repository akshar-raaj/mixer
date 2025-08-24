defmodule Hello.HolaTest do
  use ExUnit.Case

  test "say hola" do
    assert Hello.Hola.hola() == :mundo
  end

  test "saludar default" do
    assert Hello.Hola.saludar() == "Hola akshar"
  end

  test "saludar personally" do
    assert Hello.Hola.saludar("prasad") == "Hola prasad"
  end
end
