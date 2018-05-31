#use "08.03.ml"

(* To return how many people have blood type A *)
(* count_ketsueki_A : list -> int *)

let p1 = {
  name =  "Alice";
  height_cm = 171.5;
  weight_kg = 65.5;
  birthday_month = 10;
  birthday_day = 4;
  blood_type = "A";
}
let p2 = {
  name =  "Bob";
  height_cm = 171.5;
  weight_kg = 65.5;
  birthday_month = 10;
  birthday_day = 4;
  blood_type = "B";
}

let p3 = {
  name =  "Angela";
  height_cm = 171.5;
  weight_kg = 65.5;
  birthday_month = 10;
  birthday_day = 4;
  blood_type = "A";
}

let rec count_ketsueki_A lst = match lst with
[] -> 0
| {
  name = n;
  height_cm = h;
  weight_kg = w;
  birthday_month = bm;
  birthday_day = bd;
  blood_type = b;
} :: rest -> (if b = "A" then 1 else 0 ) + count_ketsueki_A rest

let t1 = count_ketsueki_A [] = 0
let t2 = count_ketsueki_A [p1] = 1
let t3 = count_ketsueki_A [p2] = 0
let t4 = count_ketsueki_A [p1; p2; p3] = 2