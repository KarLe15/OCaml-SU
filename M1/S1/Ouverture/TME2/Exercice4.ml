(*  This is an implementation of insertion Sort *)

let rec ins liste elem = match liste with
|[] -> elem :: []
|h::hh -> if h < elem then h :: (ins hh elem) else elem :: (h::hh)  
;;


let sort liste = 
  
  
;;

ins [1;2;4;5] 3 ;;