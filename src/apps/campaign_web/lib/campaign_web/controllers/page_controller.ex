defmodule CampaignWeb.PageController do
  use CampaignWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
