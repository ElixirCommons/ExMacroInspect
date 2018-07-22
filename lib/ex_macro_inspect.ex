defmodule ExMacroInspect do
  @moduledoc """
  Documentation for ExMacroInspect.  Elixir Macro Inspection Library to see AST passed in to any macro expression.
  The main purpose is a aide for developers building macros during development.
  """

  @doc """
  mray prints that the mray macro with no arguments was called
  """
  defmacro mray do
    IO.puts("mray/0 called")
    nil
  end

  @doc """
  mray prints the 1 AST argument to the mray macro
  """
  defmacro mray(first_arg) do
    IO.puts("mray/1 called.\nfirst_arg:#{first_arg}")
    nil
  end

  @doc """
  mray prints the 2 AST arguments to the mray macro
  """
  defmacro mray(first_arg, second_arg) do
    IO.puts("mray/2 called.\nfirst_arg:#{inspect(first_arg)}\nsecond_arg:#{inspect(second_arg)}")
    nil
  end

  @doc """
  mray prints the 3 AST arguments to the mray macro
  """
  defmacro mray(first_arg, second_arg, third_arg) do
    IO.puts(
      "mray/2 called.\nfirst_arg:#{inspect(first_arg)}\nsecond_arg:#{inspect(second_arg)}\nthirst_arg#{
        inspect(third_arg)
      }"
    )

    nil
  end

  @doc """
  Is just there to show a method for tests
  """
  @spec hello() :: atom()
  def hello do
    :world
  end
end
