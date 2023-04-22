defmodule Chat do
  @moduledoc """
  Documentation for `Chat`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Chat.hello()
      :world

  """
  def users do
    Node.list()
  end

  def connect(friend) do
    GenServer.call(Chat.Server, {:connect, friend})
  end

  def connect do
    with [friend] <- users() do
      GenServer.call(Chat.Server, {:connect, friend})
    end
  end

  def msg(msg) do
    GenServer.cast(Chat.Server, {:msg, msg})
  end
end
