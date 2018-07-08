defmodule HTEWeb.PageController do
  use HTEWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
