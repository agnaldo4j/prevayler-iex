defmodule Prevalent.SystemTest do
  use ExUnit.Case, async: true
  doctest Prevalent.SystemApi

    @tag :PrevalentSystemTest
    test "execute command on system" do
        {:executed, value} = Prevalent.SystemApi.execute {fn(actual_state, data) -> data end, "teste"}
        assert value == "teste"
    end

    @tag :PrevalentSystemTest
    test "take snapshot of the system" do
        assert {:executed} == Prevalent.SystemApi.take_snapshot
    end
end