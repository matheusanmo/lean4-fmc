def Nxt : Type := Nat

#check Nat.zero

-- não herda características do Nat
-- #check Nxt.zero

def zxro : Nxt := Nat.zero
-- 0 pode ser de outro tipo além de Nat, então é necessário explicitar
-- valores numéricos precisam ser explicitados os tipos
-- def zxro' : Nxt := 0
def zxro' : Nxt := (0 : Nat) -- Nat overload no 0

#eval zxro -- 0, evaluation de Nat sempre é sugar para 0, 1, 2...?
#eval Nat.zero -- aparentemente sim
#eval zxro' -- 0

-- Já com abbrev: vantagem de overload automático dos tipos numéricos
-- São definições marcadas como "reducible" pelo Lean
abbrev Net : Type := Nat
-- Continua não herdando características do Nat
-- #check Net.zero
def zero : Net := 0 -- overload automático :O