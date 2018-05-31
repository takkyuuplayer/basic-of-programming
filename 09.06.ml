(* To concat list of strings *)
(* concat : list -> string *)

let rec concat lst = match lst with
  [] -> ""
  | first :: rest -> first ^ concat rest

let t1 = concat [] = ""
let t2 = concat ["春"] = "春"
let t3 = concat ["春"; "夏"] = "春夏"