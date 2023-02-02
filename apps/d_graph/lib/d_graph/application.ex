defmodule DGraph.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Dlex, Application.get_env(:dlex, Dlex, [])},
    ]

    opts = [strategy: :one_for_one, name: DGraph.Service]
    {:ok, pid} = Supervisor.start_link(children, opts)
    [{_, child_pid, _, _}] = Supervisor.which_children(pid)
    Application.put_env(:dlex, PID, child_pid)
    {:ok, pid}
  end

end
