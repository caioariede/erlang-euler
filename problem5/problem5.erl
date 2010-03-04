-module(problem5).
-export([solve/0]).

solve() ->
    solve(20).

solve(N) when (N rem 1 == 0)
          and (N rem 2 == 0)
          and (N rem 3 == 0)
          and (N rem 4 == 0)
          and (N rem 5 == 0)
          and (N rem 6 == 0)
          and (N rem 7 == 0)
          and (N rem 8 == 0)
          and (N rem 9 == 0)
          and (N rem 10 == 0)
          and (N rem 11 == 0)
          and (N rem 12 == 0)
          and (N rem 13 == 0)
          and (N rem 14 == 0)
          and (N rem 15 == 0)
          and (N rem 16 == 0)
          and (N rem 17 == 0)
          and (N rem 18 == 0)
          and (N rem 19 == 0)
          and (N rem 20 == 0) ->
    N;

solve(N) ->
    solve(N + 1).
