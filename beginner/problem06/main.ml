(* Problem 06 *)
let rec rev = function
  | [] -> []
  | [x] -> [x]
  | head :: tail -> rev tail @ [head]

let is_palindrome (xs: 'a list) : bool =
  xs = rev xs

let () =
  print_endline "Hello, World!"