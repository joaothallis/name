defmodule Name do
  @moduledoc """
  Name keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  @spec get_random_name :: String.t()
  def get_random_name do
    FakerElixir.Name.name()
  end
end
