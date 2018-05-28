#use "08.03.ml"

(* To return blood type when person_t is given *)
(* ketsueki_hyoji : person_t -> string *)

let ketsueki_hyoji person = match person with
  {
  name = n;
  height_cm = h;
  weight_kg = w;
  birthday_month =  m;
  birthday_day = d;
  blood_type = b;
  } -> "The blood type of " ^ n ^ " is " ^ b


let alice = {
  name =  "Alice";
  height_cm = 171.5;
  weight_kg = 65.5;
  birthday_month = 10;
  birthday_day = 4;
  blood_type = "A";
}
let bob = {
  name =  "Bob";
  height_cm = 171.5;
  weight_kg = 65.5;
  birthday_month = 10;
  birthday_day = 4;
  blood_type = "B";
}

let test1 = ketsueki_hyoji alice = "The blood type of Alice is A"
let test2 = ketsueki_hyoji bob   = "The blood type of Bob is B"