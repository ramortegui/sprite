defmodule Sprint do
  defstruct [posx: 0, posy: 0, lives: 5]

  @moduledoc """
  Documentation for Sprint.
  """

  defguardp is_alive?(lives) when is_integer(lives) and lives > 0

  def move_right(%Sprint{posx: posx, lives: lives} = sprint, quantity \\ 1) when is_alive?(lives) do
    %Sprint{ sprint | posx: posx + quantity }
  end

  def move_left(%Sprint{posx: posx} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posx: posx - quantity }
  end

  def move_up(%Sprint{posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posy: posy + quantity }
  end

  def move_down(%Sprint{posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posy: posy - quantity }
  end

  def move_upper_left(%Sprint{posx: posx, posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posx: posx - quantity, posy: posy + quantity }
  end

  def move_upper_right(%Sprint{posx: posx, posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posx: posx + quantity, posy: posy + quantity }
  end

  def move_lower_left(%Sprint{posx: posx, posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posx: posx - quantity, posy: posy - quantity }
  end

  def move_lower_right(%Sprint{posx: posx, posy: posy} = sprint, quantity \\ 1) do
    %Sprint{ sprint | posx: posx + quantity, posy: posy - quantity }
  end

  def decrease_lives(%Sprint{lives: lives} = sprint, quantity) do
    %{sprint | lives: lives - quantity}
  end

  def alive?(%Sprint{lives: lives}) when is_alive?(lives), do: true
  def alive?(%Sprint{}), do: false
end
