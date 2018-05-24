#use "05.04.ml"

(* To return the number of solution for square equation *)
(* kai_no_kazu : float -> float -> float -> int *)

let kai_no_kazu a b c =
  if hanbetsushiki a b c < 0. then 0
  else if hanbetsushiki a b c = 0. then 1
  else 2

let kai1 = kai_no_kazu 1. (-4.) 4. = 1
let kai2 = kai_no_kazu 1. (-7.) 12. = 2
let kai3 = kai_no_kazu 1. 2. 3. = 0