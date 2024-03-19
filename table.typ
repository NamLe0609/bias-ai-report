= Ethical impact assessment informed by VSD

#show figure: set block(breakable: true)
#figure(
  table(
  columns: (1fr, 2fr, 2fr),
  inset: 6.5pt,
  align: left,
  [Stakeholders], [Values], [Potential risks/harms],

  [Healthcare providers, such as a doctor or a nurse (Direct)], 
  [Respect for human autonomy  -\ 
  - The model's decisions should not be absolute, and it's limits needs to be recognized
  - The model should act as an aid to help healthcare providers make their decisions, providing an additional point of view], 
  [A misdiagnosis might be given, in which case the healthcare provider will be forced to blindly follow the model's decision. 
  
  If this results in harm to the patient, the healthcare provider could be held accountable for medical negligence, potentially leading to revocation of their medical license.],

  [Patient (Indirect)], 
  [Informed consent, privacy -\ 
  - A patient should have absolute authority over their data
  
  - Hospitals/medical institutions are expected to not record, store and process data unless given explicit consent], [Personal data stored in hospital databases could be breached and leaked. 
  In rare cases, institutions could (mis)use this data for their own benefit, such as selling it to third parties despite GDPR regulations.
  
  Bad actors could then use this data for nefarious purposes, such as identity theft or blackmail.],

  [Medical institution (Indirect)], 
  [Human welfare, freedom from bias, efficiency -\ 
  - Existing system must work well for all individuals despite their differences to minimize casualties
  - All forms of bias must be prevented to ensure equal treatment of all patients
  - The model should be able to provide a diagnosis in a timely manner], 
  [A biased diagnosis, whether it be due to the model's false output or misinterpretation of the model's output by a healthcare provider, could lead to lives lost. The same applies to a delayed diagnosis.
  
  The institution could then face lawsuits, have to compensate patients financially, or even have their funding rescinded. In less grave situations, the institution's reputation could be damaged.],

  [Pharmaceutical Company, model output data consumer (Direct)], 
  [Accuracy, environmental sustainability -\ 
  - Production and distribution chains could be disrupted based on the model's output data. 
  - Overproduction of medicine could also lead to resource wastage as well as environmental pollution], 
  [Bad quality data could cause the company to produce and distribute the wrong amounts/types of medicine, leading to a loss of profit. 
  
  The company could also be held accountable for any environmental damage caused by overproduction.],

  [Insurance companies (Indirect)], [Explicability -\ 
  - The outcome of the model must be clear to prevent any ambiguity as to whether or not insurance must cover for a client], 
  [A correct, but unexplainable diagnosis could lead to a refusal to cover the patient's medical expenses. Disputes over this would deteriorate the relationship between all parties involved.],
  
  [Government institution, regulators and policymakers (Indirect)], [Trust, accountability - 
  - A government's aim is to maintain the trust of its citizens, and so it must regulate use of the technology
  - The government must also be partially accountable for the technology's use and its consequences], 
  [Any technologies, in its inception, are prone to misuse @Datasheet-for-dataset. If the government fails to regulate the technology, lots of inhumane 
  
  Even with regulation, if the technology is misused, the government has a duty to take some responsibility for the consequences.],
  ),
  caption: [Ethical impact assessment using VSD in a hospital setting.]
) <ethical-impact-assessment-hospital>


