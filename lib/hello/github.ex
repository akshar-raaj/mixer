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
  def repo_description(repo_name \\ "akshar-raaj/mixer") do
    full_url = @base <> @repo_fragment <> repo_name
    {:ok, response} = full_url
                      |> Req.get
    response.body["description"]
  end
end
