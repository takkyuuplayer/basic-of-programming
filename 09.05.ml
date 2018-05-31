(* To return even integers when a list is given *)
(* even : list -> list *)

let rec even lst = match lst with
  [] -> []
  | first :: rest ->
    if first mod 2 = 0 then first :: even rest else even rest

let t1 = even [] = []
let t2 = even [1] = []
let t3 = even [2] = [2]
let t4 = even [1; 2; 3] = [2]
let t5 = even [1; 3; 5] = []
let t6 = even [2; 4; 6] = [2; 4; 6]