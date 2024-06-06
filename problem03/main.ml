(* Problem 03 *)
let rec at (k: int) (xs: 'a list) : 'a option = 
  match xs with
  | [] -> None
  | head :: tail -> if k == 1 then Some head else at (k - 1) tail


let () =
  print_endline "Hello, World!"