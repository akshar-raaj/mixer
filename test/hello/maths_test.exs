defmodule Hello.MathsTest do
  use ExUnit.Case

  test "add integers" do
    assert Hello.Maths.add(1, 2) == 3
  end

  test "add floats" do
    assert Hello.Maths.add(1.5, 2.5) == 4.0
  end

  test "add with negatives" do
    assert Hello.Maths.add(-5, 2) == -3
  end

  test "subtract integers" do
    assert Hello.Maths.subtract(5, 2) == 3
  end

  test "subtract floats" do
    assert Hello.Maths.subtract(5.5, 2.0) == 3.5
  end

  test "subtract to negative" do
    assert Hello.Maths.subtract(2, 5) == -3
  end
end
