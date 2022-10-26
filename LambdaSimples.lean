-- 25 10 22
-- termos dependendo de termos e amigos
-- julgamentos de tipo
-- abstracao e aplicacao
-- tipos flecha
-- map, filter, fold
-- construtores de lista
-- funcoes anonimas 'fun'
-- "predicados" α → Bool
namespace lambdaflecha
#check List
#check Nat
#check List Nat
#check [1,2,3,4]
#check ([]: List Nat) -- existe um [] para cada tip

def len (xs: List Nat) : Nat := sorry
#eval len []
#eval len [123]
#eval len [1,2,3,4,5,6,7]

def map (f : Nat → Nat) (xs: List Nat) : List Nat := sorry
#eval map (fun x => x+1) [1,2,3,4]
#eval map (fun x => x * 2) [2,4,8,16,32]

def filter (p: Nat → Bool) (xs: List Nat) : List Nat := sorry
def par (n: Nat) : Bool := sorry
#eval par 0
#eval par 1
#eval par 12345
#eval filter par [1,2,3,4,5,6]

def fold (acum: Nat) (f: Nat → Nat → Nat) (xs: List Nat) := sorry
def soma (m n : Nat) := sorry
#eval fold 0 soma [1,2,3,4,5]
#eval fold 0 soma [123]
#eval fold 0 soma []
#eval fold 10 soma []

end lambdaflecha