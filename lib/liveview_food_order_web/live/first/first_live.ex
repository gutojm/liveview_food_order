defmodule LiveviewFoodOrderWeb.FirstLive do
  @moduledoc false
  use LiveviewFoodOrderWeb, :live_view

  def mount(_assign, _session, socket) do
    components_value = [1, 4, 10, 3]
    total = Enum.sum(components_value)

    {:ok, socket |> assign(components_value: components_value, total: total)}
  end
end
