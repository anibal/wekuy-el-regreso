defmodule WekuyWeb.PageController do
  use WekuyWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
