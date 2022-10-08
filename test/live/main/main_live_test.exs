defmodule LiveviewFoodOrderWeb.MainLiveTest do
  use LiveviewFoodOrderWeb.ConnCase
  import Phoenix.LiveViewTest

  test "load page", %{conn: conn} do
    {:ok, view, html} = live(conn, Routes.main_path(conn, :index))

    assert html =~ "Make your order"
    assert render(view) =~ "Make your order"
  end
end
