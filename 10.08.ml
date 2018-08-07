#use "10.07.ml"

(* To return maximum *) 
(* maximum : int list -> int *) 
let rec maximum lst = match lst with 
    [] -> 0
  | first :: rest -> 
      if first >= maximum rest 
      then first
      else maximum rest 
 
(* テスト *) 
let test1 = maximum [3] = 3 
let test2 = maximum [1; 2] = 2 
let test3 = maximum [3; 2] = 3 
let test4 = maximum [3; 2; 6; 4; 1; 8] = 8 

(* To return blood-type which is the majority in the list *)
(* saita_ketsueki : list -> string *)

let rec saita_ketsueki lst =
    let (a, b, ab, o) = ketsueki_shukei lst in
      let max_ketsueki = maximum [a; b; ab; o] in
        if a = max_ketsueki then "A"
        else if b = max_ketsueki then "B"
        else if ab = max_ketsueki then "AB"
        else "O"

  
let t = saita_ketsueki [ ] = "A"
let t = saita_ketsueki [person1; person2; person3; person4] = "A"
let t = saita_ketsueki [person1; person2; person3; person3] = "O"

