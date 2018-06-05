(* To return the person who scored the highest *)
(* gakusei_max : list -> gakusei_t *)

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* 学生のデータの例 *) 
let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"} 
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"} 
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"} 
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"} 
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"} 
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"} 
 
(* 学生のリストの例 *) 
let lst1 = [] 
let lst2 = [gakusei2] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei5; gakusei1] 
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 

let default = {namae="Anonymous"; tensuu=0; seiseki="Z"} 
let rec gakusei_max lst = match lst with
  [] -> default
  | ({namae = n; tensuu = t; seiseki = s} as first) :: rest
    -> match gakusei_max rest with ({ namae = nr; tensuu = tr; seiseki = sr} as rest_max)
      -> if t >= tr then first else rest_max

let t = gakusei_max lst1 = default
let t = gakusei_max lst2 = gakusei2
let t = gakusei_max lst3 = gakusei3
let t = gakusei_max lst5 = gakusei1