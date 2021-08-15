defmodule NameWeb.RandomNameView do
  use NameWeb, :view
  alias NameWeb.RandomNameView

  def render("show.json", %{random_name: random_name}) do
    %{data: render_one(random_name, RandomNameView, "random_name.json")}
  end

  def render("random_name.json", %{random_name: random_name}) do
    %{random_name: random_name}
  end
end
