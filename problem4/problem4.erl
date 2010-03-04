-module(problem4).
-export([solve/0, is_palindrome/1]).

solve() ->
    solve(999, 999, 0).

solve(900, _, Max) ->
    Max;

solve(N1, N2, Max) ->
    Product = N1 * N2,

    MaxP = case is_palindrome(Product) of
        true when (Product > Max) ->
            Product;
        _ ->
            Max
    end,

    if
        N2 == 900 ->
            solve(N1 - 1, 999, MaxP);
        true ->
            solve(N1, N2 - 1, MaxP)
    end.        

is_palindrome(N) when (N > 100000) and (N == (
             N                 rem 10 * 100000
           + trunc(N / 10)     rem 10 * 10000
           + trunc(N / 100)    rem 10 * 1000
           + trunc(N / 1000)   rem 10 * 100
           + trunc(N / 10000)  rem 10 * 10
           + trunc(N / 100000) rem 10 )) ->
    true;

is_palindrome(N) when (N > 10000) and (N == (
             N                rem 10 * 10000
           + trunc(N / 10)    rem 10 * 1000
           + trunc(N / 100)   rem 10 * 100
           + trunc(N / 1000)  rem 10 * 10
           + trunc(N / 10000) rem 10 )) ->
    true;

is_palindrome(_) ->
    false.
