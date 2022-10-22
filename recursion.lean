def fib: Nat → Nat
  | (n + 1) + 1 => fib (n + 1) + fib n
  | 1 => 1
  | 0 => 0

-- #eval fib 125 -- Muito lento exponencial
#reduce fib 125 -- Muito rápido kernel

-- Evitar loops pois são impuros: muda o estado (side-effect)
-- Contadores nos laços de repetições são impuros
-- Utilizar de definições recursivas
def seqFib: Nat → List Nat
  | (n + 1) + 1 => seqFib n ++ [fib (n + 1), fib ((n + 1) + 1)]
  | 1 => [fib 1]
  | 0 => []

#reduce seqFib 0
#reduce seqFib 2
#reduce seqFib 42