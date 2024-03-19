The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. 

The values in @ethical-impact-assessment-hospital have been acquired purely through conceptual investigations, which are prone to researcher bias and tend to misrepresent the stakeholders' actual views @VSD-book. Therefore, one should view these as a starting point to build upon, and not as the final representation. 

After closer examination of the stakeholders' understandings, contexts, and experiences through empirical investigations @Human-computer-handbook, we can update the previously acquired values. This can be done using traditional methods such as interviews and surveys, or more VSD-specific methods such as participatory design and envisioning cards @VSD-book.

An important step of the process is analyzing value conflicts. Afterwards, we can use the value dams and flows method which will help to make a decision regarding value tensions, ensuring that the final design includes features which most stakeholders are comfortable with @Value-dams-flows.

This step requires the results of the empirical investigations, however as this has not been carried out, we will attempt to speculate the tensions based on the conceptual investigations. 

One value conflict is between patients' need for privacy and the insurance companies' desire for explicability. In order to explain the decisions made by the model, the insurance companies will need access to the patient's data, which is a clear violation of the patient's privacy. 
One approach to resolve this is to have the model explain its decisions in a general but informative way, like providing a descriptive summary of the patient's condition. 

Another is between the medical institution's need for efficiency and the healthcare providers' want for autonomy. Healthcare providers require lots of time and resources to make decisions, which would make diagnosis and treatment slower. The institution, however, could use this extra time and resources to treat more patients. This is a difficult tension to resolve, but we believe that the model should be used as a tool to assist the healthcare providers, not replace them. As such, the healthcare providers' interest should be preserved.

Whilst emotion recognition technology has benefits in diagnosing mental health issues, using it for crime prevention and/or in public spaces is a completely different matter. From past research, it is clear that the technology is not accurate enough to be used in these scenarios. Even if it were, using it would be ethically questionable (see @Public-surveillance-paper@Public-surveillance-bbc).

= Recommendations & Considerations

From the ethical impact assessment in @ethical-impact-assessment-hospital, we have identified additional features which should be built on top of the model to satisfy the stakeholders' needs. 
These include, but are not limited to:
- Mandatory approval of decisions by human overseers
- GDPR-compliant data handling
- Overviews of performance and bias
- General, descriptive explanations of outcomes

We also have to be prepared to update the features in an integrative manner, as empirical investigations may reveal new values, tensions.

Deployment should also be rolled out in a controlled manner. By releasing the model to a small group of hospitals first, we can deal with any potential emerging biases and other issues before they become widespread.

== Datasets

Choosing a dataset is the most important part of the process, especially in avoiding bias. Our goal is to have a dataset that:

- Contains at least 7 of 8 emotions mentioned in @emotion-wheel
- Is reliable, meaning accurate labels and little noise @Google-data-quality
- Contains GDPR-compliant @GDPR-data-ethics data collected ethically
- Contains realistic data not from movies or TV shows
- Is representative of the user base

This last point is the hardest to handle, as most facial emotion recognition (FER) datasets simply are not representative. This can be seen in @racial-composition, @gender-composition, and @source-composition. 

Some datasets are made to be representative, however these tend to be much smaller compared to mainstream ones like AffectNet. Hence training a model solely on these is not a viable option.

#figure(
  image("racial-composition-dataset.png", width: 100%),
  caption: [Racial composition in common FER datasets with "White" (in red) being the majority class @Dataset-analysis-paper.],
) <racial-composition>

#figure(
  image("gender-composition-dataset.png", width: 100%),
  caption: [Gender composition in common FER datasets with "Male" (in red) being the majority class @Dataset-analysis-paper.],
) <gender-composition>

#figure(
  image("source-distribution.png", width: 80%),
  caption: [Source distribution of FER datasets. North/South America, Asia and Europe make up 87.5% of all frequencies @Dataset-analysis-paper.],
) <source-composition>

To deal with this issue, we decided on aggregating multiple datasets to create a more representative one. We chose this option since it ensures a decent quality of data, whilst taking up much less time and resources than creating creating a dataset from scratch. During this process, we will document our dataset using the structure given in @Datasheet-for-dataset, but removing some sections like "Data Collection Process" and "Data Preprocessing" as we are not creating the dataset from scratch.

Algorithms in @Dataset-analysis-paper will be used to measure the bias in our new dataset.

== Risk and bias mitigation measures

#figure(
  image("training-process.jpg", width: 100%),
  caption: [Process of training an emotion recognition model to be used for our model from choosing a dataset to outputting a verdict @Emotion-recognition-meta-review.],
) <emotion-recognition-process>

When training the model, we resort to the process in @emotion-recognition-process, but add additional risk and bias mitigation measures along the way.

== Critical assessment and limitations

