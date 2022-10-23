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


--POSTSCRIPTS DA AULA QUARTA 19 10 22:

--POSTSCRIPT: Alguém perguntou se há outra maneira de achar termos de tipo Type 1. Vimos um jeito na aula que me passou despercebido. Spoiler alert:
#check List      -- Type_u1 -> Type_u1
#check Nat       -- Type
#check Type      -- Type 1
#check List Nat  -- Type
#check List Type -- ???

--POSTSCRIPT 2:
--Na monitoria comentei que Lean é feito em cima da teoria lambda-C, o 'calculo das construcoes'. É mais ou menos verdade: não é estritamente sobre lambda-C, mas sobre lambda-C com "extensões". Confesso que nao sei dizer com rigor qual a teoria subjacente para o Lean, e do que não se sabe não se fala. Por favor ignorem este comentário que fiz na aula; ainda não tenho bagagem para precisar "qual" teoria está sob Lean. Acredito fortemente que seja uma extensao do lambda-C. Se serve de algo veja a pagina https://en.wikipedia.org/wiki/Lambda_cube , que 'relaciona' vários lambda-calculos. O livro 'type theory and formal proof: and introduction' com certeza vai esclarecer muito mais.














