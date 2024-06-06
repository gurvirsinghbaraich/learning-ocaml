(* Problem 01 *)
let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: tail -> last tail


let () =
  print_endline "Hello, World!"