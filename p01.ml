let rec last (xs: 'a list) =
  match xs with
  | [] -> None
  | [x] -> Some x
  | _ :: list -> last list

let () =
  print_endline "Finding the last element in the list!"