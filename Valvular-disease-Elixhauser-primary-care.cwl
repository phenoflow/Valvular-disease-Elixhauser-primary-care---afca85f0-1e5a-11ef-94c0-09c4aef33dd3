cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  valvular-disease-elixhauser-primary-care-specified---primary:
    run: valvular-disease-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  valvular-disease-elixhauser-primary-care-sovalve---primary:
    run: valvular-disease-elixhauser-primary-care-sovalve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-specified---primary/output
  valvuloplasty-valvular-disease-elixhauser-primary-care---primary:
    run: valvuloplasty-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-sovalve---primary/output
  subaortic-valvular-disease-elixhauser-primary-care---primary:
    run: subaortic-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: valvuloplasty-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-insufficiency---primary:
    run: valvular-disease-elixhauser-primary-care-insufficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: subaortic-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-incompetence---primary:
    run: valvular-disease-elixhauser-primary-care-incompetence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-insufficiency---primary/output
  annuloplasty-valvular-disease-elixhauser-primary-care---primary:
    run: annuloplasty-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-incompetence---primary/output
  valvular-disease-elixhauser-primary-care-regurgitation---primary:
    run: valvular-disease-elixhauser-primary-care-regurgitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: annuloplasty-valvular-disease-elixhauser-primary-care---primary/output
  congenital-valvular-disease-elixhauser-primary-care---primary:
    run: congenital-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-regurgitation---primary/output
  valvular-disease-elixhauser-primary-care-repair---primary:
    run: valvular-disease-elixhauser-primary-care-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: congenital-valvular-disease-elixhauser-primary-care---primary/output
  nonrheumatic-valvular-disease-elixhauser-primary-care---primary:
    run: nonrheumatic-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-repair---primary/output
  valvular-disease-elixhauser-primary-care-valvectomy---primary:
    run: valvular-disease-elixhauser-primary-care-valvectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: nonrheumatic-valvular-disease-elixhauser-primary-care---primary/output
  systolic-valvular-disease-elixhauser-primary-care---primary:
    run: systolic-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-valvectomy---primary/output
  diastolic-valvular-disease-elixhauser-primary-care---primary:
    run: diastolic-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: systolic-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-closed---primary:
    run: valvular-disease-elixhauser-primary-care-closed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diastolic-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-syphilis---primary:
    run: valvular-disease-elixhauser-primary-care-syphilis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-closed---primary/output
  valvular-disease-elixhauser-primary-care-atresia---primary:
    run: valvular-disease-elixhauser-primary-care-atresia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-syphilis---primary/output
  valvular-disease-elixhauser-primary-care-stenosis---primary:
    run: valvular-disease-elixhauser-primary-care-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-atresia---primary/output
  valvular-disease-elixhauser-primary-care-heart---primary:
    run: valvular-disease-elixhauser-primary-care-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-stenosis---primary/output
  truncal-valvular-disease-elixhauser-primary-care---primary:
    run: truncal-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-heart---primary/output
  valvular-disease-elixhauser-primary-care-creation---primary:
    run: valvular-disease-elixhauser-primary-care-creation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: truncal-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-valvotomy---primary:
    run: valvular-disease-elixhauser-primary-care-valvotomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-creation---primary/output
  valvular-disease-elixhauser-primary-care-bjorkshiley---primary:
    run: valvular-disease-elixhauser-primary-care-bjorkshiley---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-valvotomy---primary/output
  tetralogy-valvular-disease-elixhauser-primary-care---primary:
    run: tetralogy-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-bjorkshiley---primary/output
  syphilitic-valvular-disease-elixhauser-primary-care---primary:
    run: syphilitic-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: tetralogy-valvular-disease-elixhauser-primary-care---primary/output
  mitral-valvular-disease-elixhauser-primary-care---primary:
    run: mitral-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: syphilitic-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-murmur---primary:
    run: valvular-disease-elixhauser-primary-care-murmur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mitral-valvular-disease-elixhauser-primary-care---primary/output
  artificial-valvular-disease-elixhauser-primary-care---primary:
    run: artificial-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-murmur---primary/output
  percutaneous-valvular-disease-elixhauser-primary-care---primary:
    run: percutaneous-valvular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: artificial-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-cardiac---primary:
    run: valvular-disease-elixhauser-primary-care-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: percutaneous-valvular-disease-elixhauser-primary-care---primary/output
  valvular-disease-elixhauser-primary-care-operation---primary:
    run: valvular-disease-elixhauser-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-cardiac---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: valvular-disease-elixhauser-primary-care-operation---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
