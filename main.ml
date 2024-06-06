(* Problem 01 *)
let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: tail -> last tail

(* Problem 02 *)
let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: tail -> last_two tail

(* Problem 03 *)
let rec at (k: int) (xs: 'a list): 'a option = 
  match xs with
  | [] -> None
  | head :: tail -> if k == 1 then Some head else at (k - 1) tail

let () =
  print_endline "Hello, World!"