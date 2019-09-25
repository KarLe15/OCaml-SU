(* TODO :: check the test_peano function  *)

type intPeano = IntZero
              | IntPlus of intPeano  ;;
let rec int_of_peano a = match a with
| IntZero  -> 0
| IntPlus(nb) -> 1 + int_of_peano nb;;


let rec peano_of_int i = match i with
| 0 -> IntZero
| n -> IntPlus (peano_of_int (n-1)) ;;

let rec even i = match i with
| IntZero -> true
| IntPlus(nb) -> not (even nb);;


let test_peano fInt fPeano i =
  (fInt i) = fPeano (peano_of_int i) ;;

let rec twice p = match p with
| IntZero -> IntZero
| IntPlus(nb) -> IntPlus(IntPlus( twice nb ));;

let half peano =
  let rec aux p b = match p,b with
  |IntZero, _ -> IntZero
  |IntPlus(nb), true -> IntPlus( aux nb false)
  |IntPlus(nb), false -> aux nb true
  in 
  aux peano false;;

int_of_peano( half (peano_of_int 8));;



(* int_of_peano (twice (peano_of_int 5));; *)

(* (test_peano (fun x -> (( x mod 2) = 0) ) even 5);; *)



(* if even (peano_of_int 4)
then print_string "pair"
else print_string "impair";; *)

(* peano_of_int 4;; *)
(* print_int (int_of_peano (IntPlus (IntPlus IntZero)) ) ;;  *)
(* print_int (int_of_peano (peano_of_int 31415) ) ;; *)
