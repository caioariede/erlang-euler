-module(problem1).
-export([solve/0]).

solve() ->
    solve(1, 0).

solve(Number, Sum) when Number == 1000 ->
    Sum;

solve(Number, Sum) when ((Number rem 3) == 0) or ((Number rem 5) == 0) ->
    solve(Number + 1, Sum + Number);

solve(Number, Sum) ->
    solve(Number + 1, Sum).
