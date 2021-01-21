defmodule Todolist.Auth do
  import Riptide

  def session_create(key, data) do
    merge(["auth:sessions", key], data)
  end

  def session_info(key), do: Riptide.query_path!(["auth:sessions", key])
end
