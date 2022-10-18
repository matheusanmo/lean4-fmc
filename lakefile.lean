import Lake
open Lake DSL

package «lean-teste» {
  -- add package configuration options here
}

lean_lib LeanTeste {
  -- add library configuration options here
}

@[defaultTarget]
lean_exe «lean-teste» {
  root := `Main
}
