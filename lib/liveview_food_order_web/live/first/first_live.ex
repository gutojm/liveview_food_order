defmodule LiveviewFoodOrderWeb.FirstLive do
  @moduledoc false
  use LiveviewFoodOrderWeb, :live_view

  alias LiveviewFoodOrderWeb.First.IncComponent

  def mount(_assign, _session, socket) do
    components_value = [1, 4, 10, 3]
    total = Enum.sum(components_value)

    {:ok, socket |> assign(components_value: components_value, total: total)}
  end

  def handle_info(:inc_parent, socket) do
    {:noreply, socket |> update(:total, fn total -> total + 1 end)}
  end

  def handle_event("save", %{"component" => component}, socket) do
    send_update(IncComponent, id: "inc-" <> component, inc: 1)
    {:noreply, socket |> update(:total, fn total -> total + 1 end)}
  end
end
