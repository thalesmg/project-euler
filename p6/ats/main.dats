#include "share/atspre_staload.hats"
#include "share/atspre_staload_libats_ML.hats"

fn sum_of_squares(n: int): int =
  let
    fun go(n: int, acc: int, lim: int): int =
      if n > lim
      then acc
      else go(n + 1, acc + n * n, lim)
  in
    go(1, 0, n)
  end

fn square_of_sum(n: int): int =
  let
    fun go(n: int, acc: int, lim: int): int =
      if n > lim
      then acc * acc
      else go(n + 1, acc + n, lim)
  in
    go(1, 0, n)
  end

implement main0 () = () where {
  val n = g0string2int(fileref_get_line_string(stdin_ref))
  val sqrsum = square_of_sum(n)
  val sumsqr = sum_of_squares(n)
  val _ = println!(sqrsum - sumsqr)
}