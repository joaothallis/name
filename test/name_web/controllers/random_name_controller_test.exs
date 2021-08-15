defmodule NameWeb.RandomNameControllerTest do
  use NameWeb.ConnCase, async: true

  describe "show/2" do
    test "Returns a random name", %{conn: conn} do
      response = conn |> get(Routes.random_name_path(conn, :show)) |> json_response(200)

      assert %{"data" => %{"random_name" => random_name}} = response
      assert String.length(random_name) > 0
    end
  end
end
