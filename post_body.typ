The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. 

The values in @ethical-impact-assessment-hospital have been acquired purely through conceptual investigations, which are prone to researcher bias and tend to misrepresent the stakeholders' actual views @VSD-book. One should view these simply as a starting point to build upon. 

After closer examination of the stakeholders' understandings, contexts, and experiences through empirical investigations @Human-computer-handbook, we can update the previously acquired values. This can be done using traditional methods such as interviews and surveys, or more VSD-specific methods such as participatory design and envisioning cards @VSD-book.

An important step of the process is analyzing value conflicts, and deciding which stakeholders' needs should be prioritized (see the dams-and-flows method @Value-dams-flows).

One value conflict is between patients' need for privacy and the insurance companies' desire for explicability. In order to explain the decisions made by the model, the insurance companies will need access to the patient's data, which is a clear violation of the patient's privacy. 
One approach to resolve this is to have the model explain its decisions in a general but informative way, like providing a descriptive summary of the patient's condition. 

Another is between the medical institution's need for efficiency and the healthcare providers' want for autonomy. Healthcare providers require lots of time and resources to make decisions, which would make diagnosis and treatment slower. The institution could use this time and resources to treat more patients instead. This is a difficult tension to resolve, but we believe that the model should be used as a tool to assist the healthcare providers, not replace them. As such, the healthcare providers' interest should be prioritized.

Whilst emotion recognition technology has benefits in diagnosing mental health issues, using it for crime prevention and/or in public spaces is a completely different matter. From past research, it is clear that the technology is not accurate enough to be used in these scenarios. Even if it were, using it would be ethically questionable (see @Public-surveillance-paper@Public-surveillance-bbc).

= Recommendations & Considerations

From the ethical impact assessment in @ethical-impact-assessment-hospital, we have identified additional features which should be built on top of the model to satisfy the stakeholders' needs. 

These include, but are not limited to:
- Mandatory approval of decisions by human overseers
- GDPR-compliant data handling
- Overviews of performance and bias
- General, descriptive explanations of outcomes

We also have to be prepared to update the model in an integrative manner during the design process, as results from our empirical investigations may reveal new values and tensions that needs to be addressed.

Deployment should also be rolled out in a controlled manner. By releasing the model to a small group of hospitals first, we can deal with any potential emerging biases and other issues before they become widespread.

== Datasets

Choosing a dataset is the most important part of the process, especially in avoiding bias. Our goal is to have a dataset that:

- Contains at least 7 of 8 emotions mentioned in @emotion-wheel
- Is reliable, meaning accurate labels and little noise @Google-data-quality
- Contains GDPR-compliant @GDPR-data-ethics data collected ethically
- Contains realistic, preferably medical data
- Is representative of the user base

This last point is the hardest to handle, as most facial emotion recognition (FER) datasets simply are not representative. This can be seen in @racial-composition, @gender-composition, and @source-composition. 



#figure(
  image("racial-composition-dataset.png", width: 99%),
  caption: [Racial composition in common FER datasets with "White" (in red) being the majority class @Dataset-analysis-paper.],
) <racial-composition>

#figure(
  image("gender-composition-dataset.png", width: 99%),
  caption: [Gender composition in common FER datasets with "Male" (in red) being the majority class @Dataset-analysis-paper.],
) <gender-composition>

#figure(
  image("source-distribution.png", width: 80%),
  caption: [Source distribution of FER datasets. North/South America, Asia and Europe make up 87.5% of all frequencies @Dataset-analysis-paper.],
) <source-composition>

Some datasets are made to be representative, however these tend to be much smaller compared to mainstream ones like AffectNet. Hence training a model solely on these is not a viable option.

To deal with this issue, we decided on aggregating multiple datasets to create a more representative one. We chose this option since it ensures a decent quality of data, whilst taking up much less time and resources than creating creating a dataset from scratch. We will document our dataset using the structure given in @Datasheet-for-dataset, but removing some sections like "Data Collection Process" and "Data Preprocessing".

Algorithms in @Dataset-analysis-paper will be used to measure the bias in our new dataset.

== Risk and bias mitigation measures

When training the model, we resort to the process in @emotion-recognition-process.

#figure(
  image("training-process.jpg", width: 100%),
  caption: [Process of training an emotion recognition model to be used for our model from choosing a dataset to outputting a verdict @Emotion-recognition-meta-review.],
) <emotion-recognition-process>

For risk and bias mitigation during the last four steps of @emotion-recognition-process, we look to @bias-sources-diagram.

#figure(
  image("bias-mitigation-model.png", width: 100%),
  caption: [Potential areas of bias during the model training and implementation process @Sources-bias-ML.],
) <bias-sources-diagram>

Let us now analyze a source of bias shown in @bias-sources-diagram. 

Learning bias is an issue where the model is optimized for a specific metric, like accuracy, while disregarding fairness metrics like f1 score, precision or recall.

To mitigate this, we can assign different weights to metrics depending on their importance. For our use case (medical diagnosis), precision would be valued more, as a false-negative output could be life-threatening. Pharmaceutical companies would be most interested in mitigating this bias, as they require the model's data to be as accurate as possible.

Other sources of bias can be mitigated in a similar and relatively simple manner, as long as model engineers are aware of them.

Another method of mitigation is seen in @Gender-shades, where the model is tested on a predefined groups, such as men and women, light and dark skinned individuals, etcetera. Afterwards, the performance for each group is listed out for comparison purposes. An unbiased model should perform equally well on every group. Note that while useful, this is not a complete solution, as it is impossible to test the model on every possible group. This is useful for medical institutions as they require the model to be as unbiased as possible for the equal treatment of all patients.

After training the model, we aim to document the process in a model card, which has the added benefit of increasing transparency @Model-cards. This would greatly benefit policymakers as they can quickly grasp key information about the model, allowing more informed decision-making on how to regulate such technologies. Greater transparency would also help with explainability, which insurance companies are interested in.

== Critical assessment and limitations

The recommendations given in this section aims to provide an unbiased and fair model using well-researched methodologies, however there are clear limitations. 

The main issue is the lack of empirical investigations. The values identified in @ethical-impact-assessment-hospital are purely speculative, and may not reflect the actual views of the stakeholders. Seeing as this entire section is based on these values, the entire process may be flawed. There is a simple solution to this, however, which is to carry out empirical investigations and update our process accordingly.

An issue which is not as easily solved is with regards to the dataset. Aggregating multiple datasets for better representation is a good idea, but it is not perfect. 

#figure(
  image("bias-mitigation-data.png", width: 100%),
  caption: [Potential areas of bias during the data collection process @Sources-bias-ML.],
) <bias-sources-data-diagram>

Bias can be introduced at every step of data collection, but as we do not have control over the original datasets, we cannot mitigate these biases. The only solution, besides creating a dataset from scratch, is to be aware of these biases and to document them in the model card.

In this paper, cover the ethics of the technology, but failed to provide any implementation details, such as providing what algorithms to use. This is because there are plenty of resources on this @Emotion-recognition-technique-1@Emotion-recognition-technique-2@Emotion-recognition-technique-3@Emotion-recognition-technique-4. Despite that, before any definitive recommendations is made, it would be helpful to cover these in more detail.