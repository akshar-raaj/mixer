defmodule Hello.Hello do
  def hello do
    :world
  end

  def greet(name \\ "akshar") do
    "Hello, #{name}!"
  end

  def bye do
    :bye
  end
end
