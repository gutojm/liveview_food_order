defmodule LiveviewFoodOrder.Repo do
  use Ecto.Repo,
    otp_app: :liveview_food_order,
    adapter: Ecto.Adapters.Postgres
end
