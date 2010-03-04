-module(problem2).
-export([solve/0]).

solve() ->
    solve(1, 2, 0).

solve(_, N1, Sum) when N1 > 4000000 ->
    Sum;

solve(N2, N1, Sum) when (N1 rem 2) == 0 ->
    Fib = N2 + N1,
    solve(N1, Fib, Sum + N1);

solve(N2, N1, Sum) ->
    Fib = N2 + N1,
    solve(N1, Fib, Sum).
