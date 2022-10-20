-- function types (→)


-- sum type
-- https://github.com/leanprover/lean4/blob/master/src/Init/Core.lean 102
-- analogia com unions em C
-- analogia com enums em C
-- analogia com unioes DISJUNTAS: dado um termo sempre sabemos a origem dele
-- definindo com inductive mas sem recursao
-- linkar com codigo prelude



-- prod type
-- analogia com struct C
-- analogia com produto cartesiano
-- linkar notacoes conveniencia {}
structure F₂ where
  x: Float
  y: Float
  deriving Repr
#check F₂
#check F₂.mk -- de graca com structure
#check F₂.x  -- idem
#check F₂.y  -- idem
--lean4/src/Init/Prelude.lean 466
#check Float × Float
#check (1.1 ,9.22) -- notacao conveniente de tuplinhas
#eval (1.1 ,3.1415).fst
#eval (1.23 ,9999).snd
-- TODO falar de 'associativadade' do produto?
--nome, saldo, ligacoes por dia do banco
def contaCorrente :=  ("matheus", -98.70, 12)
#check contaCorrente
#eval contaCorrente.fst
#eval contaCorrente.snd
#eval contaCorrente.snd.fst
#eval contaCorrente.snd.snd
-- isomorfismo A×(B×C) ≃ (A×B)×C 

-- inductive type: Sum + Recursivo
-- usar lista como exemplo. mostrar como evitar loops usando recursao
-- definição de lista e nats o prelude
inductive FMCNat where
  | FMCzero : FMCNat
  | FMCsucc : FMCNat → FMCNat

-- TODO: diferenciar type-dependent types e term-dependent types (ttfp cap 5)
-- definicao fantasia:
inductive Tipo where
  | algum: Tipo -- queremos algum tipo 'primitivo' para operar sobre
  | funcao  (t u: Tipo)  -- t,u:Tipo entao t → u :Tipo
  | soma    (t u: Tipo)    -- t,u:Tipo entao t ⊕ u:Tipo. 
  | produto (t u: Tipo) -- t,u:Tipo entao t × u:Tipo
  deriving Repr
  -- TODO tipos recursivos vem de onde? W types de martin lof?

-- apanhado do 'maquinario' λ lean