defmodule VisionServerWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, VisionServer.Posts.list_photos()}
  end
end

# resolver accessing list photos
# vision_server/lib/vision_server/posts/posts.ex
