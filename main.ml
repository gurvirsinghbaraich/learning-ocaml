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

(* Problem 04 *)
let rec length (xs: 'a list): int = 
  match xs with
  | [] -> 0
  | _ :: tail -> 1 + length tail 

let length_tail (xs: 'a list): int =
  let rec length_tail' (acc: int) (xs: 'a list)  =
    match xs with
    | [] -> acc
    | _ :: tail -> length_tail' (acc + 1) tail
  in length_tail' 0 xs 

let () =
  print_endline "Hello, World!"