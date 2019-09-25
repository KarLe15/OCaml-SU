let identite x = x;;
let carre x = x*x;;


let rec fibo n = match n with
| 0 -> 1
| 1 -> 1
| nb -> (fibo (nb-1)) + (fibo (nb-2)) 
;;


fibo 12;;