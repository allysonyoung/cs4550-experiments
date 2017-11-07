defmodule Nextbus do
  @moduledoc """
  Documentation for Nextbus.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Nextbus.hello
      :world

  """
  def hello do
    :world
  end

  def get_routes(stop_id) do
    resp = HTTPoison.get!("http://realtime.mbta.com/developer/api/v2/routesbystop?api_key=qOvLKXlU8Equ8FBGnIMWaA&stop=#{stop_id}&format=json")
    data = Poison.decode!(resp.body)
    mode = List.first(data["mode"])
    if mode["mode_name"] == "Bus" do
      Enum.map mode["route"], fn route ->
        route["route_id"]
      end
    end
  end

  def get_nearby_stops(lat, lon) do
    resp = HTTPoison.get!("http://realtime.mbta.com/developer/api/v2/stopsbylocation?api_key=qOvLKXlU8Equ8FBGnIMWaA&lat=#{lat}&lon=#{lon}&format=json")
    data = Poison.decode!(resp.body)
    stop_data = data["stop"]
    stop_data
  end

  def get_nextbus(stop_id, direction) do
    resp = HTTPoison.get!("http://realtime.mbta.com/developer/api/v2/predictionsbyroutes?api_key=qOvLKXlU8Equ8FBGnIMWaA&routes=#{stop_id}&format=json")
    data = Poison.decode!(resp.body)
    route = List.first(data["mode"])["route"]
    path = List.first(route)["direction"]
    Enum.map path, fn trip ->
      if trip["direction_id"] == "#{direction}" do
        trip["trip"]
      end
    end
  end
end
