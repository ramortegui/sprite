defmodule SprintServer do
  use GenServer

  def init(%Sprint{} = initial_state), do: {:ok, initial_state}

  def handle_cast({:move_left, quantity}, sprint) do
    {:noreply, Sprint.move_left(sprint, quantity)}
  end

  def handle_cast({:move_right, quantity}, sprint) do
    {:noreply, Sprint.move_right(sprint, quantity)}
  end

  def handle_cast({:move_up, quantity}, sprint) do
    {:noreply, Sprint.move_up(sprint, quantity)}
  end

  def handle_cast({:move_down, quantity}, sprint) do
    {:noreply, Sprint.move_down(sprint, quantity)}
  end

  def handle_cast({:move_upper_left, quantity}, sprint) do
    {:noreply, Sprint.move_upper_left(sprint, quantity)}
  end

  def handle_cast({:move_upper_right, quantity}, sprint) do
    {:noreply, Sprint.move_upper_right(sprint, quantity)}
  end

  def handle_cast({:move_lower_left, quantity}, sprint) do
    {:noreply, Sprint.move_lower_left(sprint, quantity)}
  end

  def handle_cast({:move_lower_right, quantity}, sprint) do
    {:noreply, Sprint.move_lower_right(sprint, quantity)}
  end

  def handle_call(:status, _from, sprint) do
    {:reply, sprint, sprint}
  end
end
