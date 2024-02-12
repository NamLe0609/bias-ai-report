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

= Introduction (648 words)

This report focuses on a machine learning task for emotion recognition on human face images. Whilst not novel, it is a useful tool in a variety of applications, such as in marketing, human-robot interactions, healthcare, as well as security @Emotion-recognition-meta-review. 

== Description of tasks

This is a classification task which involves predicting the emotion of a person from an image of their face, and outputting the emotion(s) associated with it. 

The range of possible emotions is typically decided by a dataset, though we aim to pick a dataset which contains the emotions of: joy, trust, fear, surprise, sadness, disgust, anger, and anticipation. According to Plutchik's wheel of emotions, a widely accepted model in discrete emotion theory, these are the universally recognized basic emotions @Emotion-recognition-meta-review.

#figure(
  image("emotion-wheel.jpg", width: 80%),
  caption: [Plutchik's wheel of emotions, with the base emotions as well as their amplified/attenuated versions. Intensity increases towards the center and vice versa @Emotion-wheel-source.],
) <emotion-wheel>

In @emotion-wheel we do not use the full range of emotions as it is not practical to train a model to recognize all of them. The base emotions are sufficient for most applications.

For the output format, we want a probability distribution over the classes. This has the benefit of giving more information than a single class output, can be used to calculate a confidence score, is easily transformed into a positive/negative/neutral output and is easy to do (softmax layer). By choosing this output format, we allow for flexibility in the use of the model, which is crucial for a model that is to be deployed by various organization and/or be made available through open sourcing.

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

To deal with this issue, we can either choose the least biased dataset from the available ones, or aggregate multiple datasets to create a more representative one. The latter is more difficult, but is the best way to ensure that the model is not biased, and so we will therefore do this.

== Ethical impact, Value Sensitive Design, and use case

AI ethics refers to a set of values and principles that guide the responsible use of AI technologies @AI-ethics-definition, whereas AI bias refers to "computer systems that systematically and unfairly discriminate against certain individuals or groups of individuals" @Bias-main-paper. Therefore that an ethical impact aims to root out any potential biases in the model, allowing for fair outcomes for all.

To do this, we employ the use of Value Sensitive Design (VSD). Value in VSD refers to value, defined as "what a group of people consider important in life" @VSD-paper, hence VSD is a methodology which considers the values of both direct and indirect stakeholders in the design of technology.

VSD involves three investigation steps.

+ Conceptual: Identifies stakeholders, how they are affected, discuss trade-offs between values,...
+ Empirical: Using quantitative/qualitative methods to expand on the concepts found in the previous step.
+ Technical: Analysis of existing technological mechanism on, and proactive design supporting of human values.

A potential use case of this model is in a medical clinic where it can be used as a healthcare surveillance system to monitor the mental health of patients. The model could be used to detect signs of depression or anxiety in patients, and alert the clinic to administer medicine. Compared to traditional methods, such as human observation, the model could be less prone to error and be more available to patients. Developments in this area can be seen in Marwan Dhuheir's works @Emotion-recognition-medical-surveillance.

An issue in this is consent. We must make sure the model is only used on images of patients who have given explicit consent, but how do we get the consent of people who are (potentially) not mentally well enough to make decisions? Issues like this is beyond our scope of responsibility, but it is important to consider them.

= Paper



#figure(
  table(
  columns: (1fr, 1fr, 1fr),
  inset: 3pt,
  align: center,
  [Emotions], [Counts], [% of total],
  ),
  caption: [Counts of emotions after cleaning]
) <emotion-count-post-clean>

= Methods

