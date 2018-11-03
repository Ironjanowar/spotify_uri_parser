defmodule SpotifyUriParser do
  @doc """
  Get info from a spotify uri

  ## Examples

      iex> SpotifyUriParser.parse("spotify:track:7i9763l5SSfOnqZ35VOcfy")
      [{:keyword, 1, :track}, {:spotify_id, 1, '7i9763l5SSfOnqZ35VOcfy'}]

  """
  @spec parse(binary) :: list
  def parse(str) do
    {:ok, tokens, _} = str |> to_charlist() |> :list_lexer.string()
    tokens
  end
end
