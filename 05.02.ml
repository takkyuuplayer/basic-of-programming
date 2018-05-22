(* To return AM/PM when time is given *)
(* jikan : int -> string *)

let jikan hour = if hour < 12 then "AM" else "PM"

let test1 = jikan 0 = "AM"
let test2 = jikan 11 = "AM"
let test3 = jikan 12 = "PM"
let test4 = jikan 24 = "PM"