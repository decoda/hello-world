%% Author: tangj
%% Created: 2015-04-24
%% Description: TODO: Add description to ets_test
-module(ets_test).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([test/1]).
-complie(export_all).

%%
%% API Functions
%%

test(Mode) ->
	ets:new(test, [named_table, public, Mode]),
	ets:insert(test, {{a, 1}, 1}),
	ets:insert(test, {{b, 2}, 1}),
	ets:insert(test, {{a, 1}, 1}),
	ets:insert(test, {{a, 3}, 1}),
	List = ets:tab2list(test),
	io:format("~-13w => ~p~n", [Mode, List]),
	Object = ets:lookup(test, {a, 1}),
	io:format("~p~n", [Object]),
	ets:delete(test).
	

%%
%% Local Functions
%%
