#check Int
#check Bool

--TODO anonymous funs
--TODO namespaces

def quasecem : Int := 99

#check quasecem
#eval quasecem

#eval (55 + 22 : Int)

def ehQuaseCem (n: Int) : Bool := 
  match n with
  | 99 => true
  | _  => false
 
def quadrado (n: Int) : Int := n * n
#eval quadrado 4

def positivo (n: Int) : Bool := 
  if n > 0 then true else false
#eval positivo 2
#eval positivo (-2)
#eval positivo 0

def negacao (b: Bool) : Bool :=
  match b with
  | true => false
  | false => true
#eval negacao true

def e (p q : Bool) : Bool :=
  match p,q with
  | true, true => true
  | _, _ => false
#eval e true false


def aplica2xI (f: Int → Int) (n: Int) : Int := f (f n)
#eval aplica2xI quadrado 2
#check aplica2xI
#check quadrado
#check aplica2xI quadrado
#check aplica2xI quadrado 2

def aplica2x (α: Type) (f: α → α) (a: α) : α := f (f a)
#check aplica2x
#check aplica2x Bool
#check aplica2x Bool negacao
#check aplica2x Bool negacao true