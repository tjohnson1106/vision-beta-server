defmodule VisionServerWeb.Router do
  use VisionServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", VisionServerWeb do
    pipe_through :api
  end
end
