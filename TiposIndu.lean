
-- prelude 2143
#check List
#check List Nat
#check List (Nat × Nat) × Nat
#check [1,2,3]
#check List.nil -- nao sabemos tipos ainda...?
#eval (List.nil : List Nat)
#check ([] : List Nat)
-- TODO como pedir nil e cons para List Nat por exemplo
-- recursive pat match
-- inductive NossaLista "Rista, ril, rons" where
-- definindo map, fold, filter