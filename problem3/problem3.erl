-module(problem3).
-export([solve/0]).

solve() ->
    solve(600851475143, 2, 2).

solve(Number, Factor, Max) when Factor > Number ->
    Max;

solve(Number, Factor, _) when (Number rem Factor) == 0 ->
    solve(trunc(Number / Factor), Factor, Factor);

solve(Number, Factor, Max) ->
    solve(Number, Factor + 1, Max).
