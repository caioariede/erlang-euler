-module(problem6).
-export([solve/0]).

solve() ->
    solve(100).

solve(N) ->
    SquareOfSum = math:pow(N * (N + 1) / 2, 2),
    SumOfSquares = N * (N + 1) * ((2 * N) + 1) / 6,
    trunc(SquareOfSum - SumOfSquares).
