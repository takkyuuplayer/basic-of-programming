(* To return the point which is symmetry against x-axis when a 2D point (x, y) is given *)
(* taisho_x : float * float -> float * float *)
let taisho_x point = match point with
  (x, y) -> ((-1.) *. x, y)

let t1 = taisho_x (1., 0.) = ((-1.), 0.) 
let t2 = taisho_x (0., 1.) = (0., 1.) 
let t3 = taisho_x ((-1.), (-1.)) = (1., (-1.))