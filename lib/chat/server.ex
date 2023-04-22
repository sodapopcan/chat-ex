defmodule Chat.Server do
  use GenServer

  @impl true
  def init(_) do
    {:ok, nil}
  end

  @impl true
  def handle_call({:connect, friend}, _from, _state) do
    Node.connect(friend)

    {:reply, :ok, friend}
  end

  @impl true
  def handle_cast({:msg, msg}, friend) do
    send({Chat.Server, friend}, msg)

    {:noreply, friend}
  end

  @impl true
  def handle_info(msg, friend) do
    IO.puts(friend <> ": " <> msg); nil

    {:noreply, friend}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end
end
