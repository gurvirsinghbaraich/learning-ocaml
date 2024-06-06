(* Problem 02 *)
let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: tail -> last_two tail


let () =
  print_endline "Hello, World!"