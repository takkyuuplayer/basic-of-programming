#use "04.04.ml"

(* To return thin/standard/big/huge based on BMI *)
(* taikei : float -> float -> float -> boolean *)

let taikei height_m weight_kg =
  if bmi height_m weight_kg < 18.5 then "thin"
  else if bmi height_m weight_kg < 25. then "standard"
  else if bmi height_m weight_kg < 30. then "big"
  else "huge"

let taikei1 = taikei 1.715 50. = "thin"
let taikei2 = taikei 1.715 60. = "standard"
let taikei3 = taikei 1.715 80. = "big"
let taikei3 = taikei 1.715 100. = "huge"