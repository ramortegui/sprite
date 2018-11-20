defmodule SpriteServer do
  use GenServer

  def init(%sprite{} = initial_state), do: {:ok, initial_state}

  def handle_cast({:move_left, quantity}, sprite) do
    {:noreply, sprite.move_left(sprite, quantity)}
  end

  def handle_cast({:move_right, quantity}, sprite) do
    {:noreply, sprite.move_right(sprite, quantity)}
  end

  def handle_cast({:move_up, quantity}, sprite) do
    {:noreply, sprite.move_up(sprite, quantity)}
  end

  def handle_cast({:move_down, quantity}, sprite) do
    {:noreply, sprite.move_down(sprite, quantity)}
  end

  def handle_cast({:move_upper_left, quantity}, sprite) do
    {:noreply, sprite.move_upper_left(sprite, quantity)}
  end

  def handle_cast({:move_upper_right, quantity}, sprite) do
    {:noreply, sprite.move_upper_right(sprite, quantity)}
  end

  def handle_cast({:move_lower_left, quantity}, sprite) do
    {:noreply, sprite.move_lower_left(sprite, quantity)}
  end

  def handle_cast({:move_lower_right, quantity}, sprite) do
    {:noreply, sprite.move_lower_right(sprite, quantity)}
  end

  def handle_call(:status, _from, sprite) do
    {:reply, sprite, sprite}
  end
end
