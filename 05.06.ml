#use "05.05.ml"

(* To return whether a square equation has imaginary number solutions *)
(* kyosukai : float -> float -> float -> boolean *)

let kyosukai a b c =
  if kai_no_kazu a b c = 0 then true
  else false

let kyosukai1 = kyosukai 1. (-4.) 4. = false
let kyosukai2 = kyosukai 1. (-7.) 12. = false
let kyosukai3 = kyosukai 1. 2. 3. = true