defmodule Todolist.Permissions do
  use Riptide.Interceptor

  def mutation_before([], _layer, _mut, %{internal: true}), do: :ok

  def mutation_before([], _layer, _mut, _state) do
    # mut
    # |> Riptide.Mutation.layers()
    # |> Enum.any?(fn
    #   {["todos" | _], _} -> false
    #   {path, layer} -> false
    # end)
    # |> case do
    #   true -> :ok
    #   false -> {:error, :not_allowed}
    # end
  end
end
