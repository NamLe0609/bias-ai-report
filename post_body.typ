The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. 

The values in @ethical-impact-assessment-hospital have been acquired purely through conceptual investigations, which are prone to researcher bias and tend to misrepresent the stakeholders' actual views @VSD-book. Therefore, one should view these as a starting point to build upon, and not as the final representation. 

After closer examination of the stakeholders' understandings, contexts, and experiences through empirical investigations @Human-computer-handbook, we can update the previously acquired values. This can be done using traditional methods such as interviews and surveys, or more VSD-specific methods such as participatory design and envisioning cards @VSD-book.

An important step of the process is analyzing value conflicts. Afterwards, we can use the value dams and flows method which will help to make a decision regarding value tensions, ensuring that the final design includes features which most stakeholders are comfortable with @Value-dams-flows.

This step requires the results of the empirical investigations, however as this has not been carried out, we will attempt to speculate the tensions based on the conceptual investigations. 

One value conflict is between patients' need for privacy and the insurance companies' desire for explicability. In order to explain the decisions made by the model, the insurance companies will need access to the patient's data, which is a clear violation of the patient's privacy. 
One approach to resolve this is to have the model explain its decisions in a general but informative way, like providing a descriptive summary of the patient's condition. 

Another is between the medical institution's need for efficiency and the healthcare providers' want for autonomy. Healthcare providers require lots of time and resources to make decisions, which would make diagnosis and treatment slower. The institution, however, could use this extra time and resources to treat more patients. This is a difficult tension to resolve, but we believe that the model should be used as a tool to assist the healthcare providers, not replace them. As such, the healthcare providers' interest should be preserved.

// Talk about using this technology for crime prevention and also in public spaces

Whilst emotion recognition technology has benefits in diagnosing mental health issues, using it for crime prevention and/or in public spaces is a completely different matter. From past research, it is clear that the technology is not accurate enough to be used in these scenarios. Even if it were, using it would be ethically questionable (see @Public-surveillance-paper@Public-surveillance-bbc).

= Recommendations & Considerations

== Datasets

Choosing a dataset is the most important part of the process, especially in avoiding bias. The dataset should be representative, but most facial emotion recognition datasets simply are not. This can be seen in @racial-composition, @gender-composition, and @source-composition.

#figure(
  image("racial-composition-dataset.png", width: 100%),
  caption: [Racial composition in common facial emotion recognition datasets with "White" being the majority class @Dataset-analysis-paper.],
) <racial-composition>

#figure(
  image("gender-composition-dataset.png", width: 100%),
  caption: [Gender composition in common facial emotion recognition datasets with "Male" being the majority class @Dataset-analysis-paper.],
) <gender-composition>

#figure(
  image("source-distribution.png", width: 100%),
  caption: [Source distribution of facial emotion datasets. North/South America, Asia and Europe make up 87.5% of all frequencies @Dataset-analysis-paper.],
) <source-composition>

To deal with this issue, we can either choose the least biased dataset from the available ones, or aggregate multiple datasets to create a more representative one. We chose the latter despite its difficulty since thats the best way to ensure that the model is unbiased. An algorithm in @Dataset-analysis-paper will be used to measure the bias in our new dataset.

== Critical assessment and limitations