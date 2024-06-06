
(* Problem 04 *)
let rec length (xs: 'a list) : int = 
  match xs with
  | [] -> 0
  | _ :: tail -> 1 + length tail 

let length_tail (xs: 'a list) : int =
  let rec length_tail' (acc: int) (xs: 'a list)  =
    match xs with
    | [] -> acc
    | _ :: tail -> length_tail' (acc + 1) tail
  in length_tail' 0 xs 


let () =
  print_endline "Hello, World!"