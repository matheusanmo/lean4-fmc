def quadrado (n: Nat) : Nat := n * n
#check quadrado 2
#eval quadrado 2

def soma (n m: Nat): Nat := n + m
#check soma 2 4
#eval soma 2 5

def aplica2x (f: Nat → Nat) (n: Nat) : Nat := f (f n)
#check aplica2x quadrado 3
#eval aplica2x quadrado 3

def aplicaPoli (α : Type) (f: α → α) (a: α) : α :=
  f (f a)
#check aplicaPoli Nat quadrado 2
#eval aplicaPoli Nat quadrado 2


#check Bool
#check Nat
#check List Nat
#check Int


#check "oi"
#check String
#check Type
#check Type 1
#check List Type











inductive Mat where
  | mero: Mat
  | mucc (n: Mat) : Mat
  deriving Repr

def msoma (a b: Mat) : Mat :=
  match b with
  | Mat.mero => a
  | Mat.mucc (b') => Mat.mucc (msoma a b')

















