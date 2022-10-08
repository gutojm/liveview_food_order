defmodule LiveviewFoodOrderWeb.MainLive do
  use LiveviewFoodOrderWeb, :live_view
  alias LiveviewFoodOrderWeb.Main.Hero
  alias LiveviewFoodOrderWeb.Main.Items

  def mount(_assigns, _session, socket) do
    {:ok, socket |> assign(name: "Guto")}
  end
end
