defmodule CountFiles do
  @moduledoc """
  Documentation for `CountFiles`.
  """

  @doc """
  CountFiles

  Takes in a directory and an accumulator.
  It recursively goes through all files and directories and counts the number of files.

  """
  def count_files(directory \\ File.cwd!(), orig_acc \\ 0) do
    case File.ls(directory) do
      {:ok, files} ->
        Enum.reduce(files, orig_acc, fn file, acc ->
          if File.dir?(Path.join(directory, file)) do
            count_files(Path.join(directory, file), acc)
            # acc
          else
            acc + 1
          end
        end)

      {:error, reason} ->
        {:error, reason}
    end

    # {:ok, results} ->
    # loop through results of File.ls, if it is a file
  end
end
