defmodule Issues.TableFormatter do

  def create_table_of_issues(list) do
    header = [ String.ljust(" #", 5),
               String.ljust(" Created at", 22),
               " Title" ]
    border = [ String.duplicate("-", 5),
               String.duplicate("-", 22),
               String.duplicate("-", 50) ]
    IO.puts Enum.join(header, "|")
    IO.puts Enum.join(border, "+")
    create_table_row(list)
  end

  def create_table_row([]), do: IO.puts String.duplicate("-", 79)

  def create_table_row([head|tail]) do
    line = [head["number"], head["created_at"], head["title"]]
    |> Enum.join(" | ")
    |> String.slice(0..78)

    IO.puts line

    create_table_row(tail)
  end
end
