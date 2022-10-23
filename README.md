# h1
Tentando entender Lean como PL e TP visitando os sistemas lambda por tras.

Todo conteudo pode mudar ou estar incorreto. Não confie em nada.

Os sistemas nao serao abordados com rigor matematico. A ideia é desenvolver uma intuição de como cada um funciona, como se calcula nestes, e as "capacidades" que cada um contribui para o Lean. 

Dois vieses: Lean como linguagem de programação funcional; lean como theorem prover.

# referencias
## Type Theory and Formal Proof: An Introduction (nederpelt + geuvers)
## FPIL
## TPIL
## Lean4 Reference Manual
## Lean4 source code
## wikipedia lambda systems e lambda cube
### boa parte do lean é implementado em lean (?)
### Diretorios 

# preludio
## provas formais e informais; ded nat
## logica construtivista vs classica
## Lean
### projetos, liveview, toolchain
### check, eval, print

# sistemas lambda 
- o que é um lambda sistema, relacao entre eles, quais veremos
- seguindo TTFP  
- {terms,types} depending on {terms,types}
- curry howard
## lambda untyped
### variaveis, termos, abst, apl
### rewriting (fantasiar regras alpha beta gamma)
### numerais church x numerais conjuntistas (?)
### exemplos e casos de uso

## lambda simplemeste tipado
### base para os outros sistemas(palavra certa?) lambda
### type vars, arrow types, abst->, apl->
### datatypes stdlib de tipo Type 0
### statements, declarations, context, judment (ttfp 2.4)
### terms depending on terms
### o tipo Prop; implicacao ded nat
### exemplos e casos de uso
### variaveis, termos, abst, apl
### rewriting (fantasiar regras alpha beta gamma)
### numerais church x numerais conjuntistas (?)
### exemplos e casos de uso

## lambda 2
### terms depending on types ~ parametric polymorphism
### o tipo de todos tipos '*'. pi binder e pi tipos.
### abst2, apl2
### exemplos cassos de uso

## lambda omega fraco
### types depending on types
### TODO

## lambda P
### types depending on terms
### TODO

## lambda C
### "combina" os lambdas anteeriores
### TODO

# Provando teoremas
## logica prop
## nats
## cats (talvez)
## mathlib

# Progoramacao funcional
## toolchain lean leac elan lake etc
## IO
## functional patterns x imperativo
### recursao no lugar de loops
### funcoes puras e totais
### separacao estado/side effect - computacao
### "lista de definicoes" no lugar de "lista de comandos"

# TODO
TODO: introduzir elementos sintaticos:
 - comentarioss
 - tipagem explicita implicita
 - def
 - fun, placeholder notation
 - pattern match
 - namespaces/sections
 - structure where
 - inductive where
 - if/else
 - if let
 - automatic implicit args {} e @funcao fpil 1.7 
 - typeclasses
TODO: identificar em que ponto temos tipos flecha, enum, prod, inductive

TODO:conectar cada ponto com sintaxe progfun lean e deducao nat qd aplicavel

TODO: citar referencias nos pontos