(* To return how many swans there are when the sum of swans and tortles, and their legs are given *)
(* tsurukame : int -> int -> int*)

let tsurukame heads legs = (4 * heads - legs) / 2

let test1 = tsurukame 1 2 = 1
let test1 = tsurukame 1 4 = 0
let test1 = tsurukame 2 6 = 1