defmodule ExMacroInspect do
  @moduledoc """
  Documentation for ExMacroInspect.  Elixir Macro Inspection Library to see AST passed in to any macro expression.
  The main purpose is a aide for developers building macros during development.
  """

  @doc """
  mray should be called 
  """
  defmacro mray() do
    IO.puts("mray/0 called")
    nil
  end

  defmacro mray(first_arg) do
    IO.puts("mray/1 called.\nfirst_arg:#{first_arg}")
    nil
  end

  defmacro mray(first_arg, second_arg) do
    IO.puts("mray/2 called.\nfirst_arg:#{inspect(first_arg)}\nsecond_arg:#{inspect(second_arg)}")
    nil
  end

  defmacro mray(first_arg, second_arg, third_arg) do
    IO.puts(
      "mray/2 called.\nfirst_arg:#{inspect(first_arg)}\nsecond_arg:#{inspect(second_arg)}\nthirst_arg#{
        inspect(third_arg)
      }"
    )

    nil
  end
end
