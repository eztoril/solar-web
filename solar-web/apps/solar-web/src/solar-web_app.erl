%%%-------------------------------------------------------------------
%% @doc solar-web public API
%% @end
%%%-------------------------------------------------------------------

-module(solar-web_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    solar-web_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
