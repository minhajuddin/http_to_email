defmodule HTEWeb.EmailController do
  use HTEWeb, :controller

  def create(conn, %{"id" => id}) do
    text(conn, "Sent email to #{id}")
  end
end
