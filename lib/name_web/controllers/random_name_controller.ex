defmodule NameWeb.RandomNameController do
  use NameWeb, :controller

  def show(conn, _params) do
    random_name = Name.get_random_name()

    render(conn, "show.json", random_name: random_name)
  end
end
