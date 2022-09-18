defmodule LiveviewFoodOrderWeb.First.IncComponent do
  use LiveviewFoodOrderWeb, :live_component

  def update(%{inc: value}, socket) do
    {:ok, socket |> update(:value, fn v -> v + value end) }
  end

  def update(assign, socket) do
    {:ok, socket |> assign(assign)}
  end

  def handle_event("increment", _, socket) do
    send(self(), :inc_parent)
    {:noreply, socket |> update(:value, fn v -> v + 1 end)}
  end
end