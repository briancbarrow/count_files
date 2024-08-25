defmodule Mix.Tasks.CountFiles do
  @moduledoc """
  Documentation for `CountFiles`.

  ## Examples

      mix count_files
       Counting files...
       "There are \#{count} files in your project"
  """
  use Mix.Task

  @doc """
  CountFiles

  ## Examples

      mix count_files
       Counting files...
       "There are \#{count} files in your project"

  """

  @shortdoc "Count the number of files in your project."
  def run(_) do
    IO.puts("Counting files...")

    count = CountFiles.count_files()
    IO.puts("There are #{count} files in your project")
  end
end
