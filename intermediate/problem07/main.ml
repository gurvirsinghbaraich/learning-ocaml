(* Problem 07 *)
type 'a node =
  | One of 'a 
  | Many of 'a node list

let flatten (xs: 'a node list): 'a list = 
  let rec aux (acc: 'a list) (xs: 'a node list): 'a list = 
    match xs with
    | [] -> acc 
    | One head :: tail -> aux (acc @ [head]) tail
    | Many head :: tail -> aux (aux acc head) tail
  in aux [] xs


let () =
  print_endline "Hello, World!"