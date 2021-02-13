-module(solar).

-export([start/0]).

-import(gun, [open/3]).

start() ->
    application:ensure_all_started(gun),
    io:fwrite("Gun started.\n"),
    case gun:open({192,168,1,34}, 80, #{protocols => [http], retry => 0}) of
        {ok, ConnPid} ->
            {ok, Protocol} = gun:await_up(ConnPid),
	    io:fwrite("Gun open. Connpid: %w Protocol: %w\n", ConnPid, Protocol);
        {error, _} ->
	    io:fwrite("Gun open failed\n")
    end.


    

