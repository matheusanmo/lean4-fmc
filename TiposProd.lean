

structure F₂ where
  x: Float
  y: Float
  deriving Repr
#check F₂
#check F₂.mk -- de graca com structure
#check F₂.x  -- idem
#check F₂.y  -- idem
#eval F₂.mk 3.15 2.19
def origem : F₂ := {x:= 0.0, y:= 0.0}
#eval origem.x
#eval F₂.y origem
--TODO conveniencias de notacao eg {}
#check Float
#check Type
#check Type 1
#check Prod
#check Prod Nat
#check Prod Nat Nat
--lean4/src/Init/Prelude.lean 466
#check Nat × Nat
#check (1,9)
#eval (1,9).fst
#eval (1,9).snd
--nome, saldo, ligacoes por dia
def contaCorrente: String × Float × Nat := 
  ("matheus", -98.70, 12)
#check contaCorrente
#eval contaCorrente.fst
#eval contaCorrente.snd
#eval contaCorrente.snd.fst
#eval contaCorrente.snd.snd