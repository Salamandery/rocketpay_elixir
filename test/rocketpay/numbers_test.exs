defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers, as: SumNumber

  describe "sum_from_file/1" do
    test "when theres is a file with the given name, returns the sum of numbers" do
      response = SumNumber.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when theres is mot file with the given name, returns a error" do
      response = SumNumber.sum_from_file("number")

      expected_response = {:error, %{message: "Invalid File!"}}

      assert response == expected_response
    end
  end
end
