#import "template.typ": *
#show: ieee.with(
  title: [Ethics & Bias in AI Coursework],
  authors: (
    (
      name: "Nam Le",
      department: [jssb25],
    ),
  ),
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
  bibliography-file: "refs.yml",
)

= Introduction (615 words)

This report focuses on a machine learning task for emotion recognition on human face images. Whilst not novel, it is a useful tool in a variety of applications, such as in marketing, human-robot interactions, healthcare, and security @Emotion-recognition-meta-review. 

== Description of tasks

This is a classification task which predicts the emotion of a person from an image of their face, and outputs the emotion(s) associated with it. 

The range of possible emotions is typically decided by a dataset, though we aim to pick a dataset which contains the emotions of: joy, trust, fear, surprise, sadness, disgust, anger, and anticipation. According to Plutchik's wheel of emotions, a widely accepted model in discrete emotion theory, these are the universally recognized basic emotions @Emotion-recognition-meta-review.

#figure(
  image("emotion-wheel.jpg", width: 80%),
  caption: [Plutchik's wheel of emotions, with the base emotions as well as their amplified/attenuated versions. Intensity increases towards the center and vice versa @Emotion-wheel-source.],
) <emotion-wheel>

We do not use the full range of emotions as it is not practical to train a model to recognize all of them. The base emotions are sufficient for most applications.

For the output format, we want a probability distribution over the classes. This has the benefit of giving more information than single class outputs, can be used to calculate a confidence score, is easily transformed into a positive/negative/neutral output and is easily done (softmax layer). With this, we allow for more model flexibility, which is crucial for deployment to various organization and/or be made accessible via open sourcing.

#figure(
  image("training-process.jpg", width: 100%),
  caption: [Process of training an emotion recognition model to be used for our model from choosing a dataset to outputting a verdict @Emotion-recognition-meta-review.],
) <emotion-recognition-process>

Choosing a dataset is the most important part of the process, especially in avoiding bias. The dataset should be representative, but most facial emotion recognition datasets simply are not. This can be seen in @racial-composition, @gender-composition, and @source-composition.

#figure(
  image("racial-composition-dataset.png", width: 100%),
  caption: [Racial composition in common facial emotion recognition datasets with the "White" majority class @Dataset-analysis-paper.],
) <racial-composition>

#figure(
  image("gender-composition-dataset.png", width: 100%),
  caption: [Gender composition in common facial emotion recognition datasets with the the "Male" majority class @Dataset-analysis-paper.],
) <gender-composition>

#figure(
  image("source-distribution.png", width: 100%),
  caption: [Source distribution of facial emotion datasets. North/South America, Asia and Europe make up 87.5% of all frequencies @Dataset-analysis-paper.],
) <source-composition>

To deal with this issue, we can either choose the least biased dataset from the available ones, or aggregate multiple datasets to create a more representative one. We chose the latter despite its difficulty since thats the best way to ensure that the model is unbiased.

== Ethical impact, Value Sensitive Design, and use case

AI ethics refers to a set of values and principles that guide the responsible use of AI technologies @AI-ethics-definition, whereas AI bias refers to "computer systems that systematically and unfairly discriminate against certain individuals or groups of individuals" @Bias-main-paper. An ethical impact assessment aims to root out any potential biases in the model by considering stakeholders' values/principles, allowing for fair outcomes for all.

To do this, we employ the use of Value Sensitive Design (VSD). Value in VSD refers to value, defined as "what a group of people consider important in life" @VSD-paper, hence VSD is a methodology which considers the values of both direct and indirect stakeholders in the design of technology.

VSD involves three investigation steps.

+ Conceptual: Identifies stakeholders, how they are affected, discuss trade-offs between values,...
+ Empirical: Using quantitative/qualitative methods to expand on the concepts found in the previous step.
+ Technical: Analysis of existing technological mechanism on, and proactive design supporting of human values.

A potential use case of this model is for healthcare surveillance system @Emotion-recognition-medical-surveillance. In hospitals, the model could be used to detect signs of depression or anxiety in patients, and alert the clinic to administer medicine. Compared to traditional methods, such as human observation, the model could be less prone to error and be more available to patients. This technology could even be used in a public setting to detect signs of mental illness in a population.

In the hospital example, we must make sure the model is only used on images of patients who have given explicit consent, but how do we get the consent of people who are not mentally well enough to make decisions? Issues like this is beyond our scope of responsibility, but it is important to consider them.

= Ethical impact assessment informed by VSD

In section II and III, we focus solely on healthcare use cases.

#figure(
  table(
  columns: (1fr, 2fr, 2fr),
  inset: 5pt,
  align: center,
  [Stakeholders], [Values], [Potential risks/harms],
  [Healthcare providers (Direct)], [Free from harm, efficiency - Urgent situations require rapid outputs to diagnose and help patients. False outputs must not bring dire consequences], [Misdiagnosis is a form of medical negligence, which could lead to heavy consequences, such as the revocation of medical license. Delayed treatment could lead to death],
  [Patient (Indirect)], [Informed consent, privacy - Hospitals expected to not record, store and process data unless given explicit consent], [(Processed) personal data would be stored in hospital databases, which could be breached and leaked. Data could also be exposed to third parties],
  [Medical institution (Indirect)], [Human welfare, freedom from bias - Casualties must be minimized to maintain reputation so the existing system must work well for all], [Biased diagnosis and preventable deaths could lead to lawsuits, loss of trust, tarnished reputation, and funding cuts (if government funded facility).],
  [Pharmaceutical Company (Direct)], [Accuracy - Production and distribution chains could be disrupted if output data has too many incorrect predictions], [Impacted distribution could cause sending too much/little resources to hospital, leading to shortages or wastage],
  [Insurance companies (Indirect)], [Transparency - The outcome of the model must be clear to prevent any ambiguity as to whether or not insurance must cover for a client], [Disputes over coverage would deteriorate the relationship between the hospital and the insurance company, leading to a cancelled contract],
  ),
  caption: [Ethical impact assessment using VSD in a hospital environment]
) <ethical-impact-assessment-hospital>


= Recommendations & Considerations


