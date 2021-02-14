%%%-------------------------------------------------------------------
%% @doc solarweb public API
%% @end
%%%-------------------------------------------------------------------

-module(solarweb_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    solarweb_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
