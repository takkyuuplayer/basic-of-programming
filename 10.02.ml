#use "10.01.ml"

(* To run insert sort *)
(* ins_sort : list -> list *)

let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first

let t = ins_sort [] = []
let t = ins_sort [1] = [1]
let t = ins_sort [1; 2] = [1; 2]
let t = ins_sort [2; 1] = [1; 2]
let t = ins_sort [1; 3; 2] = [1; 2; 3]