defmodule Hello.Github do

  @base "https://api.github.com/"
  @repo_fragment "repos/"

  @moduledoc """
    Interacts with Github REST API
    Can interact with following entities:
      - Repository
      - Contributors
      - Issues
  """

  @doc """
    Retrieves a repository information
  """
  def repo_attribute(repo_name \\ "akshar-raaj/mixer", field) do
    full_url = @base <> @repo_fragment <> repo_name
    case Req.get(full_url) do
      {:ok, %{status: 200, body: body}} when is_map(body) -> Map.get(body, field)
      {:ok, %{status: 404}} -> "Repository not found"
      {:error, %{reason: reason}} -> "Error. Reason: #{IO.inspect reason}"
    end
  end
end
