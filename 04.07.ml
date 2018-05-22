#use "04.06.ml"

(* To return how many legs do tortles and swans have in total *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

let tsurukame1 = tsurukame_no_ashi 1 0 = 2
let tsurukame1 = tsurukame_no_ashi 0 1 = 4
let tsurukame1 = tsurukame_no_ashi 1 1 = 6