defmodule LiveviewFoodOrderWeb.PageController do
  use LiveviewFoodOrderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
