library (DiagrammeR)
grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
 node [shape = plaintext,
        fontname = Helvetica]
 Intrinsic_activity; Acquired_resistance; Host_immunity

  node [shape = box,]
        PK_PD; Microbiological_effect; Clinical_outcome

  # several 'edge' statements
  PK->PK_PD 
  PD->PK_PD 
  PK_PD->Microbiological_effect 
  Microbiological_effect->Clinical_outcome 
  Infection_site -> PK
  Patient_factors -> PK
  Drug_chacteristics -> PK
  Intrinsic_activity -> PD
  Acquired_resistance -> PD
  Host_immunity -> PD
}
")
