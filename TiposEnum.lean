--- Contrutores nulários! Constróem-se sozinhos como Monitor
--- A quantidade de construtores é a mesma quantidade de habitantes do tipo

inductive Monitor where
  | Matheus : Monitor
  | Debora : Monitor
  | Pancadao : Monitor

#check Monitor.Matheus


-- Vamos criar o primo do Bool
inductive Buul where
  | Falsi : Buul
  | Trui : Buul
  deriving Repr

namespace Buul

-- O que linguagens como C fazem com if (qntLives)
def buuly (n: Nat) : Buul :=
  match n with
  | 0 => Falsi -- "falsy"
  | _ => Trui -- "truthy"

#eval buuly 0 -- Buul.Falsi
#eval buuly 1 -- Buul.Trui
#eval buuly 3 -- Buul.?

def neg (b: Buul) : Buul :=
  match b with
  | Falsi => Trui
  | Trui => Falsi

#eval neg (neg Falsi) -- Falsi
#eval neg (neg Trui) -- ?

-- Olha que doido! Vamos demonstramos algo sobre nosso tipo!
theorem negOfNeg (b: Buul) : neg (neg b) = b :=
  match b with
  | Falsi => rfl
  | Trui => rfl

#check negOfNeg Falsi -- neg (neg Falsi) = Falsi

end Buul