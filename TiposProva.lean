

-- tipo "fantasia": o tipo das provas de uma proposicao P.
-- P sendo, por exemplo "todo cachorro vai pro ceu"
-- 'sorry' pede pro lean nao encher e so aceitar
def ProvasP : Type := sorry 

-- outro tipo fantasia: o tipo das provas de uma proposicao Q.
-- Q sendo, por exemplo, "meu cachorro Panqueca foi pro ceu"
def ProvasQ : Type := sorry

-- se ProvasP é 'habitado', isto é, existe um t:ProvasP, temos
-- _alguma_ demonstração de P.
-- a seguinte função toma um t:ProvasP e leva num u:ProvasQ.
-- computacionalmente é uma função que recebe uma prova de P e
-- retorna uma prova de Q.
def PparaQ : ProvasP → ProvasQ := sorry

-- seja p:ProvasP uma prova de P.
def p: ProvasP := sorry
#check PparaQ
#check PparaQ p -- isto é, `PparaQ p` é uma prova de Q.