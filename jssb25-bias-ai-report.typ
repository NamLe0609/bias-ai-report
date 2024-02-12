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

= Introduction

This report focuses on a machine learning task for emotion recognition on human face images. Whilst the concept may not be novel, it is a task which is useful in a variety of applications, such as in marketing, human-robot interactions, healthcare, as well as security @Emotion-recognition-meta-review. 

== Ethical impact and Value Sensitive Design

AI ethics refers to a set of values and principles that guide the responsible use of AI technologies @AI-ethics-definition, where as bias in computer systems refers to "computer systems that systematically and unfairly discriminate against certain individuals or groups of individuals" @Bias-main-paper. It follows therefore that an ethical impact aims to find and root out any potential biases in the model, allowing for fair outcomes for all individuals.

Doing so, however, is not a simple task. As such, we employ the use of Value Sensitive Design (VSD) to guide the development of the model. 

== Description of tasks

This is a classification task which involves predicting the emotion of a person from an image of their face, and outputting the emotion(s) associated with said image. 

#figure(
  image("emotion-wheel.jpg", width: 80%),
  caption: [Plutchik's wheel of emotions, with the base emotions as well as their amplified/attenuated versions. Intensity increases towards the center and vice versa @Emotion-wheel-source.],
) <emotion-wheel>

The range of possible emotions is typically decided by a dataset, though we aim to pick a dataset which contains the basic emotions of: joy, trust, fear, surprise, sadness, disgust, anger, and anticipation. According to Plutchik's wheel of emotions, which is a widely accepted model in discrete emotion theory, these are the basic emotions that are universally recognized @Emotion-recognition-meta-review.

In @emotion-wheel we do not use the full range of emotions as it is not practical to train a model to recognize all of them, and because the base emotions are sufficient for most applications.

Once we have decided on the classes, we need to decide on the output format of the model. We will use a softmax layer, which outputs a probability distribution over the classes. This has the benefit of giving more information than a single class output, can be used to calculate a confidence score, and is easily transformed into a positive/negative/neutral output. By choosing this output format, we allow for flexibility in the use of the model, which is crucial for a model that is to be deployed by various organization and/or be made available through open sourcing.

#figure(
  image("training-process.jpg", width: 100%),
  caption: [Typical process of training an emotion recognition model @Emotion-recognition-meta-review.],
) <emotion-recognition-process>

@emotion-recognition-process shows the framework we will use in training the model from start to end.

== Use case and apparent issues

A potential use case of this model is in a medical clinic where it can be used as a healthcare surveillance system to monitor the mental health of patients. Specifically, the model could be used to detect signs of depression or anxiety in patients, and alert the clinic to administer medicine or provide support. Compared to traditional methods, such as observation from a nurse or doctor, the model could be more accurate, less prone to human error and be more available to patients. Developments in this area can be seen in Marwan Dhuheir's works @Emotion-recognition-medical-surveillance.

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

