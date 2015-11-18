defmodule Issues.GithubIssues do

  @user_agent [{"User-agent", "Elixir dave@pragprog.com"}]

  def fetcher(user, project) do
    case HTTPoison.get(issues_url(user, project), @user_agent) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        Poison.decode!(body)
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
        System.halt(0)
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
        System.halt(0)
    end
  end

  # use a module attribute to fetch the value at compile time
  @github_url Application.get_env(:issues, :github_url)

  defp issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

end
