defmodule VisionServerWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, VisionServer.Posts.list_photos()}
  end

  def photo(_, %{id: id}, _) do
    {:ok, VisionServer.Posts.get_photo!(id)}
  end
end

# resolver accessing list photos
# vision_server/lib/vision_server/posts/posts.ex
