(* To return sum and average of 5 numbers *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)

let goukei_to_heikin language math english science society = 
  (
    language + math + english + science + society,
    float_of_int (language + math + english + science + society) /. 5. (* Not sure hot to convert type *)
  )

let gth1 = goukei_to_heikin 1 0 0 0 0 = (1, 0.2)
let gth2 = goukei_to_heikin 1 1 1 1 1 = (5, 1.)
let gth3 = goukei_to_heikin 5 4 3 2 1 = (15, 3.)