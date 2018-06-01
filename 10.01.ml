(* TO insert a number into sorted list in the correct order *)
(* insert : list -> int -> list *)

let rec insert lst num = match lst with
  [] -> [num]
  | first :: rest -> if first < num then first :: (insert rest num) else num :: first :: rest

let t1 = insert [] 1 = [1]
let t2 = insert [2; 4] 5 = [2; 4; 5]
let t3 = insert [2; 4] 3 = [2; 3; 4]
let t4 = insert [2; 4] 1 = [1; 2; 4]
let t5 = insert [2; 4] 2 = [2; 2; 4]
