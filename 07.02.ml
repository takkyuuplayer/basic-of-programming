(* To return name and its grade when name and score is given *)
(* seiseki : string * int -> string *)

let seiseki pair = match pair with
  (name, score) -> if score >= 90 then name ^ "'s grade is A"
  else if score >= 80 then name ^ "'s grade is B"
  else if score >= 60 then name ^ "'s grade is C"
  else if score >= 30 then name ^ "'s grade is D"
  else name ^ "'s grade is E"

let s1 = seiseki ("Alice", 90) = "Alice's grade is A"
let s1 = seiseki ("Bob", 80) = "Bob's grade is B"
let s1 = seiseki ("Charles", 60) = "Charles's grade is C"
let s1 = seiseki ("David", 30) = "David's grade is D"
let s1 = seiseki ("Eve", 20) = "Eve's grade is E"