defmodule HelloMixTest do
  use ExUnit.Case

  test "current environment" do
    assert HelloMix.current_environment() == :test
  end
end
