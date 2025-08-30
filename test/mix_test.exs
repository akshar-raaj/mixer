defmodule Hello.MixProjectTest do
  use ExUnit.Case

  test "app name" do
    project = Hello.MixProject.project()
    assert project[:app] == :hello
  end

  test "elixir version" do
    project = Hello.MixProject.project()
    assert project[:elixir] == "~> 1.18"
  end
end
