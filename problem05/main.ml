(* Problem 05 *)
let rev (xs: 'a list) : 'a list = 
  let rec rev' (xs: 'a list) (acc: 'a list): 'a list = 
    match xs with
    | [] -> acc
    | head :: tail -> rev' tail (head :: acc) 
  in rev' xs []


  let () =
  print_endline "Hello, World!"