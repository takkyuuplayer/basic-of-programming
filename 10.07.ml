(* To return summary of blood-type *)
(* ketsueki_shukei : list -> int * int * int * int *)

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

let person4 = { 
  name = "佐藤"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "AB" 
} 


let rec ketsueki_shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | ({name = n; shincho = s; taiju = t; tsuki = m; hi = d; ketsueki = k}) :: rest ->
    let (a, b, ab, o) = ketsueki_shukei rest in
      if k = "A" then (a + 1, b, ab, o)
      else if k = "B" then (a, b + 1, ab, o)
      else if k = "AB" then (a, b, ab + 1, o)
      else (a, b, ab, o + 1)

let t = ketsueki_shukei [ ] = (0, 0, 0, 0)
let t = ketsueki_shukei [person1; person2; person3; person4] = (1, 1, 1, 1)
let t = ketsueki_shukei [person1; person2; person3; person3] = (1, 1, 0, 2)