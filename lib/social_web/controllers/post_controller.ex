defmodule SocialWeb.PostController do
  use SocialWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

end
