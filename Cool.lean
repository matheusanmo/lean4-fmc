-- nao criamos nosso tipo pois std Bool ja vem com implementacoes de coisas que esperamos, e.g.
-- comparacao com '='' e uso em if/then/else. 
-- implementar nosso proprio Bool daria trabalho para dizer ao lean como interpretar nosso tipo
-- quando usamos '=' ou usamos como usariamos na computação, e.g. em if/then/else
-- contudo, se criamos nosso proprio Bool usando a definicao 'inductive' poderiamos sim 
-- fazer pattern match.
-- tipo indutivos sao como tipos Sum + recursivos:
-- listamos todos construtores de termos daquele tipo
-- e dizemos "todo termo desse tipo veio de um desses ctors e nada mais é termo desse tipo"
#check Bool
-- https://github.com/leanprover/lean4/blob/master/src/Init/Prelude.lean
-- linha 545
#check false
#check true
#check True -- CUIDADO! bool ≠ prop

-- veja como Lean "transforma" a proposicao "dois valores sao o mesmo" numa Prop.
-- Este é o lado Proof do lean.
#check true = true 
-- aqui lean nos dá um valor do tipo Bool, e não prop.
#eval true = true
-- Esta é uma das caracteristicas do Lean: a ideia de demonstrar e a ideia de computar interminglam.
-- O sistema de tipos é o lado "demonstração" e as definicoes sao o lado "computação"
-- De certa forma, #check está para o lado tipo/prova como #eval está para termo/computacao.

-- paradigma funcional: pureza, imutabilidade. sem loops ou blocos execucao

-- omitindo algum dos casos Lean vai reclamar que nossa funcao nao é "total".
def negacao (b: Bool) : Bool := 
  match b with
  | true => false
  | false => true
#check negacao
#eval negacao true
#eval negacao false

-- O nome especial '_' casa com qualquer termo e é analogo ao "caso contrario,..."
def bE (b c : Bool) : Bool := 
  match b,c with
  | true, true => true
  | _, _       => false
#check bE
-- funcoes sao curryficadas por padrao. aplicacao parcial é de graça.
#check bE true 
#check bE true false
-- tirando o ultimo 'true' lean reclama que nao sabe "representar" algo do tipo Bool → Bool
#eval bE false true 

-- lean tem varias conveniencias. vamos usar algumas abaixo para definir bOu de formas equivalentes.
-- essa flexibilidade vem em parte das "restricoes" do paradigma funcional.
def bOu (b c: Bool) : Bool := if b then true else c
-- usando funcoes anonimas:
-- atencao para a notacao: `fun x y z => retorno`
-- Aqui exemplificamos tambem a capacidade de inferencia de tipos do Lean:
-- se nao explicitamos o tipo de um termo lean tenta inferir a partir do contexto.
def bOu2 : Bool → Bool → Bool := fun b c => if b then true else c
#eval bOu true false
#eval bOu2 true false
-- eis a funcao constante que recebe qqr bool e retorna sempre falso
#check (fun (_: Bool) => true)

-- no paradigma funcional tentamos criar funcoes pequenas e simples que podem ser usadas
-- para construir outra funcoes.
def implica (b c: Bool) : Bool := bOu (b = false) (bE b c)
-- usando uma variacao de patt matching:
def implica2 : Bool → Bool → Bool -- lean aceita unicode e eh comum usar simbolos matematicos
  | false, _ => true
  | true, true => true
  | _, _       => false

def exOr (b c: Bool) : Bool := negacao (b = c)


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


-- CUIDADO: a parte seguir ainda estou estudando
-- logica construtivista nos permite "casar" uma função de tipo α → β com uma computação que 
-- recebe algo tipo α e retorna tipo β.
-- por exemplo:
-- def ordernar (xs : Lista) : ListaOrdenada := ...
-- a tipagem Lista → ListaOrdenada é analogo a dizer ∀t: Lista ∃s:ListaOrdenada
-- e a funcao em si computa uma lista ordenada a partir de uma lista
-- nesse exemplo faltaria dizer que s é permutação de t.