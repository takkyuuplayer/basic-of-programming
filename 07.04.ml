(* To return the middle point when 2 points are given *)
(* chuten : float * float -> float * float -> float * float *)

let chuten p1 p2 = match p1, p2 with
  (x1, y1), (x2, y2) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)

let c1 = chuten (2., 2.) (0., 0.) = (1., 1.)
let c2 = chuten (0., 0.) (2., 2.) = (1., 1.)