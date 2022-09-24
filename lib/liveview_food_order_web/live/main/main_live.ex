defmodule LiveviewFoodOrderWeb.MainLive do
  use LiveviewFoodOrderWeb, :live_view

  def mount(_assigns, _session, socket) do
    {:ok, socket |> assign(name: "Guto")}
  end
end
