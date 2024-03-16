= Ethical impact assessment informed by VSD

In section II and III, we focus solely on healthcare use cases.

#show figure: set block(breakable: true)
#figure(
  table(
  columns: (2fr, 2fr, 2fr),
  inset: 7pt,
  align: center,
  [Stakeholders], [Values], [Potential risks/harms],
  [Healthcare providers (Direct)], [Nonmaleficence, respect for human anatomy - The model's decisions should not be absolute, and the model's limits needs to be recognized], [A doctor should not be punished with medical negligence and have their medical license revoked for not following the model's (incorrect) decisions],
  [Patient (Indirect)], [Informed consent, privacy - Hospitals expected to not record, store and process data unless given explicit consent], [Personal data stored in hospital databases could be breached and leaked. Data could also be exposed to third parties],
  [Medical institution (Indirect)], [Human welfare, freedom from bias - Casualties must be minimized to maintain reputation so the existing system must work well for all], [Biased diagnosis and preventable deaths could lead to lawsuits, loss of trust, tarnished reputation, and funding cuts (if government funded facility).],
  [Pharmaceutical Company (Direct)], [Accuracy - Production and distribution chains could be disrupted if output data has too many incorrect predictions], [Impacted distribution could cause sending too much/little resources to hospital, leading to shortages/wastage],
  [Insurance companies (Indirect)], [Explicability - The outcome of the model must be clear to prevent any ambiguity as to whether or not insurance must cover for a client], [Disputes over coverage would deteriorate the relationship between the hospital and the insurance company, leading to a cancelled contract],
  ),
  caption: [Ethical impact assessment using VSD in a hospital environment]
) <ethical-impact-assessment-hospital>

- Talk about the book @VSD-book when discussing methodology of getting the values of stakeholders
- Values are from @VSD-paper @Mapping-VSD

The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. We use an emergent methodology which focuses more on empirical investigations as opposed to conceptual investigations as the latter introduces researcher bias and tends to misrepresent the stakeholders' values @VSD-book. 


