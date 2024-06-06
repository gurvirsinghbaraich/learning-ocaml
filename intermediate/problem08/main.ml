(* Problem 08 *)
let rec contains (item: 'a) (xs: 'a list): bool =
  match xs with
  | [] -> false
  | [x] -> x = item
  | head :: tail -> if head = item then true else contains item tail

let compress (xs: 'a list): 'a list = 
  let rec compress' (acc: 'a list) (xs: 'a list) = 
    match xs with
    | [] -> acc
    | head :: tail -> if not (contains head acc) then compress' (acc @ [head]) tail else compress' acc tail
  in compress' [] xs 

let () =
  print_endline "Hello, World!"