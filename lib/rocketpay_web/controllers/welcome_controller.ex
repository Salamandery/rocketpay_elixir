defmodule RocketpayWeb.WelcomeController do
  use RocketpayWeb, :controller

  alias Rocketpay.Numbers, as: SumNumber

  def index(conn, %{"filename" => filename}) do
    filename
    |> SumNumber.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome momovalda api. Aqui o resultado do momo #{result}"})
  end
  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end
