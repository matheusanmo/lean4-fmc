#check Nat
--https://github.com/leanprover/lean4/blob/master/src/Init/Prelude.lean
--linha 1015

-- nada de novo aqui
def quadrado (a: Nat) : Nat := a * a
#eval quadrado 4

def incremento (a: Nat) : Nat := a + 1

-- algo de novo aqui. nem todas pls suportam isso, especialmente de uma maneira 
-- confortavel como no Lean.
def aplica2x (f: Nat → Nat) (x: Nat) := f (f x)
#check aplica2x
#check aplica2x quadrado
#check aplica2x incremento
#check aplica2x incremento 3
#eval aplica2x incremento 5
#eval aplica2x quadrado 2

--funcao recursiva pattern matching em qual construtor de nat foi usado:
-- nesta versao usamos 'm' como 'acumulador'
def fatorial2 (n m: Nat) : Nat := -- podemos omitir ultimo Nat e deixar lean inferir
  match n with
  | Nat.zero => m -- podemos usar zero ou Nat.zero. depende do contexto (se foi exportado)
  | Nat.succ n' => fatorial2 n' (m*n) -- quando casamos com este construtor unario, 'ganhamos' seu argumento.n
#check fatorial2
#eval fatorial2 5 1
#eval fatorial2 5 0 -- cuidado com o valor passado como acumulador!

-- vamos nos livrar de exigir receber um acumulador inicial. 
-- aqui usamos um padrao aonde uma funcao chama outra setando parametros inciais.
-- outro ponto: nao dizemos o tipo de nada e deixamos Lean inferir.
def fatorial n := fatorial2 n 1
#check fatorial
#eval fatorial 5
#eval fatorial2 5 1