namespace lambdaflecha
#check List
#check Nat
#check List Nat
#check [1,2,3,4]
#check ([]: List Nat) -- existe um [] para cada tip

def len (xs: List Nat) : Nat := 
  match xs with
  | [] => 0
  | _::xs' => 1 + len xs'
#eval len []
#eval len [123]
#eval len [1,2,3,4,5,6,7]

def map (f : Nat → Nat) (xs: List Nat) : List Nat :=
  match xs with
  | [] => []
  | x::xs' => (f x) :: (map f xs')
#eval map (fun x => x+1) [1,2,3,4]
#eval map (fun x => x * 2) [2,4,8,16,32]

def filter (p: Nat → Bool) (xs: List Nat) : List Nat :=
  match xs with
  | [] => []
  | x::xs' => if p x then x::filter p xs' else filter p xs'
def par (n: Nat) : Bool := 
  match n with
  | 0 => true
  | 1 => false
  | 2 => true
  | n' + 2 => par n'
#eval par 0
#eval par 1
#eval par 12345
#eval filter par [1,2,3,4,5,6]

def fold (acum: Nat) (f: Nat → Nat → Nat) (xs: List Nat) :=
  match xs with
  | [] => acum
  | x::xs' => fold (f acum x) f xs'
def soma (m n : Nat) :=
  match m with
  | 0 => n
  | Nat.succ m' => Nat.succ (soma m' n)
#eval fold 0 soma [1,2,3,4,5]
#eval fold 0 soma [123]
#eval fold 0 soma []
#eval fold 10 soma []

end lambdaflecha