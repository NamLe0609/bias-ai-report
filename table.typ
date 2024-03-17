= Ethical impact assessment informed by VSD

In section II and III, we focus solely on healthcare use cases.

#show figure: set block(breakable: true)
#figure(
  table(
  columns: (1fr, 2fr, 2fr),
  inset: 7pt,
  align: left,
  [Stakeholders], [Values], [Potential risks/harms],

  [Healthcare providers, such as a doctor or a nurse (Direct)], 
  [Respect for human anatomy -\ 
  - The model's decisions should not be absolute, and it's limits needs to be recognized
  - The model should act as an aid to help healthcare providers make their decisions, providing an additional point of view], 
  [A misdiagnosis might be given, in which case the healthcare provider will be forced to blindly follow the model's decision. 
  
  If this results in harm to the patient, the healthcare provider could be held accountable for medical negligence, potentially leading to revocation of their medical license],

  [Patient (Indirect)], 
  [Informed consent, privacy -\ 
  - A patient should have absolute authority over their data
  
  - Hospitals/medical institutions are expected to not record, store and process data unless given explicit consent], [Personal data stored in hospital databases could be breached and leaked. 
  In rare cases, institutions could (mis)use this data for their own benefit, such as selling it to third parties despite GDPR regulations.
  
  Bad actors could then use this data for nefarious purposes, such as identity theft or blackmail],

  [Medical institution, (Indirect)], 
  [Human welfare, freedom from bias -\ 
  - Casualties must be minimized, and so the existing system must work well for all individuals despite their differences], 
  [Biased diagnosis, preventable deaths, and unequal access to the technology could lead to lawsuits and a tarnished reputation, and funding cuts (if it is government funded institution)],

  [Pharmaceutical Company, model output data consumer (Direct)], 
  [Accuracy, environmental sustainability -\ 
  - Production and distribution chains could be disrupted based on the model's output data. 
  - Overproduction of medicine could also lead to resource wastage as well as environmental pollution], 
  [Bad quality data could cause the company to produce and distribute the wrong amounts/types of medicine, leading to a loss of profit. 
  
  The company could also be held accountable for any environmental damage caused by overproduction],

  [Insurance companies (Indirect)], [Explicability -\ 
  - The outcome of the model must be clear to prevent any ambiguity as to whether or not insurance must cover for a client], 
  [A correct, but unexplainable diagnosis could lead to a refusal to cover the patient's medical expenses.
  
  Disputes over coverage would deteriorate the relationship between all parties involved],
  
  [Government institution, public health enforcer (Indirect)], 
  [Nonmaleficence, universal usability - 
  - ], 
  [],
  
  [Government institution, regulators and policymakers (Indirect)], [Courtesy, trust, accountability - ], [],
  
  [General public, (Indirect)],[Privacy, autonomy - ],[],
  ),
  caption: [Ethical impact assessment using VSD in a hospital environment]
) <ethical-impact-assessment-hospital>

- Talk about the book @VSD-book when discussing methodology of getting the values of stakeholders

The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. We use an emergent methodology which focuses more on empirical investigations as opposed to conceptual investigations as the latter introduces researcher bias and tends to misrepresent the stakeholders' values @VSD-book. 


