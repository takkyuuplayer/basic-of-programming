(* To sort gakusei_t by score *)
(* gakusei_sort : list -> list *)

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

let rec gakusei_insert lst gakusei = match lst with
  [] -> [gakusei]
  | ({namae = n; tensuu = t; seiseki = s} as first) :: rest
    -> match gakusei with { namae = n0; tensuu = t0; seiseki = s0}
      -> if t < t0 then first :: (gakusei_insert rest gakusei) else gakusei :: first :: rest

let t = gakusei_insert [] gakusei1 = [gakusei1]
let t = gakusei_insert [gakusei2] gakusei1 = [gakusei2; gakusei1]
let t = gakusei_insert [gakusei1] gakusei2 = [gakusei2; gakusei1]

let rec gakusei_sort lst = match lst with
  [] -> []
  | first :: rest -> gakusei_insert rest first

let t = gakusei_sort [] = []
let t = gakusei_sort [gakusei1] = [gakusei1]
let t = gakusei_sort [gakusei1; gakusei2] = [gakusei2; gakusei1]
let t = gakusei_sort [gakusei2; gakusei1] = [gakusei2; gakusei1]