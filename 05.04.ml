(* To return hanbetsushiki for ax^2 + bx + c = 0 *)
(* hanbetsushiki : float -> float -> float -> float *)

let hanbetsushiki a b c = b ** 2. -. 4. *. a *. c

let d1 = hanbetsushiki 1. 0. 0. = 0.
let d2 = hanbetsushiki 1. 0. (-4.) = 16.
let d3 = hanbetsushiki 1. (-2.) (1.) = 0.