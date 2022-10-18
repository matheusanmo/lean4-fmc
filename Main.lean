import LeanTeste

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

#eval Lean.versionString

theorem n_com (p q: Prop) : p ∧ q → q ∧ p :=
fun hpq: p ∧ q =>
