defmodule StreamPermutations do
  @doc """
  Returns a stream with all permutations for given list
  """
  import Formulae.Combinators.H

  def generate(list) do
    length = length(list)

    ast =
      Enum.reduce(length..1, {[mapper(1, length, &var/1)], :ok}, fn i, body ->
        stream_permutation_transform_clause(i, list, body)
      end)

    {{stream, :ok}, _} = Code.eval_quoted(ast)
    stream
  end
end
