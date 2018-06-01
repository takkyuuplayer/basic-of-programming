(* 人に関する情報を格納するレコード *) 
type person_t = { 
  name : string;	(* 名前 *) 
  shincho : float;	(* 身長 *) 
  taiju : float;	(* 体重 *) 
  tsuki : int;		(* 誕生月 *) 
  hi : int;		(* 誕生日 *) 
  ketsueki : string;	(* 血液型 *) 
} 
 
let person1 = 
  {name = "浅井"; 
   shincho = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shincho = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
} 

(* To insert person by following alphabetical order *)
(* person_insert : list -> person_t -> list *)
let rec person_insert lst person = match lst with
  [] -> [person]
  | ( {name = n; shincho = s; taiju = t; tsuki = m; hi = d; ketsueki = k } as first) :: rest
    -> match person with {name = n0; shincho = s0; taiju = t0; tsuki = m0; hi = d0; ketsueki = k0 }
      -> if n < n0 then first :: (person_insert rest person) else person :: first :: rest

let t = person_insert [] person1 = [person1]
let t = person_insert [person2] person1 = [person2; person1]
let t = person_insert [person1] person2 = [person2; person1]

(* To sort person by name *)
(* person_sort : list -> list *)
let rec person_sort lst = match lst with
  [] -> []
  | first :: rest -> person_insert rest first

let t = person_sort [] = []
let t = person_sort [person1] = [person1]
let t = person_sort [person1; person2] = [person2; person1]
let t = person_sort [person2; person1] = [person2; person1]