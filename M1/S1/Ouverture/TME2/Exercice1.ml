(* let zip l1 l2 =
  List.map2 (fun x y -> (x, y) ) l1 l2 ;; *)

let rec zip l1 l2 = match l1, l2 with
| _, [] -> []
| [], _ -> []
| x::xx, y::yy -> (x,y) :: ( zip xx yy );;
zip [1;2;3;4] [1;4;9;16; 24];;
